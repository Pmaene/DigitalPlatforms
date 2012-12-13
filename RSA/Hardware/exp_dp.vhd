library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity exp_dp is
port(
     start                  : in  std_logic;
     x                      : in  std_logic_vector(1023 downto 0);
     r2modm                 : in  std_logic_vector(1023 downto 0);
     a                      : in  std_logic_vector(1023 downto 0);
     e                      : in  std_logic_vector(1023 downto 0);
     m                      : in  std_logic_vector(1023 downto 0);
     r                      : out std_logic_vector(1026 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end exp_dp;


architecture RTL of exp_dp is
-- signal declaration
signal e_reg              : std_logic_vector(1023 downto 0);
signal e_reg_wire         : std_logic_vector(1023 downto 0);
signal i                  : std_logic_vector(10 downto 0);
signal i_wire             : std_logic_vector(10 downto 0);
signal r_reg              : std_logic_vector(1026 downto 0);
signal r_reg_wire         : std_logic_vector(1026 downto 0);
signal x_reg              : std_logic_vector(1026 downto 0);
signal x_reg_wire         : std_logic_vector(1026 downto 0);
signal a_reg              : std_logic_vector(1026 downto 0);
signal a_reg_wire         : std_logic_vector(1026 downto 0);
signal a_sig              : std_logic_vector(1023 downto 0);
signal b_sig              : std_logic_vector(1023 downto 0);
signal m_sig              : std_logic_vector(1023 downto 0);
signal r_sig              : std_logic_vector(1026 downto 0);
signal start_sig          : std_logic;
signal sig_0              : std_logic_vector(10 downto 0);
signal sig_1              : std_logic_vector(1024 downto 0);
signal r_int              : std_logic_vector(1026 downto 0);
signal sig_2              : std_logic;
signal sig_3              : std_logic;
signal sig_4              : std_logic;
signal sig_5              : std_logic;
signal sig_6              : std_logic;
signal sig_7              : std_logic;
signal sig_8              : std_logic;
signal sig_9              : std_logic;
signal sig_10             : std_logic;
signal sig_11             : std_logic;


-- component map declaration
component montgomery_dp
port(
     a                      : in  std_logic_vector(1023 downto 0);
     b                      : in  std_logic_vector(1023 downto 0);
     m                      : in  std_logic_vector(1023 downto 0);
     start                  : in  std_logic;
     r                      : out std_logic_vector(1026 downto 0);
     RST                    : in  std_logic;
     CLK                    : in  std_logic
);
end component;



-- state register & states
type STATE_TYPE is (init, loop_exp, wait_input, start_calc_x, calc_x, do_mont, do_extra_mont, last_mont, write_result, find_counter);
signal STATE             : STATE_TYPE;
type CONTROL is (
     initreset_rstop_mont,
     calc_xstop_montreset_r,
     start_loopno_montreset_rstop_mont,
     calc_xreset_rstart_mont,
     no_montreset_rstop_montshift_ereg,
     no_montreset_rstop_mont,
     start_last_montreset_rstop_mont,
     do_montreset_rstop_mont,
     save_ano_montreset_rstop_montshift_ereg,
     save_astart_extra_montreset_rstop_montshift_ereg,
     do_montreset_rstart_mont,
     save_ano_montreset_rstop_mont,
     do_extra_montreset_rstart_mont,
     last_montreset_rstart_mont,
     write_resultno_montstop_mont
);
signal cmd : CONTROL;


begin


-- portmap
label_montgomery_dp : montgomery_dp port map (
          a => a_sig, 
          b => b_sig, 
          m => m_sig, 
          start => start_sig, 
          r => r_sig, 
          RST => RST, 
          CLK => CLK
     );


-- register updates
dpREG: process (CLK, RST)
begin
     if (RST = '1') then
          e_reg <= (others => '0');
          i <= (others => '0');
          r_reg <= (others => '0');
          x_reg <= (others => '0');
          a_reg <= (others => '0');
     elsif CLK' event and CLK = '1' then
          e_reg <= e_reg_wire;
          i <= i_wire;
          r_reg <= r_reg_wire;
          x_reg <= x_reg_wire;
          a_reg <= a_reg_wire;
     end if;
end process dpREG;


-- combinational logics
dpCMB: process (e_reg, i, r_reg, x_reg, a_reg, a_sig, b_sig, m_sig, r_sig, start_sig
, sig_0, sig_1, r_int, start, x, r2modm, a, e, m,cmd,STATE)
begin
     e_reg_wire <= e_reg;
     i_wire <= i;
     r_reg_wire <= r_reg;
     x_reg_wire <= x_reg;
     a_reg_wire <= a_reg;
     a_sig <= (others => '0');
     b_sig <= (others => '0');
     m_sig <= (others => '0');
     start_sig <= '0';
     sig_0 <= (others => '0');
     sig_1 <= (others => '0');
     r_int <= (others => '0');
     r <= (others => '0');

     case cmd is
          when initreset_rstop_mont => 
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_reg_wire <= e;
               a_reg_wire <= std_logic_vector(resize(unsigned(a), 1027));
               i_wire <= std_logic_vector(to_unsigned(1024, 11));
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
          when calc_xstop_montreset_r => 
               a_sig <= x;
               b_sig <= r2modm;
               m_sig <= m;
               r_reg_wire <= r_sig;
               start_sig <= '0';
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
          when start_loopno_montreset_rstop_mont => 
               x_reg_wire <= r_reg;
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
          when calc_xreset_rstart_mont => 
               a_sig <= x;
               b_sig <= r2modm;
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '1';
          when no_montreset_rstop_montshift_ereg => 
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
               sig_0 <= std_logic_vector(unsigned(i) - unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(e_reg), 1025))), 1));
               i_wire <= sig_0;
               e_reg_wire <= std_logic_vector(resize(unsigned(sig_1), 1024));
          when no_montreset_rstop_mont => 
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
          when start_last_montreset_rstop_mont => 
               a_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               b_sig <= std_logic_vector(to_unsigned(1, 1024));
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
          when do_montreset_rstop_mont => 
               a_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               b_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
          when save_ano_montreset_rstop_montshift_ereg => 
               a_reg_wire <= r_reg;
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
               sig_0 <= std_logic_vector(unsigned(i) - unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(e_reg), 1025))), 1));
               i_wire <= sig_0;
               e_reg_wire <= std_logic_vector(resize(unsigned(sig_1), 1024));
          when save_astart_extra_montreset_rstop_montshift_ereg => 
               a_reg_wire <= r_reg;
               a_sig <= std_logic_vector(resize(unsigned(r_reg), 1024));
               b_sig <= std_logic_vector(resize(unsigned(x_reg), 1024));
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
               sig_0 <= std_logic_vector(unsigned(i) - unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_1 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(e_reg), 1025))), 1));
               i_wire <= sig_0;
               e_reg_wire <= std_logic_vector(resize(unsigned(sig_1), 1024));
          when do_montreset_rstart_mont => 
               a_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               b_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '1';
          when save_ano_montreset_rstop_mont => 
               a_reg_wire <= r_reg;
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '0';
          when do_extra_montreset_rstart_mont => 
               a_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               b_sig <= std_logic_vector(resize(unsigned(x_reg), 1024));
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '1';
          when last_montreset_rstart_mont => 
               a_sig <= std_logic_vector(resize(unsigned(a_reg), 1024));
               b_sig <= std_logic_vector(to_unsigned(1, 1024));
               m_sig <= m;
               r_reg_wire <= r_sig;
               r <= r_int;
               r_int <= std_logic_vector(to_unsigned(0, 1027));
               start_sig <= '1';
          when write_resultno_montstop_mont => 
               r <= r_int;
               r_int <= r_reg;
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               b_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
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
                         STATE <= wait_input;
               when loop_exp => 
                    if (sig_5 = '1') then
                              STATE <= last_mont;
                    else
                              STATE <= do_mont;
                    end if;
               when wait_input => 
                    if (sig_2 = '1') then
                              STATE <= wait_input;
                    else
                              STATE <= start_calc_x;
                    end if;
               when start_calc_x => 
                         STATE <= calc_x;
               when calc_x => 
                    if (sig_3 = '1') then
                              STATE <= find_counter;
                    else
                              STATE <= calc_x;
                    end if;
               when do_mont => 
                    if (sig_8 = '1') then
                              STATE <= loop_exp;
                    else
                         if (sig_9 = '1') then
                                   STATE <= do_extra_mont;
                         else
                                   STATE <= do_mont;
                         end if;
                    end if;
               when do_extra_mont => 
                    if (sig_10 = '1') then
                              STATE <= loop_exp;
                    else
                              STATE <= do_extra_mont;
                    end if;
               when last_mont => 
                    if (sig_11 = '1') then
                              STATE <= write_result;
                    else
                              STATE <= last_mont;
                    end if;
               when write_result => 
                         STATE <= init;
               when find_counter => 
                    if (sig_4 = '1') then
                              STATE <= find_counter;
                    else
                              STATE <= loop_exp;
                    end if;
               when others => 
          end case;
     end if;
end process fsmREG;


-- controller cmb
fsmCMB: process (e_reg, i, r_reg, x_reg, a_reg, a_sig, b_sig, m_sig, r_sig, start_sig
, sig_0, sig_1, r_int, sig_2, sig_3, sig_4, sig_5, sig_6, sig_7, sig_8
, sig_9, sig_10, sig_11, start, x, r2modm, a, e, m,cmd,STATE)
begin
     sig_2 <= '0';
     sig_3 <= '0';
     sig_4 <= '0';
     sig_5 <= '0';
     sig_6 <= '0';
     sig_7 <= '0';
     sig_8 <= '0';
     sig_9 <= '0';
     sig_10 <= '0';
     sig_11 <= '0';
     if (start = '0') then
          sig_2 <= '1';
     else
          sig_2 <= '0';
     end if;
     if (unsigned(r_reg) > 0) then
          sig_3 <= '1';
     else
          sig_3 <= '0';
     end if;
     if (e_reg(1023) = '0') then
          sig_4 <= '1';
     else
          sig_4 <= '0';
     end if;
     if (unsigned(i) = 0) then
          sig_5 <= '1';
     else
          sig_5 <= '0';
     end if;
     if (unsigned(r_reg) > 0) then
          sig_6 <= '1';
     else
          sig_6 <= '0';
     end if;
     if (e_reg(1023) = '0') then
          sig_7 <= '1';
     else
          sig_7 <= '0';
     end if;
     sig_8 <= sig_6 and sig_7;
     if (unsigned(r_reg) > 0) then
          sig_9 <= '1';
     else
          sig_9 <= '0';
     end if;
     if (unsigned(r_reg) > 0) then
          sig_10 <= '1';
     else
          sig_10 <= '0';
     end if;
     if (unsigned(r_reg) > 0) then
          sig_11 <= '1';
     else
          sig_11 <= '0';
     end if;
     cmd <= initreset_rstop_mont;
     case STATE is
          when init => 
                    cmd <= initreset_rstop_mont;
          when loop_exp => 
               if (sig_5 = '1') then
                         cmd <= start_last_montreset_rstop_mont;
               else
                         cmd <= do_montreset_rstop_mont;
               end if;
          when wait_input => 
               if (sig_2 = '1') then
                         cmd <= initreset_rstop_mont;
               else
                         cmd <= initreset_rstop_mont;
               end if;
          when start_calc_x => 
                    cmd <= calc_xstop_montreset_r;
          when calc_x => 
               if (sig_3 = '1') then
                         cmd <= start_loopno_montreset_rstop_mont;
               else
                         cmd <= calc_xreset_rstart_mont;
               end if;
          when do_mont => 
               if (sig_8 = '1') then
                         cmd <= save_ano_montreset_rstop_montshift_ereg;
               else
                    if (sig_9 = '1') then
                              cmd <= save_astart_extra_montreset_rstop_montshift_ereg;
                    else
                              cmd <= do_montreset_rstart_mont;
                    end if;
               end if;
          when do_extra_mont => 
               if (sig_10 = '1') then
                         cmd <= save_ano_montreset_rstop_mont;
               else
                         cmd <= do_extra_montreset_rstart_mont;
               end if;
          when last_mont => 
               if (sig_11 = '1') then
                         cmd <= no_montreset_rstop_mont;
               else
                         cmd <= last_montreset_rstart_mont;
               end if;
          when write_result => 
                    cmd <= write_resultno_montstop_mont;
          when find_counter => 
               if (sig_4 = '1') then
                         cmd <= no_montreset_rstop_montshift_ereg;
               else
                         cmd <= no_montreset_rstop_mont;
               end if;
          when others => 
     end case;
end process fsmCMB;

end RTL;
