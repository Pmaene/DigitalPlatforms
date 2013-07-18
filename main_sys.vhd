library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity main_sys is
port(
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end main_sys;


architecture RTL of main_sys is
-- signal declaration
signal status             : std_logic_vector(7 downto 0);
signal data_in            : std_logic_vector(7 downto 0);
signal data_out           : std_logic_vector(7 downto 0);
signal result_in          : std_logic_vector(7 downto 0);
signal result_out         : std_logic_vector(7 downto 0);
signal instruction        : std_logic_vector(7 downto 0);
signal address            : std_logic_vector(7 downto 0);
signal full_address       : std_logic_vector(15 downto 0);
signal data_wr            : std_logic;


-- component map declaration
component main_dp
port(
     instruction            : in  std_logic_vector(7 downto 0);
     address                : in  std_logic_vector(7 downto 0);
     data_in                : in  std_logic_vector(7 downto 0);
     full_address           : out std_logic_vector(15 downto 0);
     data_out               : out std_logic_vector(7 downto 0);
     status                 : out std_logic_vector(7 downto 0);
     data_wr                : out std_logic;
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my8051
port(
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my8051_address
port(
     data                   : out std_logic_vector(7 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my8051_instruction
port(
     data                   : out std_logic_vector(7 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my8051_memory
port(
     idata                  : in  std_logic_vector(7 downto 0);
     odata                  : out std_logic_vector(7 downto 0);
     address                : in  std_logic_vector(15 downto 0);
     wr                     : in  std_logic;
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my8051_status
port(
     data                   : in  std_logic_vector(7 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;



-- state register & states


begin


-- portmap
label_main_dp : main_dp port map (
          instruction => instruction, 
          address => address, 
          data_in => data_out, 
          full_address => full_address, 
          data_out => data_in, 
          status => status, 
          data_wr => data_wr, 
          RST => RST, 
          CLK => CLK
     );

label_my8051 : my8051 port map (
          RST => RST, 
          CLK => CLK
     );

label_my8051_address : my8051_address port map (
          data => address, 
          RST => RST, 
          CLK => CLK
     );

label_my8051_instruction : my8051_instruction port map (
          data => instruction, 
          RST => RST, 
          CLK => CLK
     );

label_my8051_memory : my8051_memory port map (
          idata => data_in, 
          odata => data_out, 
          address => full_address, 
          wr => data_wr, 
          RST => RST, 
          CLK => CLK
     );

label_my8051_status : my8051_status port map (
          data => status, 
          RST => RST, 
          CLK => CLK
     );


end RTL;
