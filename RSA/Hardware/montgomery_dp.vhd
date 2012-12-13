library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity montgomery_dp is
port(
     a                      : in  std_logic_vector(1023 downto 0);
     b                      : in  std_logic_vector(1023 downto 0);
     m                      : in  std_logic_vector(1023 downto 0);
     start                  : in  std_logic;
     r                      : out std_logic_vector(1026 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end montgomery_dp;


architecture RTL of montgomery_dp is
-- signal declaration
signal counter            : std_logic_vector(10 downto 0);
signal counter_wire       : std_logic_vector(10 downto 0);
signal r_reg              : std_logic_vector(1026 downto 0);
signal r_reg_wire         : std_logic_vector(1026 downto 0);
signal a_reg              : std_logic_vector(1023 downto 0);
signal a_reg_wire         : std_logic_vector(1023 downto 0);
signal r_tmp              : std_logic_vector(1026 downto 0);
signal sel                : std_logic;
signal x                  : std_logic_vector(1025 downto 0);
signal y                  : std_logic_vector(1025 downto 0);
signal sig_0              : std_logic_vector(10 downto 0);
signal sig_1              : std_logic_vector(1023 downto 0);
signal sig_2              : std_logic;
signal sig_3              : std_logic_vector(1025 downto 0);
signal sig_4              : std_logic_vector(1026 downto 0);
signal sig_5              : std_logic_vector(1026 downto 0);
signal sig_6              : std_logic_vector(1026 downto 0);
signal sig_7              : std_logic_vector(1026 downto 0);
signal sig_8              : std_logic_vector(1026 downto 0);
signal sig_9              : std_logic;
signal sig_10             : std_logic_vector(1025 downto 0);
signal r_int              : std_logic_vector(1026 downto 0);
signal sig_11             : std_logic;
signal sig_12             : std_logic;
signal sig_13             : std_logic;
signal sig_14             : std_logic;
signal sig_15             : std_logic;
signal sig_16             : std_logic;
signal sig_17             : std_logic;
signal sig_18             : std_logic;
signal sig_19             : std_logic;
signal sig_20             : std_logic;
signal sig_21             : std_logic;
signal sig_22             : std_logic;
signal sig_23             : std_logic;
signal sig_24             : std_logic;
signal sig_25             : std_logic;
signal sig_26             : std_logic;
signal sig_27             : std_logic;
signal sig_28             : std_logic;
signal sig_29             : std_logic;


-- component map declaration
component adder_dp
port(
     sel                    : in  std_logic;
     a                      : in  std_logic_vector(1025 downto 0);
     b                      : in  std_logic_vector(1025 downto 0);
     s                      : out std_logic_vector(1026 downto 0));
end component;



-- state register & states
type STATE_TYPE is (init, do_mont, stop, if_else, wait_mont);
signal STATE             : STATE_TYPE;
type CONTROL is (
     init,
     count_rstoverflow_checkreset_r,
     just_dividecount_increset_r,
     sum_and_dividecount_increset_r,
     sum_m_and_dividecount_increset_r,
     sumreset_r,
     equal_to_zerocount_increset_r,
     not_equal_to_zerocount_increset_r,
     stop
);
signal cmd : CONTROL;


begin


-- portmap
label_adder_dp : adder_dp port map (
          sel => sel, 
          a => x, 
          b => y, 
          s => r_tmp     );


-- register updates
dpREG: process (CLK, RST)
begin
     if (RST = '1') then
          counter <= (others => '0');
          r_reg <= (others => '0');
          a_reg <= (others => '0');
     elsif CLK' event and CLK = '1' then
          counter <= counter_wire;
          r_reg <= r_reg_wire;
          a_reg <= a_reg_wire;
     end if;
end process dpREG;


-- combinational logics
dpCMB: process (counter, r_reg, a_reg, r_tmp, sel, x, y, sig_0, sig_1, sig_2
, sig_3, sig_4, sig_5, sig_6, sig_7, sig_8, sig_9, sig_10, r_int, a
, b, m, start,cmd,STATE)
begin
     counter_wire <= counter;
     r_reg_wire <= r_reg;
     a_reg_wire <= a_reg;
     sel <= '0';
     x <= (others => '0');
     y <= (others => '0');
     sig_0 <= (others => '0');
     sig_1 <= (others => '0');
     sig_2 <= '0';
     sig_3 <= (others => '0');
     sig_4 <= (others => '0');
     sig_5 <= (others => '0');
     sig_6 <= (others => '0');
     sig_7 <= (others => '0');
     sig_8 <= (others => '0');
     sig_9 <= '0';
     sig_10 <= (others => '0');
     r_int <= (others => '0');
     r <= (others => '0');

     case cmd is
          when init => 
               r <= r_int;
               x <= std_logic_vector(to_unsigned(0, 1026));
               y <= std_logic_vector(to_unsigned(0, 1026));
               sel <= '0';
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               counter_wire <= std_logic_vector(to_unsigned(0, 11));
               r_reg_wire <= std_logic_vector(to_unsigned(0, 1027));
               a_reg_wire <= a;
          when count_rstoverflow_checkreset_r => 
               counter_wire <= std_logic_vector(to_unsigned(0, 11));
               sel <= '1';
               x <= std_logic_vector(resize(unsigned(r_reg), 1026));
               if (unsigned(r_reg) >= unsigned(m)) then
                    sig_9 <= '1';
               else
                    sig_9 <= '0';
               end if;
               if (sig_9 = '1') then
                    sig_10 <= std_logic_vector(resize(unsigned(m), 1026));
               else
                    sig_10 <= std_logic_vector(to_unsigned(0, 1026));
               end if;
               y <= sig_10;
               r_reg_wire <= r_tmp;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when just_dividecount_increset_r => 
               sel <= '0';
               x <= std_logic_vector(to_unsigned(0, 1026));
               y <= std_logic_vector(to_unsigned(0, 1026));
               sig_4 <= std_logic_vector(shift_right(unsigned(r_reg), 1));
               r_reg_wire <= sig_4;
               sig_0 <= std_logic_vector(unsigned(counter) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_wire <= sig_0;
               a_reg_wire <= sig_1;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when sum_and_dividecount_increset_r => 
               x <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y <= std_logic_vector(resize(unsigned(b), 1026));
               sel <= '0';
               sig_5 <= std_logic_vector(shift_right(unsigned(r_tmp), 1));
               r_reg_wire <= sig_5;
               sig_0 <= std_logic_vector(unsigned(counter) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_wire <= sig_0;
               a_reg_wire <= sig_1;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when sum_m_and_dividecount_increset_r => 
               x <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y <= std_logic_vector(resize(unsigned(m), 1026));
               sel <= '0';
               sig_6 <= std_logic_vector(shift_right(unsigned(r_tmp), 1));
               r_reg_wire <= sig_6;
               sig_0 <= std_logic_vector(unsigned(counter) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_wire <= sig_0;
               a_reg_wire <= sig_1;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when sumreset_r => 
               x <= std_logic_vector(resize(unsigned(r_reg), 1026));
               if (a_reg(0) = '0') then
                    sig_2 <= '1';
               else
                    sig_2 <= '0';
               end if;
               if (sig_2 = '1') then
                    sig_3 <= std_logic_vector(to_unsigned(0, 1026));
               else
                    sig_3 <= std_logic_vector(resize(unsigned(b), 1026));
               end if;
               y <= sig_3;
               sel <= '0';
               r_reg_wire <= r_tmp;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when equal_to_zerocount_increset_r => 
               sel <= '0';
               x <= std_logic_vector(to_unsigned(0, 1026));
               y <= std_logic_vector(to_unsigned(0, 1026));
               sig_7 <= std_logic_vector(shift_right(unsigned(r_reg), 1));
               r_reg_wire <= sig_7;
               sig_0 <= std_logic_vector(unsigned(counter) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_wire <= sig_0;
               a_reg_wire <= sig_1;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when not_equal_to_zerocount_increset_r => 
               sel <= '0';
               x <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y <= std_logic_vector(resize(unsigned(m), 1026));
               sig_8 <= std_logic_vector(shift_right(unsigned(r_tmp), 1));
               r_reg_wire <= sig_8;
               sig_0 <= std_logic_vector(unsigned(counter) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_wire <= sig_0;
               a_reg_wire <= sig_1;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when stop => 
               sel <= '0';
               x <= std_logic_vector(to_unsigned(0, 1026));
               y <= std_logic_vector(to_unsigned(0, 1026));
               r <= r_int;
               r_int <= r_reg;
          when others => 
     end case;
end process dpCMB;


-- controller reg
fsmREG: process (CLK, RST)
begin
     if (RST = '1') then
          STATE <= init;
     elsif CLK' event and CLK = '1' then
          STATE <= STATE;
          case STATE is
               when init => 
                         STATE <= wait_mont;
               when do_mont => 
                    if (sig_12 = '1') then
                              STATE <= stop;
                    else
                         if (sig_15 = '1') then
                                   STATE <= do_mont;
                         else
                              if (sig_20 = '1') then
                                        STATE <= do_mont;
                              else
                                   if (sig_25 = '1') then
                                             STATE <= do_mont;
                                   else
                                        if (sig_28 = '1') then
                                                  STATE <= do_mont;
                                        else
                                                  STATE <= if_else;
                                        end if;
                                   end if;
                              end if;
                         end if;
                    end if;
               when stop => 
                         STATE <= wait_mont;
               when if_else => 
                    if (sig_29 = '1') then
                              STATE <= do_mont;
                    else
                              STATE <= do_mont;
                    end if;
               when wait_mont => 
                    if (sig_11 = '1') then
                              STATE <= wait_mont;
                    else
                              STATE <= do_mont;
                    end if;
               when others => 
          end case;
     end if;
end process fsmREG;


-- controller cmb
fsmCMB: process (counter, r_reg, a_reg, r_tmp, sel, x, y, sig_0, sig_1, sig_2
, sig_3, sig_4, sig_5, sig_6, sig_7, sig_8, sig_9, sig_10, r_int, sig_11
, sig_12, sig_13, sig_14, sig_15, sig_16, sig_17, sig_18, sig_19, sig_20, sig_21
, sig_22, sig_23, sig_24, sig_25, sig_26, sig_27, sig_28, sig_29, a, b
, m, start,cmd,STATE)
begin
     sig_11 <= '0';
     sig_12 <= '0';
     sig_13 <= '0';
     sig_14 <= '0';
     sig_15 <= '0';
     sig_16 <= '0';
     sig_17 <= '0';
     sig_18 <= '0';
     sig_19 <= '0';
     sig_20 <= '0';
     sig_21 <= '0';
     sig_22 <= '0';
     sig_23 <= '0';
     sig_24 <= '0';
     sig_25 <= '0';
     sig_26 <= '0';
     sig_27 <= '0';
     sig_28 <= '0';
     sig_29 <= '0';
     if (start = '0') then
          sig_11 <= '1';
     else
          sig_11 <= '0';
     end if;
     if (unsigned(counter) >= 1024) then
          sig_12 <= '1';
     else
          sig_12 <= '0';
     end if;
     if (r_reg(0) = '0') then
          sig_13 <= '1';
     else
          sig_13 <= '0';
     end if;
     if (a_reg(0) = '0') then
          sig_14 <= '1';
     else
          sig_14 <= '0';
     end if;
     sig_15 <= sig_13 and sig_14;
     if (r_reg(0) = '0') then
          sig_16 <= '1';
     else
          sig_16 <= '0';
     end if;
     if (a_reg(0) = '1') then
          sig_17 <= '1';
     else
          sig_17 <= '0';
     end if;
     sig_18 <= sig_16 and sig_17;
     if (b(0) = '0') then
          sig_19 <= '1';
     else
          sig_19 <= '0';
     end if;
     sig_20 <= sig_18 and sig_19;
     if (r_reg(0) = '1') then
          sig_21 <= '1';
     else
          sig_21 <= '0';
     end if;
     if (a_reg(0) = '1') then
          sig_22 <= '1';
     else
          sig_22 <= '0';
     end if;
     sig_23 <= sig_21 and sig_22;
     if (b(0) = '1') then
          sig_24 <= '1';
     else
          sig_24 <= '0';
     end if;
     sig_25 <= sig_23 and sig_24;
     if (r_reg(0) = '1') then
          sig_26 <= '1';
     else
          sig_26 <= '0';
     end if;
     if (a_reg(0) = '0') then
          sig_27 <= '1';
     else
          sig_27 <= '0';
     end if;
     sig_28 <= sig_26 and sig_27;
     if (r_reg(0) = '0') then
          sig_29 <= '1';
     else
          sig_29 <= '0';
     end if;
     cmd <= init;
     case STATE is
          when init => 
                    cmd <= init;
          when do_mont => 
               if (sig_12 = '1') then
                         cmd <= count_rstoverflow_checkreset_r;
               else
                    if (sig_15 = '1') then
                              cmd <= just_dividecount_increset_r;
                    else
                         if (sig_20 = '1') then
                                   cmd <= sum_and_dividecount_increset_r;
                         else
                              if (sig_25 = '1') then
                                        cmd <= sum_and_dividecount_increset_r;
                              else
                                   if (sig_28 = '1') then
                                             cmd <= sum_m_and_dividecount_increset_r;
                                   else
                                             cmd <= sumreset_r;
                                   end if;
                              end if;
                         end if;
                    end if;
               end if;
          when stop => 
                    cmd <= stop;
          when if_else => 
               if (sig_29 = '1') then
                         cmd <= equal_to_zerocount_increset_r;
               else
                         cmd <= not_equal_to_zerocount_increset_r;
               end if;
          when wait_mont => 
               if (sig_11 = '1') then
                         cmd <= init;
               else
                         cmd <= init;
               end if;
          when others => 
     end case;
end process fsmCMB;

end RTL;
