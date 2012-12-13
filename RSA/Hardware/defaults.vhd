library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity defaults is
port(
     data_in                : out std_logic_vector(7 downto 0));
end defaults;


architecture RTL of defaults is
-- signal declaration
signal data_in_int        : std_logic_vector(7 downto 0);


-- state register & states


begin


-- combinational logics
dpCMB: process (data_in_int)
     begin
          data_in_int <= (others => '0');
          data_in <= (others => '0');

          data_in <= data_in_int;
          data_in_int <= std_logic_vector(to_unsigned(0, 8));
     end process dpCMB;

end RTL;
