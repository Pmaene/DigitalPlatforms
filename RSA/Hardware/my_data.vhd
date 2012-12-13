library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity my_data is
port(
     idata                  : in  std_logic_vector(7 downto 0);
     odata                  : out std_logic_vector(7 downto 0);
     address                : in  std_logic_vector(9 downto 0);
     wr                     : in  std_logic;
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end my_data;


architecture RTL of my_data is
begin

-- VHDL view of ipblock

end RTL;
