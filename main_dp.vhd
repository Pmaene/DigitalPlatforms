library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.std_logic_arithext.all;


-- datapath entity
entity main_dp is
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
end main_dp;


architecture RTL of main_dp is
-- signal declaration
signal displayed_reg      : std_logic;
signal displayed_reg_wire : std_logic;
signal mont_test_gte_reg  : std_logic;
signal mont_test_gte_reg_wire : std_logic;
signal counter_reg        : std_logic_vector(10 downto 0);
signal counter_reg_wire   : std_logic_vector(10 downto 0);
signal instruction_reg    : std_logic_vector(7 downto 0);
signal instruction_reg_wire : std_logic_vector(7 downto 0);
signal address_reg        : std_logic_vector(7 downto 0);
signal address_reg_wire   : std_logic_vector(7 downto 0);
signal data_in_reg        : std_logic_vector(7 downto 0);
signal data_in_reg_wire   : std_logic_vector(7 downto 0);
signal a_reg              : std_logic_vector(1023 downto 0);
signal a_reg_wire         : std_logic_vector(1023 downto 0);
signal b_reg              : std_logic_vector(1023 downto 0);
signal b_reg_wire         : std_logic_vector(1023 downto 0);
signal m_reg              : std_logic_vector(1023 downto 0);
signal m_reg_wire         : std_logic_vector(1023 downto 0);
signal r_reg              : std_logic_vector(1026 downto 0);
signal r_reg_wire         : std_logic_vector(1026 downto 0);
signal x_sig              : std_logic_vector(1025 downto 0);
signal y_sig              : std_logic_vector(1025 downto 0);
signal s_sig              : std_logic_vector(1026 downto 0);
signal subtract_sig       : std_logic;
signal sig_0              : std_logic_vector(15 downto 0);
signal sig_3              : std_logic_vector(10 downto 0);
signal sig_4              : std_logic_vector(15 downto 0);
signal sig_5              : std_logic_vector(1031 downto 0);
signal sig_6              : std_logic_vector(1031 downto 0);
signal sig_7              : std_logic_vector(10 downto 0);
signal sig_8              : std_logic_vector(15 downto 0);
signal sig_11             : std_logic_vector(10 downto 0);
signal sig_12             : std_logic_vector(15 downto 0);
signal sig_13             : std_logic_vector(1031 downto 0);
signal sig_14             : std_logic_vector(1031 downto 0);
signal sig_15             : std_logic_vector(10 downto 0);
signal sig_16             : std_logic_vector(15 downto 0);
signal sig_19             : std_logic_vector(10 downto 0);
signal sig_20             : std_logic_vector(15 downto 0);
signal sig_21             : std_logic_vector(1031 downto 0);
signal sig_22             : std_logic_vector(1031 downto 0);
signal sig_23             : std_logic_vector(10 downto 0);
signal sig_24             : std_logic_vector(15 downto 0);
signal sig_27             : std_logic_vector(10 downto 0);
signal sig_28             : std_logic_vector(15 downto 0);
signal sig_29             : std_logic_vector(1034 downto 0);
signal sig_30             : std_logic_vector(1034 downto 0);
signal sig_31             : std_logic_vector(10 downto 0);
signal sig_32             : std_logic_vector(15 downto 0);
signal sig_33             : std_logic_vector(15 downto 0);
signal sig_34             : std_logic_vector(14 downto 0);
signal sig_35             : std_logic_vector(1026 downto 0);
signal sig_36             : std_logic_vector(10 downto 0);
signal sig_37             : std_logic_vector(10 downto 0);
signal sig_38             : std_logic_vector(1023 downto 0);
signal sig_39             : std_logic;
signal sig_40             : std_logic_vector(1025 downto 0);
signal sig_41             : std_logic_vector(1026 downto 0);
signal sig_42             : std_logic_vector(1026 downto 0);
signal sig_43             : std_logic_vector(1026 downto 0);
signal sig_44             : std_logic_vector(1026 downto 0);
signal sig_45             : std_logic_vector(1026 downto 0);
signal sig_46             : std_logic;
signal sig_47             : std_logic;
signal data_out_int       : std_logic_vector(7 downto 0);
signal data_wr_int        : std_logic;
signal full_address_int   : std_logic_vector(15 downto 0);
signal status_int         : std_logic_vector(7 downto 0);
signal sig_48             : std_logic;
signal sig_49             : std_logic;
signal sig_50             : std_logic;
signal sig_51             : std_logic;
signal sig_52             : std_logic;
signal sig_53             : std_logic;
signal sig_54             : std_logic;
signal sig_55             : std_logic;
signal sig_56             : std_logic;
signal sig_57             : std_logic;
signal sig_58             : std_logic;
signal sig_59             : std_logic;
signal sig_60             : std_logic;
signal sig_61             : std_logic;
signal sig_62             : std_logic;
signal sig_63             : std_logic;
signal sig_64             : std_logic;
signal sig_67             : std_logic;
signal sig_70             : std_logic;
signal sig_73             : std_logic;
signal sig_76             : std_logic;
signal sig_79             : std_logic;
signal sig_80             : std_logic;
signal sig_81             : std_logic;
signal sig_82             : std_logic;
signal sig_83             : std_logic;
signal sig_84             : std_logic;
signal sig_85             : std_logic;
signal sig_86             : std_logic;
signal sig_87             : std_logic;
signal sig_88             : std_logic;
signal sig_89             : std_logic;
signal sig_90             : std_logic;
signal sig_91             : std_logic;
signal sig_92             : std_logic;
signal sig_93             : std_logic;
signal sig_94             : std_logic;
signal sig_95             : std_logic;
signal sig_96             : std_logic;
signal sig_97             : std_logic;
signal sig_98             : std_logic;
signal sig_101            : std_logic;
signal sig_104            : std_logic;
signal sig_2              : std_logic_vector(6 downto 0);
signal sig_10             : std_logic_vector(6 downto 0);
signal sig_18             : std_logic_vector(6 downto 0);
signal sig_26             : std_logic_vector(6 downto 0);
signal sig_66             : std_logic_vector(7 downto 0);
signal sig_69             : std_logic_vector(7 downto 0);
signal sig_72             : std_logic_vector(7 downto 0);
signal sig_75             : std_logic_vector(7 downto 0);
signal sig_78             : std_logic_vector(3 downto 0);
signal sig_100            : std_logic_vector(7 downto 0);
signal sig_103            : std_logic_vector(3 downto 0);


-- component map declaration
component adder_dp
port(
     subtract               : in  std_logic;
     a                      : in  std_logic_vector(1025 downto 0);
     b                      : in  std_logic_vector(1025 downto 0);
     s                      : out std_logic_vector(1026 downto 0));
end component;



-- state register & states
type STATE_TYPE is (init, do, read_modulus, read_a_mem, read_b_mem, read_result, read_done, mont_do, mont_if_else, mont_test, write_result, write_done);
signal STATE             : STATE_TYPE;
type CONTROL is (
     no_addernot_idlingno_writeno_addressdecode,
     reset_displayedidlingno_adderno_writeno_addressdecode,
     display_cyclesno_addernot_idlingno_writeno_addressdecode,
     display_resultno_addernot_idlingno_writeno_addressdecode,
     reset_mreset_counterno_addernot_idlingno_writeno_addressdecode,
     reset_areset_counterno_addernot_idlingno_writeno_addressdecode,
     read_a_regno_addernot_idlingno_writeno_addressdecode,
     reset_breset_counterno_addernot_idlingno_writeno_addressdecode,
     read_b_regno_addernot_idlingno_writeno_addressdecode,
     reset_rreset_counterno_addernot_idlingno_writeno_addressdecode,
     reset_counterno_addernot_idlingno_writeno_addressdecode,
     reset_counterreset_rno_addermont_not_doneno_writeno_addressdecode,
     addnot_idlingno_writeno_addressdecode,
     subtractnot_idlingno_writeno_addressdecode,
     read_mno_addernot_idlingno_writedecode,
     idlingno_adderno_writeno_addressdecode,
     read_a_memno_addernot_idlingno_writedecode,
     read_b_memno_addernot_idlingno_writedecode,
     read_resultno_addernot_idlingno_writedecode,
     mont_test_resultno_addermont_not_doneno_writeno_addressdecode,
     mont_just_dividemont_counter_incrementno_addermont_not_doneno_writeno_addressdecode,
     mont_sum_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode,
     mont_sum_m_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode,
     mont_summont_not_doneno_writeno_addressdecode,
     mont_equal_to_zeromont_counter_incrementno_addermont_not_doneno_writeno_addressdecode,
     mont_not_equal_to_zeromont_counter_incrementmont_not_doneno_writeno_addressdecode,
     mont_test_gteidlingno_writeno_addressdecode,
     mont_test_ltidlingno_writeno_addressdecode,
     write_resultno_addernot_idlingdecode
);
signal cmd : CONTROL;


begin


-- portmap
label_adder_dp : adder_dp port map (
          subtract => subtract_sig, 
          a => x_sig, 
          b => y_sig, 
          s => s_sig     );


-- register updates
dpREG: process (CLK, RST)
begin
     if (RST = '1') then
          displayed_reg <= '0';
          mont_test_gte_reg <= '0';
          counter_reg <= (others => '0');
          instruction_reg <= (others => '0');
          address_reg <= (others => '0');
          data_in_reg <= (others => '0');
          a_reg <= (others => '0');
          b_reg <= (others => '0');
          m_reg <= (others => '0');
          r_reg <= (others => '0');
     elsif CLK' event and CLK = '1' then
          displayed_reg <= displayed_reg_wire;
          mont_test_gte_reg <= mont_test_gte_reg_wire;
          counter_reg <= counter_reg_wire;
          instruction_reg <= instruction_reg_wire;
          address_reg <= address_reg_wire;
          data_in_reg <= data_in_reg_wire;
          a_reg <= a_reg_wire;
          b_reg <= b_reg_wire;
          m_reg <= m_reg_wire;
          r_reg <= r_reg_wire;
     end if;
end process dpREG;


-- combinational logics
dpCMB: process (displayed_reg, mont_test_gte_reg, counter_reg, instruction_reg, address_reg, data_in_reg, a_reg, b_reg, m_reg, r_reg
, x_sig, y_sig, s_sig, subtract_sig, sig_0, sig_3, sig_4, sig_5, sig_6, sig_7
, sig_8, sig_11, sig_12, sig_13, sig_14, sig_15, sig_16, sig_19, sig_20, sig_21
, sig_22, sig_23, sig_24, sig_27, sig_28, sig_29, sig_30, sig_31, sig_32, sig_33
, sig_34, sig_35, sig_36, sig_37, sig_38, sig_39, sig_40, sig_41, sig_42, sig_43
, sig_44, sig_45, sig_46, sig_47, data_out_int, data_wr_int, full_address_int, status_int, instruction, address
, data_in,cmd,STATE)
begin
     displayed_reg_wire <= displayed_reg;
     mont_test_gte_reg_wire <= mont_test_gte_reg;
     counter_reg_wire <= counter_reg;
     instruction_reg_wire <= instruction_reg;
     address_reg_wire <= address_reg;
     data_in_reg_wire <= data_in_reg;
     a_reg_wire <= a_reg;
     b_reg_wire <= b_reg;
     m_reg_wire <= m_reg;
     r_reg_wire <= r_reg;
     x_sig <= (others => '0');
     y_sig <= (others => '0');
     subtract_sig <= '0';
     sig_0 <= (others => '0');
     sig_3 <= (others => '0');
     sig_4 <= (others => '0');
     sig_5 <= (others => '0');
     sig_6 <= (others => '0');
     sig_7 <= (others => '0');
     sig_8 <= (others => '0');
     sig_11 <= (others => '0');
     sig_12 <= (others => '0');
     sig_13 <= (others => '0');
     sig_14 <= (others => '0');
     sig_15 <= (others => '0');
     sig_16 <= (others => '0');
     sig_19 <= (others => '0');
     sig_20 <= (others => '0');
     sig_21 <= (others => '0');
     sig_22 <= (others => '0');
     sig_23 <= (others => '0');
     sig_24 <= (others => '0');
     sig_27 <= (others => '0');
     sig_28 <= (others => '0');
     sig_29 <= (others => '0');
     sig_30 <= (others => '0');
     sig_31 <= (others => '0');
     sig_32 <= (others => '0');
     sig_33 <= (others => '0');
     sig_34 <= (others => '0');
     sig_35 <= (others => '0');
     sig_36 <= (others => '0');
     sig_37 <= (others => '0');
     sig_38 <= (others => '0');
     sig_39 <= '0';
     sig_40 <= (others => '0');
     sig_41 <= (others => '0');
     sig_42 <= (others => '0');
     sig_43 <= (others => '0');
     sig_44 <= (others => '0');
     sig_45 <= (others => '0');
     sig_46 <= '0';
     sig_47 <= '0';
     data_out_int <= (others => '0');
     data_wr_int <= '0';
     full_address_int <= (others => '0');
     status_int <= (others => '0');
     sig_2 <= "1111111";
     sig_10 <= "1111111";
     sig_18 <= "1111111";
     sig_26 <= "1111111";
     sig_66 <= "10000000";
     sig_69 <= "10000000";
     sig_72 <= "10000000";
     sig_75 <= "10000000";
     sig_78 <= "1111";
     sig_100 <= "10000000";
     sig_103 <= "1111";
     full_address <= (others => '0');
     data_out <= (others => '0');
     status <= (others => '0');
     data_wr <= '0';

     case cmd is
          when no_addernot_idlingno_writeno_addressdecode => 
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_displayedidlingno_adderno_writeno_addressdecode => 
               displayed_reg_wire <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(1, 8));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when display_cyclesno_addernot_idlingno_writeno_addressdecode => 
               displayed_reg_wire <= '1';
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when display_resultno_addernot_idlingno_writeno_addressdecode => 
               displayed_reg_wire <= '1';
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_mreset_counterno_addernot_idlingno_writeno_addressdecode => 
               m_reg_wire <= std_logic_vector(to_unsigned(0, 1024));
               counter_reg_wire <= std_logic_vector(to_unsigned(0, 11));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_areset_counterno_addernot_idlingno_writeno_addressdecode => 
               a_reg_wire <= std_logic_vector(to_unsigned(0, 1024));
               counter_reg_wire <= std_logic_vector(to_unsigned(0, 11));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when read_a_regno_addernot_idlingno_writeno_addressdecode => 
               a_reg_wire <= std_logic_vector(resize(unsigned(r_reg), 1024));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_breset_counterno_addernot_idlingno_writeno_addressdecode => 
               b_reg_wire <= std_logic_vector(to_unsigned(0, 1024));
               counter_reg_wire <= std_logic_vector(to_unsigned(0, 11));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when read_b_regno_addernot_idlingno_writeno_addressdecode => 
               b_reg_wire <= std_logic_vector(resize(unsigned(r_reg), 1024));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_rreset_counterno_addernot_idlingno_writeno_addressdecode => 
               r_reg_wire <= std_logic_vector(to_unsigned(0, 1027));
               counter_reg_wire <= std_logic_vector(to_unsigned(0, 11));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_counterno_addernot_idlingno_writeno_addressdecode => 
               counter_reg_wire <= std_logic_vector(to_unsigned(0, 11));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when reset_counterreset_rno_addermont_not_doneno_writeno_addressdecode => 
               counter_reg_wire <= std_logic_vector(to_unsigned(0, 11));
               r_reg_wire <= std_logic_vector(to_unsigned(0, 1027));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when addnot_idlingno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(a_reg), 1026));
               y_sig <= std_logic_vector(resize(unsigned(b_reg), 1026));
               subtract_sig <= '0';
               r_reg_wire <= s_sig;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when subtractnot_idlingno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(a_reg), 1026));
               y_sig <= std_logic_vector(resize(unsigned(b_reg), 1026));
               subtract_sig <= '1';
               r_reg_wire <= s_sig;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when read_mno_addernot_idlingno_writedecode => 
               sig_16 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(address_reg), 16))), 8));
               sig_19 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_18), 11))) - unsigned(counter_reg));
               sig_20 <= std_logic_vector(unsigned(sig_16) + unsigned(std_logic_vector(resize(unsigned(sig_19), 16))));
               full_address <= full_address_int;
               sig_21 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(m_reg), 1032))), 8));
               sig_22 <= sig_21 or std_logic_vector(resize(unsigned(data_in), 1032));
               sig_23 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               full_address_int <= sig_20;
               m_reg_wire <= std_logic_vector(resize(unsigned(sig_22), 1024));
               counter_reg_wire <= sig_23;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when idlingno_adderno_writeno_addressdecode => 
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(1, 8));
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when read_a_memno_addernot_idlingno_writedecode => 
               sig_0 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(address_reg), 16))), 8));
               sig_3 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_2), 11))) - unsigned(counter_reg));
               sig_4 <= std_logic_vector(unsigned(sig_0) + unsigned(std_logic_vector(resize(unsigned(sig_3), 16))));
               full_address <= full_address_int;
               sig_5 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(a_reg), 1032))), 8));
               sig_6 <= sig_5 or std_logic_vector(resize(unsigned(data_in), 1032));
               sig_7 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               full_address_int <= sig_4;
               a_reg_wire <= std_logic_vector(resize(unsigned(sig_6), 1024));
               counter_reg_wire <= sig_7;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when read_b_memno_addernot_idlingno_writedecode => 
               sig_8 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(address_reg), 16))), 8));
               sig_11 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_10), 11))) - unsigned(counter_reg));
               sig_12 <= std_logic_vector(unsigned(sig_8) + unsigned(std_logic_vector(resize(unsigned(sig_11), 16))));
               full_address <= full_address_int;
               sig_13 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(b_reg), 1032))), 8));
               sig_14 <= sig_13 or std_logic_vector(resize(unsigned(data_in), 1032));
               sig_15 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               full_address_int <= sig_12;
               b_reg_wire <= std_logic_vector(resize(unsigned(sig_14), 1024));
               counter_reg_wire <= sig_15;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when read_resultno_addernot_idlingno_writedecode => 
               sig_24 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(address_reg), 16))), 8));
               sig_27 <= std_logic_vector(unsigned(std_logic_vector(resize(unsigned(sig_26), 11))) - unsigned(counter_reg));
               sig_28 <= std_logic_vector(unsigned(sig_24) + unsigned(std_logic_vector(resize(unsigned(sig_27), 16))));
               full_address <= full_address_int;
               sig_29 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(r_reg), 1035))), 8));
               sig_30 <= sig_29 or std_logic_vector(resize(unsigned(data_in), 1035));
               sig_31 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               full_address_int <= sig_28;
               r_reg_wire <= std_logic_vector(resize(unsigned(sig_30), 1027));
               counter_reg_wire <= sig_31;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_test_resultno_addermont_not_doneno_writeno_addressdecode => 
               if (unsigned(r_reg) >= unsigned(m_reg)) then
                    sig_46 <= '1';
               else
                    sig_46 <= '0';
               end if;
               if (sig_46 = '1') then
                    sig_47 <= '1';
               else
                    sig_47 <= '0';
               end if;
               mont_test_gte_reg_wire <= sig_47;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_just_dividemont_counter_incrementno_addermont_not_doneno_writeno_addressdecode => 
               sig_41 <= std_logic_vector(shift_right(unsigned(r_reg), 1));
               r_reg_wire <= sig_41;
               sig_37 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_38 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_reg_wire <= sig_37;
               a_reg_wire <= sig_38;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_sum_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y_sig <= std_logic_vector(resize(unsigned(b_reg), 1026));
               subtract_sig <= '0';
               sig_42 <= std_logic_vector(shift_right(unsigned(s_sig), 1));
               r_reg_wire <= sig_42;
               sig_37 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_38 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_reg_wire <= sig_37;
               a_reg_wire <= sig_38;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_sum_m_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y_sig <= std_logic_vector(resize(unsigned(m_reg), 1026));
               subtract_sig <= '0';
               sig_43 <= std_logic_vector(shift_right(unsigned(s_sig), 1));
               r_reg_wire <= sig_43;
               sig_37 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_38 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_reg_wire <= sig_37;
               a_reg_wire <= sig_38;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_summont_not_doneno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(r_reg), 1026));
               if (a_reg(0) = '0') then
                    sig_39 <= '1';
               else
                    sig_39 <= '0';
               end if;
               if (sig_39 = '1') then
                    sig_40 <= std_logic_vector(to_unsigned(0, 1026));
               else
                    sig_40 <= std_logic_vector(resize(unsigned(b_reg), 1026));
               end if;
               y_sig <= sig_40;
               subtract_sig <= '0';
               r_reg_wire <= s_sig;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_equal_to_zeromont_counter_incrementno_addermont_not_doneno_writeno_addressdecode => 
               sig_44 <= std_logic_vector(shift_right(unsigned(r_reg), 1));
               r_reg_wire <= sig_44;
               sig_37 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_38 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_reg_wire <= sig_37;
               a_reg_wire <= sig_38;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_not_equal_to_zeromont_counter_incrementmont_not_doneno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y_sig <= std_logic_vector(resize(unsigned(m_reg), 1026));
               subtract_sig <= '0';
               sig_45 <= std_logic_vector(shift_right(unsigned(s_sig), 1));
               r_reg_wire <= sig_45;
               sig_37 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               sig_38 <= std_logic_vector(shift_right(unsigned(a_reg), 1));
               counter_reg_wire <= sig_37;
               a_reg_wire <= sig_38;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(2, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_test_gteidlingno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y_sig <= std_logic_vector(resize(unsigned(m_reg), 1026));
               subtract_sig <= '1';
               r_reg_wire <= s_sig;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(1, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when mont_test_ltidlingno_writeno_addressdecode => 
               x_sig <= std_logic_vector(resize(unsigned(r_reg), 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '1';
               r_reg_wire <= s_sig;
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(1, 8));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               data_out_int <= std_logic_vector(to_unsigned(0, 8));
               data_wr_int <= '0';
               full_address <= full_address_int;
               full_address_int <= std_logic_vector(to_unsigned(0, 16));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
          when write_resultno_addernot_idlingdecode => 
               sig_32 <= std_logic_vector(shift_left(unsigned(std_logic_vector(resize(unsigned(address_reg), 16))), 8));
               sig_33 <= std_logic_vector(unsigned(sig_32) + unsigned(std_logic_vector(resize(unsigned(counter_reg), 16))));
               full_address <= full_address_int;
               sig_34 <= std_logic_vector(unsigned(std_logic_vector(to_unsigned(8, 4))) * unsigned(counter_reg));
               sig_35 <= std_logic_vector(shift_right(unsigned(r_reg), to_integer(unsigned(sig_34))));
               data_out <= data_out_int;
               data_wr <= data_wr_int;
               sig_36 <= std_logic_vector(unsigned(counter_reg) + unsigned(std_logic_vector(to_unsigned(1, 11))));
               full_address_int <= sig_33;
               data_out_int <= std_logic_vector(resize(unsigned(sig_35), 8));
               data_wr_int <= '1';
               counter_reg_wire <= sig_36;
               x_sig <= std_logic_vector(to_unsigned(0, 1026));
               y_sig <= std_logic_vector(to_unsigned(0, 1026));
               subtract_sig <= '0';
               status <= status_int;
               status_int <= std_logic_vector(to_unsigned(0, 8));
               instruction_reg_wire <= instruction;
               address_reg_wire <= address;
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
                    if (sig_48 = '1') then
                              STATE <= do;
                    else
                         if (sig_51 = '1') then
                                   STATE <= do;
                         else
                              if (sig_54 = '1') then
                                        STATE <= do;
                              else
                                   if (sig_55 = '1') then
                                             STATE <= read_modulus;
                                   else
                                        if (sig_56 = '1') then
                                                  STATE <= read_a_mem;
                                        else
                                             if (sig_57 = '1') then
                                                       STATE <= do;
                                             else
                                                  if (sig_58 = '1') then
                                                            STATE <= read_b_mem;
                                                  else
                                                       if (sig_59 = '1') then
                                                                 STATE <= do;
                                                       else
                                                            if (sig_60 = '1') then
                                                                      STATE <= read_result;
                                                            else
                                                                 if (sig_61 = '1') then
                                                                           STATE <= write_result;
                                                                 else
                                                                      if (sig_62 = '1') then
                                                                                STATE <= mont_do;
                                                                      else
                                                                           if (sig_63 = '1') then
                                                                                     STATE <= do;
                                                                           else
                                                                                if (sig_64 = '1') then
                                                                                          STATE <= do;
                                                                                else
                                                                                          STATE <= do;
                                                                                end if;
                                                                           end if;
                                                                      end if;
                                                                 end if;
                                                            end if;
                                                       end if;
                                                  end if;
                                             end if;
                                        end if;
                                   end if;
                              end if;
                         end if;
                    end if;
               when read_modulus => 
                    if (sig_67 = '1') then
                              STATE <= read_modulus;
                    else
                              STATE <= read_done;
                    end if;
               when read_a_mem => 
                    if (sig_70 = '1') then
                              STATE <= read_a_mem;
                    else
                              STATE <= read_done;
                    end if;
               when read_b_mem => 
                    if (sig_73 = '1') then
                              STATE <= read_b_mem;
                    else
                              STATE <= read_done;
                    end if;
               when read_result => 
                    if (sig_76 = '1') then
                              STATE <= read_result;
                    else
                              STATE <= read_done;
                    end if;
               when read_done => 
                    if (sig_79 = '1') then
                              STATE <= do;
                    else
                              STATE <= read_done;
                    end if;
               when mont_do => 
                    if (sig_80 = '1') then
                              STATE <= mont_test;
                    else
                         if (sig_83 = '1') then
                                   STATE <= mont_do;
                         else
                              if (sig_88 = '1') then
                                        STATE <= mont_do;
                              else
                                   if (sig_93 = '1') then
                                             STATE <= mont_do;
                                   else
                                        if (sig_96 = '1') then
                                                  STATE <= mont_do;
                                        else
                                                  STATE <= mont_if_else;
                                        end if;
                                   end if;
                              end if;
                         end if;
                    end if;
               when mont_if_else => 
                    if (sig_97 = '1') then
                              STATE <= mont_do;
                    else
                              STATE <= mont_do;
                    end if;
               when mont_test => 
                    if (sig_98 = '1') then
                              STATE <= do;
                    else
                              STATE <= do;
                    end if;
               when write_result => 
                    if (sig_101 = '1') then
                              STATE <= write_result;
                    else
                              STATE <= write_done;
                    end if;
               when write_done => 
                    if (sig_104 = '1') then
                              STATE <= do;
                    else
                              STATE <= write_done;
                    end if;
               when others => 
          end case;
     end if;
end process fsmREG;


-- controller cmb
fsmCMB: process (displayed_reg, mont_test_gte_reg, counter_reg, instruction_reg, address_reg, data_in_reg, a_reg, b_reg, m_reg, r_reg
, x_sig, y_sig, s_sig, subtract_sig, sig_0, sig_3, sig_4, sig_5, sig_6, sig_7
, sig_8, sig_11, sig_12, sig_13, sig_14, sig_15, sig_16, sig_19, sig_20, sig_21
, sig_22, sig_23, sig_24, sig_27, sig_28, sig_29, sig_30, sig_31, sig_32, sig_33
, sig_34, sig_35, sig_36, sig_37, sig_38, sig_39, sig_40, sig_41, sig_42, sig_43
, sig_44, sig_45, sig_46, sig_47, data_out_int, data_wr_int, full_address_int, status_int, sig_48, sig_49
, sig_50, sig_51, sig_52, sig_53, sig_54, sig_55, sig_56, sig_57, sig_58, sig_59
, sig_60, sig_61, sig_62, sig_63, sig_64, sig_67, sig_70, sig_73, sig_76, sig_79
, sig_80, sig_81, sig_82, sig_83, sig_84, sig_85, sig_86, sig_87, sig_88, sig_89
, sig_90, sig_91, sig_92, sig_93, sig_94, sig_95, sig_96, sig_97, sig_98, sig_101
, sig_104, instruction, address, data_in,cmd,STATE)
begin
     sig_48 <= '0';
     sig_49 <= '0';
     sig_50 <= '0';
     sig_51 <= '0';
     sig_52 <= '0';
     sig_53 <= '0';
     sig_54 <= '0';
     sig_55 <= '0';
     sig_56 <= '0';
     sig_57 <= '0';
     sig_58 <= '0';
     sig_59 <= '0';
     sig_60 <= '0';
     sig_61 <= '0';
     sig_62 <= '0';
     sig_63 <= '0';
     sig_64 <= '0';
     sig_67 <= '0';
     sig_70 <= '0';
     sig_73 <= '0';
     sig_76 <= '0';
     sig_79 <= '0';
     sig_80 <= '0';
     sig_81 <= '0';
     sig_82 <= '0';
     sig_83 <= '0';
     sig_84 <= '0';
     sig_85 <= '0';
     sig_86 <= '0';
     sig_87 <= '0';
     sig_88 <= '0';
     sig_89 <= '0';
     sig_90 <= '0';
     sig_91 <= '0';
     sig_92 <= '0';
     sig_93 <= '0';
     sig_94 <= '0';
     sig_95 <= '0';
     sig_96 <= '0';
     sig_97 <= '0';
     sig_98 <= '0';
     sig_101 <= '0';
     sig_104 <= '0';
     if (unsigned(instruction_reg) = 0) then
          sig_48 <= '1';
     else
          sig_48 <= '0';
     end if;
     if (unsigned(instruction_reg) = 1) then
          sig_49 <= '1';
     else
          sig_49 <= '0';
     end if;
     if (displayed_reg = '0') then
          sig_50 <= '1';
     else
          sig_50 <= '0';
     end if;
     sig_51 <= sig_49 and sig_50;
     if (unsigned(instruction_reg) = 2) then
          sig_52 <= '1';
     else
          sig_52 <= '0';
     end if;
     if (displayed_reg = '0') then
          sig_53 <= '1';
     else
          sig_53 <= '0';
     end if;
     sig_54 <= sig_52 and sig_53;
     if (unsigned(instruction_reg) = 16) then
          sig_55 <= '1';
     else
          sig_55 <= '0';
     end if;
     if (unsigned(instruction_reg) = 17) then
          sig_56 <= '1';
     else
          sig_56 <= '0';
     end if;
     if (unsigned(instruction_reg) = 18) then
          sig_57 <= '1';
     else
          sig_57 <= '0';
     end if;
     if (unsigned(instruction_reg) = 19) then
          sig_58 <= '1';
     else
          sig_58 <= '0';
     end if;
     if (unsigned(instruction_reg) = 20) then
          sig_59 <= '1';
     else
          sig_59 <= '0';
     end if;
     if (unsigned(instruction_reg) = 21) then
          sig_60 <= '1';
     else
          sig_60 <= '0';
     end if;
     if (unsigned(instruction_reg) = 22) then
          sig_61 <= '1';
     else
          sig_61 <= '0';
     end if;
     if (unsigned(instruction_reg) = 32) then
          sig_62 <= '1';
     else
          sig_62 <= '0';
     end if;
     if (unsigned(instruction_reg) = 48) then
          sig_63 <= '1';
     else
          sig_63 <= '0';
     end if;
     if (unsigned(instruction_reg) = 49) then
          sig_64 <= '1';
     else
          sig_64 <= '0';
     end if;
     if (unsigned(counter_reg) < unsigned(sig_66)) then
          sig_67 <= '1';
     else
          sig_67 <= '0';
     end if;
     if (unsigned(counter_reg) < unsigned(sig_69)) then
          sig_70 <= '1';
     else
          sig_70 <= '0';
     end if;
     if (unsigned(counter_reg) < unsigned(sig_72)) then
          sig_73 <= '1';
     else
          sig_73 <= '0';
     end if;
     if (unsigned(counter_reg) < unsigned(sig_75)) then
          sig_76 <= '1';
     else
          sig_76 <= '0';
     end if;
     if (unsigned(instruction_reg) = unsigned(sig_78)) then
          sig_79 <= '1';
     else
          sig_79 <= '0';
     end if;
     if (unsigned(counter_reg) >= 1024) then
          sig_80 <= '1';
     else
          sig_80 <= '0';
     end if;
     if (r_reg(0) = '0') then
          sig_81 <= '1';
     else
          sig_81 <= '0';
     end if;
     if (a_reg(0) = '0') then
          sig_82 <= '1';
     else
          sig_82 <= '0';
     end if;
     sig_83 <= sig_81 and sig_82;
     if (r_reg(0) = '0') then
          sig_84 <= '1';
     else
          sig_84 <= '0';
     end if;
     if (a_reg(0) = '1') then
          sig_85 <= '1';
     else
          sig_85 <= '0';
     end if;
     sig_86 <= sig_84 and sig_85;
     if (b_reg(0) = '0') then
          sig_87 <= '1';
     else
          sig_87 <= '0';
     end if;
     sig_88 <= sig_86 and sig_87;
     if (r_reg(0) = '1') then
          sig_89 <= '1';
     else
          sig_89 <= '0';
     end if;
     if (a_reg(0) = '1') then
          sig_90 <= '1';
     else
          sig_90 <= '0';
     end if;
     sig_91 <= sig_89 and sig_90;
     if (b_reg(0) = '1') then
          sig_92 <= '1';
     else
          sig_92 <= '0';
     end if;
     sig_93 <= sig_91 and sig_92;
     if (r_reg(0) = '1') then
          sig_94 <= '1';
     else
          sig_94 <= '0';
     end if;
     if (a_reg(0) = '0') then
          sig_95 <= '1';
     else
          sig_95 <= '0';
     end if;
     sig_96 <= sig_94 and sig_95;
     if (r_reg(0) = '0') then
          sig_97 <= '1';
     else
          sig_97 <= '0';
     end if;
     if (mont_test_gte_reg = '1') then
          sig_98 <= '1';
     else
          sig_98 <= '0';
     end if;
     if (unsigned(counter_reg) < unsigned(sig_100)) then
          sig_101 <= '1';
     else
          sig_101 <= '0';
     end if;
     if (unsigned(instruction_reg) = unsigned(sig_103)) then
          sig_104 <= '1';
     else
          sig_104 <= '0';
     end if;
     cmd <= no_addernot_idlingno_writeno_addressdecode;
     case STATE is
          when init => 
                    cmd <= no_addernot_idlingno_writeno_addressdecode;
          when do => 
               if (sig_48 = '1') then
                         cmd <= reset_displayedidlingno_adderno_writeno_addressdecode;
               else
                    if (sig_51 = '1') then
                              cmd <= display_cyclesno_addernot_idlingno_writeno_addressdecode;
                    else
                         if (sig_54 = '1') then
                                   cmd <= display_resultno_addernot_idlingno_writeno_addressdecode;
                         else
                              if (sig_55 = '1') then
                                        cmd <= reset_mreset_counterno_addernot_idlingno_writeno_addressdecode;
                              else
                                   if (sig_56 = '1') then
                                             cmd <= reset_areset_counterno_addernot_idlingno_writeno_addressdecode;
                                   else
                                        if (sig_57 = '1') then
                                                  cmd <= read_a_regno_addernot_idlingno_writeno_addressdecode;
                                        else
                                             if (sig_58 = '1') then
                                                       cmd <= reset_breset_counterno_addernot_idlingno_writeno_addressdecode;
                                             else
                                                  if (sig_59 = '1') then
                                                            cmd <= read_b_regno_addernot_idlingno_writeno_addressdecode;
                                                  else
                                                       if (sig_60 = '1') then
                                                                 cmd <= reset_rreset_counterno_addernot_idlingno_writeno_addressdecode;
                                                       else
                                                            if (sig_61 = '1') then
                                                                      cmd <= reset_counterno_addernot_idlingno_writeno_addressdecode;
                                                            else
                                                                 if (sig_62 = '1') then
                                                                           cmd <= reset_counterreset_rno_addermont_not_doneno_writeno_addressdecode;
                                                                 else
                                                                      if (sig_63 = '1') then
                                                                                cmd <= addnot_idlingno_writeno_addressdecode;
                                                                      else
                                                                           if (sig_64 = '1') then
                                                                                     cmd <= subtractnot_idlingno_writeno_addressdecode;
                                                                           else
                                                                                     cmd <= no_addernot_idlingno_writeno_addressdecode;
                                                                           end if;
                                                                      end if;
                                                                 end if;
                                                            end if;
                                                       end if;
                                                  end if;
                                             end if;
                                        end if;
                                   end if;
                              end if;
                         end if;
                    end if;
               end if;
          when read_modulus => 
               if (sig_67 = '1') then
                         cmd <= read_mno_addernot_idlingno_writedecode;
               else
                         cmd <= idlingno_adderno_writeno_addressdecode;
               end if;
          when read_a_mem => 
               if (sig_70 = '1') then
                         cmd <= read_a_memno_addernot_idlingno_writedecode;
               else
                         cmd <= idlingno_adderno_writeno_addressdecode;
               end if;
          when read_b_mem => 
               if (sig_73 = '1') then
                         cmd <= read_b_memno_addernot_idlingno_writedecode;
               else
                         cmd <= idlingno_adderno_writeno_addressdecode;
               end if;
          when read_result => 
               if (sig_76 = '1') then
                         cmd <= read_resultno_addernot_idlingno_writedecode;
               else
                         cmd <= idlingno_adderno_writeno_addressdecode;
               end if;
          when read_done => 
               if (sig_79 = '1') then
                         cmd <= no_addernot_idlingno_writeno_addressdecode;
               else
                         cmd <= idlingno_adderno_writeno_addressdecode;
               end if;
          when mont_do => 
               if (sig_80 = '1') then
                         cmd <= mont_test_resultno_addermont_not_doneno_writeno_addressdecode;
               else
                    if (sig_83 = '1') then
                              cmd <= mont_just_dividemont_counter_incrementno_addermont_not_doneno_writeno_addressdecode;
                    else
                         if (sig_88 = '1') then
                                   cmd <= mont_sum_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode;
                         else
                              if (sig_93 = '1') then
                                        cmd <= mont_sum_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode;
                              else
                                   if (sig_96 = '1') then
                                             cmd <= mont_sum_m_and_dividemont_counter_incrementmont_not_doneno_writeno_addressdecode;
                                   else
                                             cmd <= mont_summont_not_doneno_writeno_addressdecode;
                                   end if;
                              end if;
                         end if;
                    end if;
               end if;
          when mont_if_else => 
               if (sig_97 = '1') then
                         cmd <= mont_equal_to_zeromont_counter_incrementno_addermont_not_doneno_writeno_addressdecode;
               else
                         cmd <= mont_not_equal_to_zeromont_counter_incrementmont_not_doneno_writeno_addressdecode;
               end if;
          when mont_test => 
               if (sig_98 = '1') then
                         cmd <= mont_test_gteidlingno_writeno_addressdecode;
               else
                         cmd <= mont_test_ltidlingno_writeno_addressdecode;
               end if;
          when write_result => 
               if (sig_101 = '1') then
                         cmd <= write_resultno_addernot_idlingdecode;
               else
                         cmd <= no_addernot_idlingno_writeno_addressdecode;
               end if;
          when write_done => 
               if (sig_104 = '1') then
                         cmd <= no_addernot_idlingno_writeno_addressdecode;
               else
                         cmd <= idlingno_adderno_writeno_addressdecode;
               end if;
          when others => 
     end case;
end process fsmCMB;

end RTL;
