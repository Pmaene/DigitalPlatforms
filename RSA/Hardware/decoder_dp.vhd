library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity decoder_dp is
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
end decoder_dp;


architecture RTL of decoder_dp is
-- signal declaration
signal i                  : std_logic_vector(9 downto 0);
signal i_wire             : std_logic_vector(9 downto 0);
signal ins_reg            : std_logic_vector(7 downto 0);
signal ins_reg_wire       : std_logic_vector(7 downto 0);
signal din_reg            : std_logic_vector(7 downto 0);
signal din_reg_wire       : std_logic_vector(7 downto 0);
signal x_reg              : std_logic_vector(1023 downto 0);
signal x_reg_wire         : std_logic_vector(1023 downto 0);
signal r2modm_reg         : std_logic_vector(1023 downto 0);
signal r2modm_reg_wire    : std_logic_vector(1023 downto 0);
signal a_reg              : std_logic_vector(1023 downto 0);
signal a_reg_wire         : std_logic_vector(1023 downto 0);
signal e_reg              : std_logic_vector(1023 downto 0);
signal e_reg_wire         : std_logic_vector(1023 downto 0);
signal m_reg              : std_logic_vector(1023 downto 0);
signal m_reg_wire         : std_logic_vector(1023 downto 0);
signal r_reg              : std_logic_vector(1026 downto 0);
signal r_reg_wire         : std_logic_vector(1026 downto 0);
signal x_sig              : std_logic_vector(1023 downto 0);
signal r2modm_sig         : std_logic_vector(1023 downto 0);
signal a_sig              : std_logic_vector(1023 downto 0);
signal e_sig              : std_logic_vector(1023 downto 0);
signal m_sig              : std_logic_vector(1023 downto 0);
signal r_sig              : std_logic_vector(1026 downto 0);
signal start_sig          : std_logic;
signal sig_2              : std_logic_vector(9 downto 0);
signal sig_3              : std_logic_vector(9 downto 0);
signal sig_4              : std_logic_vector(9 downto 0);
signal sig_5              : std_logic_vector(1031 downto 0);
signal sig_6              : std_logic_vector(1031 downto 0);
signal sig_9              : std_logic_vector(9 downto 0);
signal sig_10             : std_logic_vector(9 downto 0);
signal sig_11             : std_logic_vector(9 downto 0);
signal sig_12             : std_logic_vector(1031 downto 0);
signal sig_13             : std_logic_vector(1031 downto 0);
signal sig_16             : std_logic_vector(9 downto 0);
signal sig_17             : std_logic_vector(9 downto 0);
signal sig_18             : std_logic_vector(9 downto 0);
signal sig_19             : std_logic_vector(1031 downto 0);
signal sig_20             : std_logic_vector(1031 downto 0);
signal sig_23             : std_logic_vector(9 downto 0);
signal sig_24             : std_logic_vector(9 downto 0);
signal sig_25             : std_logic_vector(9 downto 0);
signal sig_26             : std_logic_vector(1031 downto 0);
signal sig_27             : std_logic_vector(1031 downto 0);
signal sig_30             : std_logic_vector(10 downto 0);
signal sig_31             : std_logic_vector(10 downto 0);
signal sig_32             : std_logic_vector(9 downto 0);
signal sig_33             : std_logic_vector(1031 downto 0);
signal sig_34             : std_logic_vector(1031 downto 0);
signal sig_37             : std_logic_vector(9 downto 0);
signal sig_38             : std_logic_vector(9 downto 0);
signal sig_39             : std_logic_vector(9 downto 0);
signal sig_40             : std_logic_vector(1026 downto 0);
signal sync_int           : std_logic_vector(7 downto 0);
signal data_wr_int        : std_logic;
signal result_wr_int      : std_logic;
signal dout_int           : std_logic_vector(7 downto 0);
signal address_int        : std_logic_vector(9 downto 0);
signal sig_41             : std_logic;
signal sig_42             : std_logic;
signal sig_43             : std_logic;
signal sig_44             : std_logic;
signal sig_47             : std_logic;
signal sig_50             : std_logic;
signal sig_53             : std_logic;
signal sig_54             : std_logic;
signal sig_57             : std_logic;
signal sig_60             : std_logic;
signal sig_61             : std_logic;
signal sig_64             : std_logic;
signal sig_67             : std_logic;
signal sig_68             : std_logic;
signal sig_71             : std_logic;
signal sig_74             : std_logic;
signal sig_75             : std_logic;
signal sig_76             : std_logic;
signal sig_77             : std_logic;
signal sig_80             : std_logic;
signal sig_81             : std_logic;
signal sig_1              : std_logic_vector(7 downto 0);
signal sig_8              : std_logic_vector(8 downto 0);
signal sig_15             : std_logic_vector(9 downto 0);
signal sig_22             : std_logic_vector(9 downto 0);
signal sig_29             : std_logic_vector(10 downto 0);
signal sig_36             : std_logic_vector(7 downto 0);
signal sig_46             : std_logic_vector(7 downto 0);
signal sig_49             : std_logic_vector(7 downto 0);
signal sig_52             : std_logic_vector(8 downto 0);
signal sig_56             : std_logic_vector(8 downto 0);
signal sig_59             : std_logic_vector(8 downto 0);
signal sig_63             : std_logic_vector(8 downto 0);
signal sig_66             : std_logic_vector(9 downto 0);
signal sig_70             : std_logic_vector(9 downto 0);
signal sig_73             : std_logic_vector(9 downto 0);
signal sig_79             : std_logic_vector(7 downto 0);


-- component map declaration
component exp_dp
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
end component;



-- state register & states
type STATE_TYPE is (init, do, done, get_data, do_exp, write_result, read_done, write_done);
signal STATE             : STATE_TYPE;
type CONTROL is (
     no_expno_syncno_writeno_addressdecode,
     no_expno_syncno_writeno_addressreset_counterdecode,
     stop_expexpno_syncno_writeno_addressdecode,
     no_expno_syncno_writeread_xdecode,
     no_expno_syncno_writeread_r2modmdecode,
     no_expno_syncno_writeread_adecode,
     no_expno_syncno_writeread_edecode,
     no_expno_syncno_writeread_mdecode,
     no_expno_writeno_addressread_donedecode,
     start_expexpno_syncno_writeno_addressdecode,
     no_expno_syncwrite_resultdecode,
     no_expno_writeno_addresswrite_donedecode
);
signal cmd : CONTROL;


begin


-- portmap
label_exp_dp : exp_dp port map (
          start => start_sig, 
          x => x_sig, 
          r2modm => r2modm_sig, 
          a => a_sig, 
          e => e_sig, 
          m => m_sig, 
          r => r_sig, 
          RST => RST, 
          CLK => CLK
     );


-- register updates
dpREG: process (CLK, RST)
begin
     if (RST = '1') then
          i <= (others => '0');
          ins_reg <= (others => '0');
          din_reg <= (others => '0');
          x_reg <= (others => '0');
          r2modm_reg <= (others => '0');
          a_reg <= (others => '0');
          e_reg <= (others => '0');
          m_reg <= (others => '0');
          r_reg <= (others => '0');
     elsif CLK' event and CLK = '1' then
          i <= i_wire;
          ins_reg <= ins_reg_wire;
          din_reg <= din_reg_wire;
          x_reg <= x_reg_wire;
          r2modm_reg <= r2modm_reg_wire;
          a_reg <= a_reg_wire;
          e_reg <= e_reg_wire;
          m_reg <= m_reg_wire;
          r_reg <= r_reg_wire;
     end if;
end process dpREG;


-- combinational logics
dpCMB: process (i, ins_reg, din_reg, x_reg, r2modm_reg, a_reg, e_reg, m_reg, r_reg, x_sig
, r2modm_sig, a_sig, e_sig, m_sig, r_sig, start_sig, sig_2, sig_3, sig_4, sig_5
, sig_6, sig_9, sig_10, sig_11, sig_12, sig_13, sig_16, sig_17, sig_18, sig_19
, sig_20, sig_23, sig_24, sig_25, sig_26, sig_27, sig_30, sig_31, sig_32, sig_33
, sig_34, sig_37, sig_38, sig_39, sig_40, sync_int, data_wr_int, result_wr_int, dout_int, address_int
, ins, din,cmd,STATE)
begin
     i_wire <= i;
     ins_reg_wire <= ins_reg;
     din_reg_wire <= din_reg;
     x_reg_wire <= x_reg;
     r2modm_reg_wire <= r2modm_reg;
     a_reg_wire <= a_reg;
     e_reg_wire <= e_reg;
     m_reg_wire <= m_reg;
     r_reg_wire <= r_reg;
     x_sig <= (others => '0');
     r2modm_sig <= (others => '0');
     a_sig <= (others => '0');
     e_sig <= (others => '0');
     m_sig <= (others => '0');
     start_sig <= '0';
     sig_2 <= (others => '0');
     sig_3 <= (others => '0');
     sig_4 <= (others => '0');
     sig_5 <= (others => '0');
     sig_6 <= (others => '0');
     sig_9 <= (others => '0');
     sig_10 <= (others => '0');
     sig_11 <= (others => '0');
     sig_12 <= (others => '0');
     sig_13 <= (others => '0');
     sig_16 <= (others => '0');
     sig_17 <= (others => '0');
     sig_18 <= (others => '0');
     sig_19 <= (others => '0');
     sig_20 <= (others => '0');
     sig_23 <= (others => '0');
     sig_24 <= (others => '0');
     sig_25 <= (others => '0');
     sig_26 <= (others => '0');
     sig_27 <= (others => '0');
     sig_30 <= (others => '0');
     sig_31 <= (others => '0');
     sig_32 <= (others => '0');
     sig_33 <= (others => '0');
     sig_34 <= (others => '0');
     sig_37 <= (others => '0');
     sig_38 <= (others => '0');
     sig_39 <= (others => '0');
     sig_40 <= (others => '0');
     sync_int <= (others => '0');
     data_wr_int <= '0';
     result_wr_int <= '0';
     dout_int <= (others => '0');
     address_int <= (others => '0');
     sig_1 <= "10000001";
     sig_8 <= "110000010";
     sig_15 <= "1110000010";
     sig_22 <= "1010000010";
     sig_29 <= "10010000010";
     sig_36 <= "10000000";
     sig_46 <= "10000001";
     sig_49 <= "10000001";
     sig_52 <= "100000001";
     sig_56 <= "100000001";
     sig_59 <= "110000001";
     sig_63 <= "110000001";
     sig_66 <= "1000000001";
     sig_70 <= "1000000001";
     sig_73 <= "1010000001";
     sig_79 <= "10000001";
     sync <= (others => '0');
     dout <= (others => '0');
     address <= (others => '0');
     data_wr <= '0';
     result_wr <= '0';

     case cmd is
          when no_expno_syncno_writeno_addressdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               address <= address_int;
               address_int <= std_logic_vector(to_unsigned(0, 10));
               ins_reg_wire <= ins;
          when no_expno_syncno_writeno_addressreset_counterdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               address <= address_int;
               address_int <= std_logic_vector(to_unsigned(0, 10));
               i_wire <= std_logic_vector(to_unsigned(0, 10));
               ins_reg_wire <= ins;
          when stop_expexpno_syncno_writeno_addressdecode => 
               start_sig <= '0';
               x_sig <= x_reg;
               r2modm_sig <= r2modm_reg;
               e_sig <= e_reg;
               a_sig <= a_reg;
               m_sig <= m_reg;
               r_reg_wire <= r_sig;
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               address <= address_int;
               address_int <= std_logic_vector(to_unsigned(0, 10));
               ins_reg_wire <= ins;
          when no_expno_syncno_writeread_xdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               sig_2 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_1), 10))) - unsigned(i));
               sig_3 <= std_logic_vector(unsigned(sig_2) - unsigned(std_logic_vector(to_unsigned(1, 10))));
               address <= address_int;
               sig_4 <= std_logic_vector(unsigned(i) + unsigned(std_logic_vector(to_unsigned(1, 10))));
               sig_5 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(x_reg), 1032))), 8));
               sig_6 <= sig_5 or std_logic_vector(resize(unsigned(din), 1032));
               address_int <= sig_3;
               i_wire <= sig_4;
               x_reg_wire <= std_logic_vector(resize(unsigned(sig_6), 1024));
               ins_reg_wire <= ins;
          when no_expno_syncno_writeread_r2modmdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               sig_9 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_8), 10))) - unsigned(i));
               sig_10 <= std_logic_vector(unsigned(sig_9) - unsigned(std_logic_vector(to_unsigned(1, 10))));
               address <= address_int;
               sig_11 <= std_logic_vector(unsigned(i) + unsigned(std_logic_vector(to_unsigned(1, 10))));
               sig_12 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(r2modm_reg), 1032))), 8));
               sig_13 <= sig_12 or std_logic_vector(resize(unsigned(din), 1032));
               address_int <= sig_10;
               i_wire <= sig_11;
               r2modm_reg_wire <= std_logic_vector(resize(unsigned(sig_13), 1024));
               ins_reg_wire <= ins;
          when no_expno_syncno_writeread_adecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               sig_23 <= std_logic_vector(unsigned(sig_22) - unsigned(i));
               sig_24 <= std_logic_vector(unsigned(sig_23) - unsigned(std_logic_vector(to_unsigned(1, 10))));
               address <= address_int;
               sig_25 <= std_logic_vector(unsigned(i) + unsigned(std_logic_vector(to_unsigned(1, 10))));
               sig_26 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(a_reg), 1032))), 8));
               sig_27 <= sig_26 or std_logic_vector(resize(unsigned(din), 1032));
               address_int <= sig_24;
               i_wire <= sig_25;
               a_reg_wire <= std_logic_vector(resize(unsigned(sig_27), 1024));
               ins_reg_wire <= ins;
          when no_expno_syncno_writeread_edecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               sig_16 <= std_logic_vector(unsigned(sig_15) - unsigned(i));
               sig_17 <= std_logic_vector(unsigned(sig_16) - unsigned(std_logic_vector(to_unsigned(1, 10))));
               address <= address_int;
               sig_18 <= std_logic_vector(unsigned(i) + unsigned(std_logic_vector(to_unsigned(1, 10))));
               sig_19 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(e_reg), 1032))), 8));
               sig_20 <= sig_19 or std_logic_vector(resize(unsigned(din), 1032));
               address_int <= sig_17;
               i_wire <= sig_18;
               e_reg_wire <= std_logic_vector(resize(unsigned(sig_20), 1024));
               ins_reg_wire <= ins;
          when no_expno_syncno_writeread_mdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               sig_30 <= std_logic_vector(unsigned(sig_29) - unsigned(std_logic_vector(resize(unsigned(i), 11))));
               sig_31 <= std_logic_vector(unsigned(sig_30) - unsigned(std_logic_vector(to_unsigned(1, 11))));
               address <= address_int;
               sig_32 <= std_logic_vector(unsigned(i) + unsigned(std_logic_vector(to_unsigned(1, 10))));
               sig_33 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(m_reg), 1032))), 8));
               sig_34 <= sig_33 or std_logic_vector(resize(unsigned(din), 1032));
               address_int <= std_logic_vector(resize(unsigned(sig_31), 10));
               i_wire <= sig_32;
               m_reg_wire <= std_logic_vector(resize(unsigned(sig_34), 1024));
               ins_reg_wire <= ins;
          when no_expno_writeno_addressread_donedecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               address <= address_int;
               address_int <= std_logic_vector(to_unsigned(0, 10));
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(1, 8));
               ins_reg_wire <= ins;
          when start_expexpno_syncno_writeno_addressdecode => 
               start_sig <= '1';
               x_sig <= x_reg;
               r2modm_sig <= r2modm_reg;
               e_sig <= e_reg;
               a_sig <= a_reg;
               m_sig <= m_reg;
               r_reg_wire <= r_sig;
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               address <= address_int;
               address_int <= std_logic_vector(to_unsigned(0, 10));
               ins_reg_wire <= ins;
          when no_expno_syncwrite_resultdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(0, 8));
               sig_37 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_36), 10))) - unsigned(i));
               sig_38 <= std_logic_vector(unsigned(sig_37) - unsigned(std_logic_vector(to_unsigned(1, 10))));
               address <= address_int;
               sig_39 <= std_logic_vector(unsigned(i) + unsigned(std_logic_vector(to_unsigned(1, 10))));
               dout <= dout_int;
               sig_40 <= std_logic_vector(shift_right(unsigned(r_reg), 8));
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               address_int <= sig_38;
               dout_int <= std_logic_vector(resize(unsigned(r_reg), 8));
               data_wr_int <= '0';
               result_wr_int <= '1';
               i_wire <= sig_39;
               r_reg_wire <= sig_40;
               ins_reg_wire <= ins;
          when no_expno_writeno_addresswrite_donedecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1024));
               r2modm_sig <= std_logic_vector(to_unsigned(0, 1024));
               e_sig <= std_logic_vector(to_unsigned(0, 1024));
               a_sig <= std_logic_vector(to_unsigned(0, 1024));
               m_sig <= std_logic_vector(to_unsigned(0, 1024));
               start_sig <= '0';
               data_wr <= data_wr_int;
               result_wr <= result_wr_int;
               dout <= dout_int;
               data_wr_int <= '0';
               result_wr_int <= '0';
               dout_int <= std_logic_vector(to_unsigned(0, 8));
               address <= address_int;
               address_int <= std_logic_vector(to_unsigned(0, 10));
               sync <= sync_int;
               sync_int <= std_logic_vector(to_unsigned(1, 8));
               ins_reg_wire <= ins;
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
                         STATE <= do;
               when do => 
                    if (sig_41 = '1') then
                              STATE <= get_data;
                    else
                         if (sig_42 = '1') then
                                   STATE <= do_exp;
                         else
                              if (sig_43 = '1') then
                                        STATE <= write_result;
                              else
                                        STATE <= do;
                              end if;
                         end if;
                    end if;
               when done => 
                    if (sig_44 = '1') then
                              STATE <= do;
                    else
                              STATE <= done;
                    end if;
               when get_data => 
                    if (sig_47 = '1') then
                              STATE <= get_data;
                    else
                         if (sig_54 = '1') then
                                   STATE <= get_data;
                         else
                              if (sig_61 = '1') then
                                        STATE <= get_data;
                              else
                                   if (sig_68 = '1') then
                                             STATE <= get_data;
                                   else
                                        if (sig_75 = '1') then
                                                  STATE <= get_data;
                                        else
                                                  STATE <= read_done;
                                        end if;
                                   end if;
                              end if;
                         end if;
                    end if;
               when do_exp => 
                    if (sig_77 = '1') then
                              STATE <= do;
                    else
                              STATE <= do_exp;
                    end if;
               when write_result => 
                    if (sig_80 = '1') then
                              STATE <= write_result;
                    else
                              STATE <= write_done;
                    end if;
               when read_done => 
                    if (sig_76 = '1') then
                              STATE <= do;
                    else
                              STATE <= read_done;
                    end if;
               when write_done => 
                    if (sig_81 = '1') then
                              STATE <= do;
                    else
                              STATE <= write_done;
                    end if;
               when others => 
          end case;
     end if;
end process fsmREG;


-- controller cmb
fsmCMB: process (i, ins_reg, din_reg, x_reg, r2modm_reg, a_reg, e_reg, m_reg, r_reg, x_sig
, r2modm_sig, a_sig, e_sig, m_sig, r_sig, start_sig, sig_2, sig_3, sig_4, sig_5
, sig_6, sig_9, sig_10, sig_11, sig_12, sig_13, sig_16, sig_17, sig_18, sig_19
, sig_20, sig_23, sig_24, sig_25, sig_26, sig_27, sig_30, sig_31, sig_32, sig_33
, sig_34, sig_37, sig_38, sig_39, sig_40, sync_int, data_wr_int, result_wr_int, dout_int, address_int
, sig_41, sig_42, sig_43, sig_44, sig_47, sig_50, sig_53, sig_54, sig_57, sig_60
, sig_61, sig_64, sig_67, sig_68, sig_71, sig_74, sig_75, sig_76, sig_77, sig_80
, sig_81, ins, din,cmd,STATE)
begin
     sig_41 <= '0';
     sig_42 <= '0';
     sig_43 <= '0';
     sig_44 <= '0';
     sig_47 <= '0';
     sig_50 <= '0';
     sig_53 <= '0';
     sig_54 <= '0';
     sig_57 <= '0';
     sig_60 <= '0';
     sig_61 <= '0';
     sig_64 <= '0';
     sig_67 <= '0';
     sig_68 <= '0';
     sig_71 <= '0';
     sig_74 <= '0';
     sig_75 <= '0';
     sig_76 <= '0';
     sig_77 <= '0';
     sig_80 <= '0';
     sig_81 <= '0';
     if (unsigned(ins_reg) = 1) then
          sig_41 <= '1';
     else
          sig_41 <= '0';
     end if;
     if (unsigned(ins_reg) = 2) then
          sig_42 <= '1';
     else
          sig_42 <= '0';
     end if;
     if (unsigned(ins_reg) = 3) then
          sig_43 <= '1';
     else
          sig_43 <= '0';
     end if;
     if (unsigned(ins_reg) = 0) then
          sig_44 <= '1';
     else
          sig_44 <= '0';
     end if;
     if (unsigned(i) < unsigned(sig_46)) then
          sig_47 <= '1';
     else
          sig_47 <= '0';
     end if;
     if (unsigned(i) >= unsigned(sig_49)) then
          sig_50 <= '1';
     else
          sig_50 <= '0';
     end if;
     if (unsigned(i) < unsigned(sig_52)) then
          sig_53 <= '1';
     else
          sig_53 <= '0';
     end if;
     sig_54 <= sig_50 and sig_53;
     if (unsigned(i) >= unsigned(sig_56)) then
          sig_57 <= '1';
     else
          sig_57 <= '0';
     end if;
     if (unsigned(i) < unsigned(sig_59)) then
          sig_60 <= '1';
     else
          sig_60 <= '0';
     end if;
     sig_61 <= sig_57 and sig_60;
     if (unsigned(i) >= unsigned(sig_63)) then
          sig_64 <= '1';
     else
          sig_64 <= '0';
     end if;
     if (unsigned(i) < unsigned(sig_66)) then
          sig_67 <= '1';
     else
          sig_67 <= '0';
     end if;
     sig_68 <= sig_64 and sig_67;
     if (unsigned(i) >= unsigned(sig_70)) then
          sig_71 <= '1';
     else
          sig_71 <= '0';
     end if;
     if (unsigned(i) < unsigned(sig_73)) then
          sig_74 <= '1';
     else
          sig_74 <= '0';
     end if;
     sig_75 <= sig_71 and sig_74;
     if (unsigned(ins_reg) = 4) then
          sig_76 <= '1';
     else
          sig_76 <= '0';
     end if;
     if (unsigned(r_reg) > 0) then
          sig_77 <= '1';
     else
          sig_77 <= '0';
     end if;
     if (unsigned(i) < unsigned(sig_79)) then
          sig_80 <= '1';
     else
          sig_80 <= '0';
     end if;
     if (unsigned(ins_reg) = 4) then
          sig_81 <= '1';
     else
          sig_81 <= '0';
     end if;
     cmd <= no_expno_syncno_writeno_addressdecode;
     case STATE is
          when init => 
                    cmd <= no_expno_syncno_writeno_addressdecode;
          when do => 
               if (sig_41 = '1') then
                         cmd <= no_expno_syncno_writeno_addressreset_counterdecode;
               else
                    if (sig_42 = '1') then
                              cmd <= stop_expexpno_syncno_writeno_addressdecode;
                    else
                         if (sig_43 = '1') then
                                   cmd <= no_expno_syncno_writeno_addressreset_counterdecode;
                         else
                                   cmd <= no_expno_syncno_writeno_addressdecode;
                         end if;
                    end if;
               end if;
          when done => 
               if (sig_44 = '1') then
                         cmd <= no_expno_syncno_writeno_addressdecode;
               else
                         cmd <= no_expno_syncno_writeno_addressdecode;
               end if;
          when get_data => 
               if (sig_47 = '1') then
                         cmd <= no_expno_syncno_writeread_xdecode;
               else
                    if (sig_54 = '1') then
                              cmd <= no_expno_syncno_writeread_r2modmdecode;
                    else
                         if (sig_61 = '1') then
                                   cmd <= no_expno_syncno_writeread_adecode;
                         else
                              if (sig_68 = '1') then
                                        cmd <= no_expno_syncno_writeread_edecode;
                              else
                                   if (sig_75 = '1') then
                                             cmd <= no_expno_syncno_writeread_mdecode;
                                   else
                                             cmd <= no_expno_writeno_addressread_donedecode;
                                   end if;
                              end if;
                         end if;
                    end if;
               end if;
          when do_exp => 
               if (sig_77 = '1') then
                         cmd <= no_expno_syncno_writeno_addressdecode;
               else
                         cmd <= start_expexpno_syncno_writeno_addressdecode;
               end if;
          when write_result => 
               if (sig_80 = '1') then
                         cmd <= no_expno_syncwrite_resultdecode;
               else
                         cmd <= no_expno_writeno_addresswrite_donedecode;
               end if;
          when read_done => 
               if (sig_76 = '1') then
                         cmd <= no_expno_syncno_writeno_addressdecode;
               else
                         cmd <= no_expno_writeno_addressread_donedecode;
               end if;
          when write_done => 
               if (sig_81 = '1') then
                         cmd <= no_expno_syncno_writeno_addressdecode;
               else
                         cmd <= no_expno_writeno_addresswrite_donedecode;
               end if;
          when others => 
     end case;
end process fsmCMB;

end RTL;
