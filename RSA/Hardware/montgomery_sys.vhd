library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity montgomery_sys is
port(
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end montgomery_sys;


architecture RTL of montgomery_sys is
-- signal declaration
signal instruction        : std_logic_vector(7 downto 0);
signal sync               : std_logic_vector(7 downto 0);
signal data_in            : std_logic_vector(7 downto 0);
signal data_out           : std_logic_vector(7 downto 0);
signal result_in          : std_logic_vector(7 downto 0);
signal result_out         : std_logic_vector(7 downto 0);
signal address            : std_logic_vector(9 downto 0);
signal data_wr            : std_logic;
signal result_wr          : std_logic;


-- component map declaration
component decoder_dp
port(
     ins                    : in  std_logic_vector(7 downto 0);
     din                    : in  std_logic_vector(7 downto 0);
     sync                   : out std_logic_vector(7 downto 0);
     dout                   : out std_logic_vector(7 downto 0);
     address                : out std_logic_vector(9 downto 0);
     data_wr                : out std_logic;
     result_wr              : out std_logic;
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component defaults
port(
     data_in                : out std_logic_vector(7 downto 0));
end component;

component my8051
port(
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

component my8051_sync
port(
     data                   : in  std_logic_vector(7 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my_data
port(
     idata                  : in  std_logic_vector(7 downto 0);
     odata                  : out std_logic_vector(7 downto 0);
     address                : in  std_logic_vector(9 downto 0);
     wr                     : in  std_logic;
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;

component my_result
port(
     idata                  : in  std_logic_vector(7 downto 0);
     odata                  : out std_logic_vector(7 downto 0);
     address                : in  std_logic_vector(9 downto 0);
     wr                     : in  std_logic;
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;



-- state register & states


begin


-- portmap
label_decoder_dp : decoder_dp port map (
          ins => instruction, 
          din => data_out, 
          sync => sync, 
          dout => result_in, 
          address => address, 
          data_wr => data_wr, 
          result_wr => result_wr, 
          RST => RST, 
          CLK => CLK
     );

label_defaults : defaults port map (
          data_in => data_in     );

label_my8051 : my8051 port map (
          RST => RST, 
          CLK => CLK
     );

label_my8051_instruction : my8051_instruction port map (
          data => instruction, 
          RST => RST, 
          CLK => CLK
     );

label_my8051_sync : my8051_sync port map (
          data => sync, 
          RST => RST, 
          CLK => CLK
     );

label_my_data : my_data port map (
          idata => data_in, 
          odata => data_out, 
          address => address, 
          wr => data_wr, 
          RST => RST, 
          CLK => CLK
     );

label_my_result : my_result port map (
          idata => result_in, 
          odata => result_out, 
          address => address, 
          wr => result_wr, 
          RST => RST, 
          CLK => CLK
     );


end RTL;
