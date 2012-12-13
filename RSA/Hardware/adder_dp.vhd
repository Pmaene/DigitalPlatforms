library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity adder_dp is
port(
     sel                    : in  std_logic;
     a                      : in  std_logic_vector(1025 downto 0);
     b                      : in  std_logic_vector(1025 downto 0);
     s                      : out std_logic_vector(1026 downto 0));
end adder_dp;


architecture RTL of adder_dp is
-- signal declaration
signal b_eff              : std_logic_vector(1025 downto 0);
signal sig_0              : std_logic;
signal sig_1              : std_logic_vector(1025 downto 0);
signal sig_2              : std_logic_vector(1025 downto 0);
signal sig_3              : std_logic_vector(1025 downto 0);
signal sig_4              : std_logic_vector(1025 downto 0);
signal s_int              : std_logic_vector(1026 downto 0);


-- state register & states


begin


-- combinational logics
dpCMB: process (b_eff, sig_0, sig_1, sig_2, sig_3, sig_4, s_int, sel, a, b
)
     begin
          b_eff <= (others => '0');
          sig_0 <= '0';
          sig_1 <= (others => '0');
          sig_2 <= (others => '0');
          sig_3 <= (others => '0');
          sig_4 <= (others => '0');
          s_int <= (others => '0');
          s <= (others => '0');

          if (sel = '1') then
               sig_0 <= '1';
          else
               sig_0 <= '0';
          end if;
          sig_1 <=  not b;
          sig_2 <= std_logic_vector(unsigned(sig_1) + unsigned(std_logic_vector(to_unsigned(1, 1026))));
          if (sig_0 = '1') then
               sig_3 <= sig_2;
          else
               sig_3 <= b;
          end if;
          b_eff <= sig_3;
          sig_4 <= std_logic_vector(unsigned(a) + unsigned(b_eff));
          s <= s_int;
          s_int <= std_logic_vector(resize(unsigned(sig_4), 1027));
     end process dpCMB;

end RTL;
