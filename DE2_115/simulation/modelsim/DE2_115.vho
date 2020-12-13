-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/12/2020 20:45:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2_115 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	GPIO : BUFFER std_logic_vector(12 DOWNTO 0)
	);
END DE2_115;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[4]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[7]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[8]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[9]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[10]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[11]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[12]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE2_115 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_GPIO : std_logic_vector(12 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[1]~8_combout\ : std_logic;
SIGNAL \reset_init_blk_50|Equal0~0_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[0]~7_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[1]~9\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[2]~10_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[2]~11\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[3]~12_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[3]~13\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[4]~14_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[4]~15\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[5]~16_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[5]~17\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[6]~18_combout\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[6]~19\ : std_logic;
SIGNAL \reset_init_blk_50|reset_count[7]~20_combout\ : std_logic;
SIGNAL \reset_init_blk_50|Equal0~1_combout\ : std_logic;
SIGNAL \reset_init_blk_50|Equal0~2_combout\ : std_logic;
SIGNAL \reset_init_blk_50|rst_reg~feeder_combout\ : std_logic;
SIGNAL \reset_init_blk_50|rst_reg~q\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.INIT~0_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.INIT~q\ : std_logic;
SIGNAL \controlador_PWM|Selector9~0_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~25_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~22_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~26_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~23_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~13\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~14_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~4_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~15\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~16_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~1_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~17\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~18_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~19\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~20_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~0_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Equal0~2_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count[0]~feeder_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~1\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~2_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~3\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~4_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~2_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~5\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~6_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~6_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~7\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~8_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~3_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~9\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~10_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count[5]~feeder_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~11\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~12_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count~5_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~21\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~22_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~23\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Add0~24_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Equal0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_out_reg~0_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_out_reg~1_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_out_reg~2_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_out_reg~q\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~1\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~2_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~3\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~5\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~7\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~8_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~9\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~10_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|counter~2_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~11\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~12_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~13\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~14_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Equal0~1_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~6_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|counter~1_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Equal0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~15\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~16_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|counter~3_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|Add0~4_combout\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|counter~0_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~35_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~1\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~2_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~34_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~3\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~4_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~33_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~5\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~6_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~32_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~7\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~8_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~31_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~9\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~10_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~30_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Equal0~1_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~11\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~12_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~29_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~13\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~14_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~28_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~15\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~16_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~27_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~17\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~18_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~26_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~19\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~20_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~25_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Equal0~2_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Equal0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|always0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~21\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~22_combout\ : std_logic;
SIGNAL \controlador_PWM|portador_triangular|Add0~24_combout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \controlador_PWM|Selector8~1_combout\ : std_logic;
SIGNAL \controlador_PWM|driver2_reg~q\ : std_logic;
SIGNAL \controlador_PWM|Selector0~0_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~24_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~27_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~28_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\ : std_logic;
SIGNAL \controlador_PWM|Selector8~0_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~31_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~29_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~30_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~32_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\ : std_logic;
SIGNAL \controlador_PWM|counter[0]~0_combout\ : std_logic;
SIGNAL \controlador_PWM|Selector10~0_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~21_combout\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM.CHANGE_1~q\ : std_logic;
SIGNAL \controlador_PWM|DEAD_TIME_SM~20_combout\ : std_logic;
SIGNAL \controlador_PWM|Selector0~1_combout\ : std_logic;
SIGNAL \controlador_PWM|driver1_reg~q\ : std_logic;
SIGNAL \controlador_PWM|senoid_60hz|counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controlador_PWM|portador_triangular|counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \reset_init_blk_50|reset_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \controlador_PWM|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controlador_PWM|senoid_60hz|divisor|clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \reset_init_blk_50|ALT_INV_rst_reg~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
GPIO <= ww_GPIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlador_PWM|senoid_60hz|counter\(8) & \controlador_PWM|senoid_60hz|counter\(7) & \controlador_PWM|senoid_60hz|counter\(6) & 
\controlador_PWM|senoid_60hz|counter\(5) & \controlador_PWM|senoid_60hz|counter\(4) & \controlador_PWM|senoid_60hz|counter\(3) & \controlador_PWM|senoid_60hz|counter\(2) & \controlador_PWM|senoid_60hz|counter\(1) & 
\controlador_PWM|senoid_60hz|counter\(0));

\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(0) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(1) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(2) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(3) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(4) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(5) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(6) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(7) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(8) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(9) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(10) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(11) <= \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\(0) <= \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\(0);
\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\(1) <= \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\(1);
\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\(2) <= \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\(2);
\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\(3) <= \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\(3);
\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\(4) <= \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk\(0));

\controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \controlador_PWM|senoid_60hz|divisor|clk_out_reg~q\);
\reset_init_blk_50|ALT_INV_rst_reg~q\ <= NOT \reset_init_blk_50|rst_reg~q\;

-- Location: IOOBUF_X60_Y0_N23
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_50~input_o\,
	devoe => ww_devoe,
	o => ww_GPIO(0));

-- Location: IOOBUF_X96_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador_PWM|driver1_reg~q\,
	devoe => ww_devoe,
	o => ww_GPIO(1));

-- Location: IOOBUF_X96_Y0_N16
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador_PWM|driver2_reg~q\,
	devoe => ww_devoe,
	o => ww_GPIO(2));

-- Location: IOOBUF_X65_Y0_N23
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(3));

-- Location: IOOBUF_X60_Y0_N9
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(4));

-- Location: IOOBUF_X65_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(5));

-- Location: IOOBUF_X60_Y0_N2
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(6));

-- Location: IOOBUF_X85_Y0_N2
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(7));

-- Location: IOOBUF_X109_Y0_N2
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(8));

-- Location: IOOBUF_X87_Y0_N23
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(9));

-- Location: IOOBUF_X111_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(10));

-- Location: IOOBUF_X100_Y0_N23
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(11));

-- Location: IOOBUF_X89_Y0_N9
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO(12));

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y1_N4
\reset_init_blk_50|reset_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[1]~8_combout\ = (\reset_init_blk_50|reset_count\(0) & (\reset_init_blk_50|reset_count\(1) $ (VCC))) # (!\reset_init_blk_50|reset_count\(0) & (\reset_init_blk_50|reset_count\(1) & VCC))
-- \reset_init_blk_50|reset_count[1]~9\ = CARRY((\reset_init_blk_50|reset_count\(0) & \reset_init_blk_50|reset_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|reset_count\(0),
	datab => \reset_init_blk_50|reset_count\(1),
	datad => VCC,
	combout => \reset_init_blk_50|reset_count[1]~8_combout\,
	cout => \reset_init_blk_50|reset_count[1]~9\);

-- Location: FF_X58_Y1_N5
\reset_init_blk_50|reset_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[1]~8_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(1));

-- Location: LCCOMB_X58_Y1_N18
\reset_init_blk_50|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|Equal0~0_combout\ = (\reset_init_blk_50|reset_count\(0) & (\reset_init_blk_50|reset_count\(3) & (\reset_init_blk_50|reset_count\(1) & \reset_init_blk_50|reset_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|reset_count\(0),
	datab => \reset_init_blk_50|reset_count\(3),
	datac => \reset_init_blk_50|reset_count\(1),
	datad => \reset_init_blk_50|reset_count\(2),
	combout => \reset_init_blk_50|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y1_N20
\reset_init_blk_50|reset_count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[0]~7_combout\ = ((\reset_init_blk_50|Equal0~1_combout\ & \reset_init_blk_50|Equal0~0_combout\)) # (!\reset_init_blk_50|reset_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|Equal0~1_combout\,
	datac => \reset_init_blk_50|reset_count\(0),
	datad => \reset_init_blk_50|Equal0~0_combout\,
	combout => \reset_init_blk_50|reset_count[0]~7_combout\);

-- Location: FF_X58_Y1_N21
\reset_init_blk_50|reset_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(0));

-- Location: LCCOMB_X58_Y1_N6
\reset_init_blk_50|reset_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[2]~10_combout\ = (\reset_init_blk_50|reset_count\(2) & (!\reset_init_blk_50|reset_count[1]~9\)) # (!\reset_init_blk_50|reset_count\(2) & ((\reset_init_blk_50|reset_count[1]~9\) # (GND)))
-- \reset_init_blk_50|reset_count[2]~11\ = CARRY((!\reset_init_blk_50|reset_count[1]~9\) # (!\reset_init_blk_50|reset_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|reset_count\(2),
	datad => VCC,
	cin => \reset_init_blk_50|reset_count[1]~9\,
	combout => \reset_init_blk_50|reset_count[2]~10_combout\,
	cout => \reset_init_blk_50|reset_count[2]~11\);

-- Location: FF_X58_Y1_N7
\reset_init_blk_50|reset_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[2]~10_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(2));

-- Location: LCCOMB_X58_Y1_N8
\reset_init_blk_50|reset_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[3]~12_combout\ = (\reset_init_blk_50|reset_count\(3) & (\reset_init_blk_50|reset_count[2]~11\ $ (GND))) # (!\reset_init_blk_50|reset_count\(3) & (!\reset_init_blk_50|reset_count[2]~11\ & VCC))
-- \reset_init_blk_50|reset_count[3]~13\ = CARRY((\reset_init_blk_50|reset_count\(3) & !\reset_init_blk_50|reset_count[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reset_init_blk_50|reset_count\(3),
	datad => VCC,
	cin => \reset_init_blk_50|reset_count[2]~11\,
	combout => \reset_init_blk_50|reset_count[3]~12_combout\,
	cout => \reset_init_blk_50|reset_count[3]~13\);

-- Location: FF_X58_Y1_N9
\reset_init_blk_50|reset_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[3]~12_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(3));

-- Location: LCCOMB_X58_Y1_N10
\reset_init_blk_50|reset_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[4]~14_combout\ = (\reset_init_blk_50|reset_count\(4) & (!\reset_init_blk_50|reset_count[3]~13\)) # (!\reset_init_blk_50|reset_count\(4) & ((\reset_init_blk_50|reset_count[3]~13\) # (GND)))
-- \reset_init_blk_50|reset_count[4]~15\ = CARRY((!\reset_init_blk_50|reset_count[3]~13\) # (!\reset_init_blk_50|reset_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|reset_count\(4),
	datad => VCC,
	cin => \reset_init_blk_50|reset_count[3]~13\,
	combout => \reset_init_blk_50|reset_count[4]~14_combout\,
	cout => \reset_init_blk_50|reset_count[4]~15\);

-- Location: FF_X58_Y1_N11
\reset_init_blk_50|reset_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[4]~14_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(4));

-- Location: LCCOMB_X58_Y1_N12
\reset_init_blk_50|reset_count[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[5]~16_combout\ = (\reset_init_blk_50|reset_count\(5) & (\reset_init_blk_50|reset_count[4]~15\ $ (GND))) # (!\reset_init_blk_50|reset_count\(5) & (!\reset_init_blk_50|reset_count[4]~15\ & VCC))
-- \reset_init_blk_50|reset_count[5]~17\ = CARRY((\reset_init_blk_50|reset_count\(5) & !\reset_init_blk_50|reset_count[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|reset_count\(5),
	datad => VCC,
	cin => \reset_init_blk_50|reset_count[4]~15\,
	combout => \reset_init_blk_50|reset_count[5]~16_combout\,
	cout => \reset_init_blk_50|reset_count[5]~17\);

-- Location: FF_X58_Y1_N13
\reset_init_blk_50|reset_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[5]~16_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(5));

-- Location: LCCOMB_X58_Y1_N14
\reset_init_blk_50|reset_count[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[6]~18_combout\ = (\reset_init_blk_50|reset_count\(6) & (!\reset_init_blk_50|reset_count[5]~17\)) # (!\reset_init_blk_50|reset_count\(6) & ((\reset_init_blk_50|reset_count[5]~17\) # (GND)))
-- \reset_init_blk_50|reset_count[6]~19\ = CARRY((!\reset_init_blk_50|reset_count[5]~17\) # (!\reset_init_blk_50|reset_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reset_init_blk_50|reset_count\(6),
	datad => VCC,
	cin => \reset_init_blk_50|reset_count[5]~17\,
	combout => \reset_init_blk_50|reset_count[6]~18_combout\,
	cout => \reset_init_blk_50|reset_count[6]~19\);

-- Location: FF_X58_Y1_N15
\reset_init_blk_50|reset_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[6]~18_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(6));

-- Location: LCCOMB_X58_Y1_N16
\reset_init_blk_50|reset_count[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|reset_count[7]~20_combout\ = \reset_init_blk_50|reset_count[6]~19\ $ (!\reset_init_blk_50|reset_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \reset_init_blk_50|reset_count\(7),
	cin => \reset_init_blk_50|reset_count[6]~19\,
	combout => \reset_init_blk_50|reset_count[7]~20_combout\);

-- Location: FF_X58_Y1_N17
\reset_init_blk_50|reset_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|reset_count[7]~20_combout\,
	ena => \reset_init_blk_50|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|reset_count\(7));

-- Location: LCCOMB_X58_Y1_N22
\reset_init_blk_50|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|Equal0~1_combout\ = (\reset_init_blk_50|reset_count\(5) & (\reset_init_blk_50|reset_count\(7) & (\reset_init_blk_50|reset_count\(6) & \reset_init_blk_50|reset_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|reset_count\(5),
	datab => \reset_init_blk_50|reset_count\(7),
	datac => \reset_init_blk_50|reset_count\(6),
	datad => \reset_init_blk_50|reset_count\(4),
	combout => \reset_init_blk_50|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y1_N24
\reset_init_blk_50|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|Equal0~2_combout\ = (!\reset_init_blk_50|Equal0~0_combout\) # (!\reset_init_blk_50|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_init_blk_50|Equal0~1_combout\,
	datad => \reset_init_blk_50|Equal0~0_combout\,
	combout => \reset_init_blk_50|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y1_N24
\reset_init_blk_50|rst_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_init_blk_50|rst_reg~feeder_combout\ = \reset_init_blk_50|Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_init_blk_50|Equal0~2_combout\,
	combout => \reset_init_blk_50|rst_reg~feeder_combout\);

-- Location: FF_X57_Y1_N25
\reset_init_blk_50|rst_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_init_blk_50|rst_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_init_blk_50|rst_reg~q\);

-- Location: LCCOMB_X60_Y4_N28
\controlador_PWM|DEAD_TIME_SM.INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM.INIT~0_combout\ = !\reset_init_blk_50|rst_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_init_blk_50|rst_reg~q\,
	combout => \controlador_PWM|DEAD_TIME_SM.INIT~0_combout\);

-- Location: FF_X60_Y4_N29
\controlador_PWM|DEAD_TIME_SM.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM.INIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.INIT~q\);

-- Location: LCCOMB_X62_Y4_N24
\controlador_PWM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|Selector9~0_combout\ = (!\controlador_PWM|counter\(1) & \controlador_PWM|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|counter\(1),
	datad => \controlador_PWM|counter\(0),
	combout => \controlador_PWM|Selector9~0_combout\);

-- Location: LCCOMB_X61_Y4_N22
\controlador_PWM|DEAD_TIME_SM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~25_combout\ = (\reset_init_blk_50|rst_reg~q\ & (!\controlador_PWM|DEAD_TIME_SM~24_combout\ & (\controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\))) # (!\reset_init_blk_50|rst_reg~q\ & ((\controlador_PWM|DEAD_TIME_SM.CHANGE_1~q\) # 
-- ((!\controlador_PWM|DEAD_TIME_SM~24_combout\ & \controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|rst_reg~q\,
	datab => \controlador_PWM|DEAD_TIME_SM~24_combout\,
	datac => \controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\,
	datad => \controlador_PWM|DEAD_TIME_SM.CHANGE_1~q\,
	combout => \controlador_PWM|DEAD_TIME_SM~25_combout\);

-- Location: FF_X61_Y4_N23
\controlador_PWM|DEAD_TIME_SM.COMPARE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\);

-- Location: LCCOMB_X61_Y4_N26
\controlador_PWM|DEAD_TIME_SM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~22_combout\ = (!\controlador_PWM|counter\(0) & (!\controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\ & (!\controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\ & \controlador_PWM|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|counter\(0),
	datab => \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\,
	datac => \controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\,
	datad => \controlador_PWM|counter\(1),
	combout => \controlador_PWM|DEAD_TIME_SM~22_combout\);

-- Location: LCCOMB_X61_Y4_N10
\controlador_PWM|DEAD_TIME_SM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~26_combout\ = (!\controlador_PWM|counter\(0) & (\controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\ & (!\reset_init_blk_50|rst_reg~q\ & \controlador_PWM|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|counter\(0),
	datab => \controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\,
	datac => \reset_init_blk_50|rst_reg~q\,
	datad => \controlador_PWM|counter\(1),
	combout => \controlador_PWM|DEAD_TIME_SM~26_combout\);

-- Location: FF_X61_Y4_N11
\controlador_PWM|DEAD_TIME_SM.CHANGE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\);

-- Location: LCCOMB_X61_Y4_N4
\controlador_PWM|DEAD_TIME_SM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~23_combout\ = (\controlador_PWM|DEAD_TIME_SM~20_combout\ & (!\controlador_PWM|Selector8~0_combout\ & (!\reset_init_blk_50|rst_reg~q\ & !\controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|DEAD_TIME_SM~20_combout\,
	datab => \controlador_PWM|Selector8~0_combout\,
	datac => \reset_init_blk_50|rst_reg~q\,
	datad => \controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\,
	combout => \controlador_PWM|DEAD_TIME_SM~23_combout\);

-- Location: PLL_1
\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 10,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 27,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 19,
	m => 54,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 231,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \reset_init_blk_50|rst_reg~q\,
	fbin => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y1_N14
\controlador_PWM|senoid_60hz|divisor|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~12_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(6) & (\controlador_PWM|senoid_60hz|divisor|Add0~11\ $ (GND))) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(6) & 
-- (!\controlador_PWM|senoid_60hz|divisor|Add0~11\ & VCC))
-- \controlador_PWM|senoid_60hz|divisor|Add0~13\ = CARRY((\controlador_PWM|senoid_60hz|divisor|clk_count\(6) & !\controlador_PWM|senoid_60hz|divisor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(6),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~11\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~12_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~13\);

-- Location: LCCOMB_X56_Y1_N16
\controlador_PWM|senoid_60hz|divisor|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~14_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(7) & (!\controlador_PWM|senoid_60hz|divisor|Add0~13\)) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(7) & 
-- ((\controlador_PWM|senoid_60hz|divisor|Add0~13\) # (GND)))
-- \controlador_PWM|senoid_60hz|divisor|Add0~15\ = CARRY((!\controlador_PWM|senoid_60hz|divisor|Add0~13\) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(7),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~13\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~14_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~15\);

-- Location: LCCOMB_X57_Y1_N4
\controlador_PWM|senoid_60hz|divisor|clk_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~4_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~14_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Add0~14_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~4_combout\);

-- Location: FF_X57_Y1_N5
\controlador_PWM|senoid_60hz|divisor|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~4_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(7));

-- Location: LCCOMB_X56_Y1_N18
\controlador_PWM|senoid_60hz|divisor|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~16_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(8) & (\controlador_PWM|senoid_60hz|divisor|Add0~15\ $ (GND))) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(8) & 
-- (!\controlador_PWM|senoid_60hz|divisor|Add0~15\ & VCC))
-- \controlador_PWM|senoid_60hz|divisor|Add0~17\ = CARRY((\controlador_PWM|senoid_60hz|divisor|clk_count\(8) & !\controlador_PWM|senoid_60hz|divisor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(8),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~15\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~16_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~17\);

-- Location: LCCOMB_X57_Y1_N2
\controlador_PWM|senoid_60hz|divisor|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~1_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~16_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|Add0~16_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~1_combout\);

-- Location: FF_X57_Y1_N3
\controlador_PWM|senoid_60hz|divisor|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~1_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(8));

-- Location: LCCOMB_X56_Y1_N20
\controlador_PWM|senoid_60hz|divisor|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~18_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(9) & (!\controlador_PWM|senoid_60hz|divisor|Add0~17\)) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(9) & 
-- ((\controlador_PWM|senoid_60hz|divisor|Add0~17\) # (GND)))
-- \controlador_PWM|senoid_60hz|divisor|Add0~19\ = CARRY((!\controlador_PWM|senoid_60hz|divisor|Add0~17\) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(9),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~17\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~18_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~19\);

-- Location: FF_X57_Y1_N27
\controlador_PWM|senoid_60hz|divisor|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \controlador_PWM|senoid_60hz|divisor|Add0~18_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(9));

-- Location: LCCOMB_X56_Y1_N22
\controlador_PWM|senoid_60hz|divisor|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~20_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(10) & (\controlador_PWM|senoid_60hz|divisor|Add0~19\ $ (GND))) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(10) & 
-- (!\controlador_PWM|senoid_60hz|divisor|Add0~19\ & VCC))
-- \controlador_PWM|senoid_60hz|divisor|Add0~21\ = CARRY((\controlador_PWM|senoid_60hz|divisor|clk_count\(10) & !\controlador_PWM|senoid_60hz|divisor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(10),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~19\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~20_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~21\);

-- Location: LCCOMB_X57_Y1_N20
\controlador_PWM|senoid_60hz|divisor|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~0_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~20_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|Add0~20_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~0_combout\);

-- Location: FF_X57_Y1_N21
\controlador_PWM|senoid_60hz|divisor|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~0_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(10));

-- Location: LCCOMB_X57_Y1_N26
\controlador_PWM|senoid_60hz|divisor|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Equal0~2_combout\ = (!\controlador_PWM|senoid_60hz|divisor|clk_count\(5) & (\controlador_PWM|senoid_60hz|divisor|clk_count\(10) & (!\controlador_PWM|senoid_60hz|divisor|clk_count\(9) & 
-- \controlador_PWM|senoid_60hz|divisor|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(5),
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(10),
	datac => \controlador_PWM|senoid_60hz|divisor|clk_count\(9),
	datad => \controlador_PWM|senoid_60hz|divisor|clk_count\(8),
	combout => \controlador_PWM|senoid_60hz|divisor|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y1_N2
\controlador_PWM|senoid_60hz|divisor|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~0_combout\ = \controlador_PWM|senoid_60hz|divisor|clk_count\(0) $ (VCC)
-- \controlador_PWM|senoid_60hz|divisor|Add0~1\ = CARRY(\controlador_PWM|senoid_60hz|divisor|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(0),
	datad => VCC,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~0_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~1\);

-- Location: LCCOMB_X57_Y1_N16
\controlador_PWM|senoid_60hz|divisor|clk_count[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count[0]~feeder_combout\ = \controlador_PWM|senoid_60hz|divisor|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador_PWM|senoid_60hz|divisor|Add0~0_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count[0]~feeder_combout\);

-- Location: FF_X57_Y1_N17
\controlador_PWM|senoid_60hz|divisor|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count[0]~feeder_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(0));

-- Location: LCCOMB_X56_Y1_N4
\controlador_PWM|senoid_60hz|divisor|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~2_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(1) & (!\controlador_PWM|senoid_60hz|divisor|Add0~1\)) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(1) & 
-- ((\controlador_PWM|senoid_60hz|divisor|Add0~1\) # (GND)))
-- \controlador_PWM|senoid_60hz|divisor|Add0~3\ = CARRY((!\controlador_PWM|senoid_60hz|divisor|Add0~1\) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(1),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~1\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~2_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~3\);

-- Location: FF_X57_Y1_N11
\controlador_PWM|senoid_60hz|divisor|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \controlador_PWM|senoid_60hz|divisor|Add0~2_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(1));

-- Location: LCCOMB_X57_Y1_N8
\controlador_PWM|senoid_60hz|divisor|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\ = (\controlador_PWM|senoid_60hz|divisor|Equal0~2_combout\ & (!\controlador_PWM|senoid_60hz|divisor|clk_count\(2) & (\controlador_PWM|senoid_60hz|divisor|clk_count\(1) & 
-- \controlador_PWM|senoid_60hz|divisor|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|Equal0~2_combout\,
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(2),
	datac => \controlador_PWM|senoid_60hz|divisor|clk_count\(1),
	datad => \controlador_PWM|senoid_60hz|divisor|clk_count\(4),
	combout => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y1_N6
\controlador_PWM|senoid_60hz|divisor|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~4_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(2) & (\controlador_PWM|senoid_60hz|divisor|Add0~3\ $ (GND))) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(2) & 
-- (!\controlador_PWM|senoid_60hz|divisor|Add0~3\ & VCC))
-- \controlador_PWM|senoid_60hz|divisor|Add0~5\ = CARRY((\controlador_PWM|senoid_60hz|divisor|clk_count\(2) & !\controlador_PWM|senoid_60hz|divisor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(2),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~3\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~4_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~5\);

-- Location: LCCOMB_X57_Y1_N14
\controlador_PWM|senoid_60hz|divisor|clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~2_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~4_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Add0~4_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~2_combout\);

-- Location: FF_X57_Y1_N15
\controlador_PWM|senoid_60hz|divisor|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~2_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(2));

-- Location: LCCOMB_X56_Y1_N8
\controlador_PWM|senoid_60hz|divisor|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~6_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(3) & (!\controlador_PWM|senoid_60hz|divisor|Add0~5\)) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(3) & 
-- ((\controlador_PWM|senoid_60hz|divisor|Add0~5\) # (GND)))
-- \controlador_PWM|senoid_60hz|divisor|Add0~7\ = CARRY((!\controlador_PWM|senoid_60hz|divisor|Add0~5\) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(3),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~5\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~6_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~7\);

-- Location: LCCOMB_X57_Y1_N28
\controlador_PWM|senoid_60hz|divisor|clk_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~6_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~6_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|Add0~6_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~6_combout\);

-- Location: FF_X57_Y1_N29
\controlador_PWM|senoid_60hz|divisor|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~6_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(3));

-- Location: LCCOMB_X56_Y1_N10
\controlador_PWM|senoid_60hz|divisor|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~8_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(4) & (\controlador_PWM|senoid_60hz|divisor|Add0~7\ $ (GND))) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(4) & 
-- (!\controlador_PWM|senoid_60hz|divisor|Add0~7\ & VCC))
-- \controlador_PWM|senoid_60hz|divisor|Add0~9\ = CARRY((\controlador_PWM|senoid_60hz|divisor|clk_count\(4) & !\controlador_PWM|senoid_60hz|divisor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(4),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~7\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~8_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~9\);

-- Location: LCCOMB_X57_Y1_N12
\controlador_PWM|senoid_60hz|divisor|clk_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~3_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~8_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|Add0~8_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~3_combout\);

-- Location: FF_X57_Y1_N13
\controlador_PWM|senoid_60hz|divisor|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~3_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(4));

-- Location: LCCOMB_X56_Y1_N12
\controlador_PWM|senoid_60hz|divisor|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~10_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(5) & (!\controlador_PWM|senoid_60hz|divisor|Add0~9\)) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(5) & 
-- ((\controlador_PWM|senoid_60hz|divisor|Add0~9\) # (GND)))
-- \controlador_PWM|senoid_60hz|divisor|Add0~11\ = CARRY((!\controlador_PWM|senoid_60hz|divisor|Add0~9\) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(5),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~9\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~10_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~11\);

-- Location: LCCOMB_X57_Y1_N22
\controlador_PWM|senoid_60hz|divisor|clk_count[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count[5]~feeder_combout\ = \controlador_PWM|senoid_60hz|divisor|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlador_PWM|senoid_60hz|divisor|Add0~10_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count[5]~feeder_combout\);

-- Location: FF_X57_Y1_N23
\controlador_PWM|senoid_60hz|divisor|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count[5]~feeder_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(5));

-- Location: LCCOMB_X57_Y1_N0
\controlador_PWM|senoid_60hz|divisor|clk_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_count~5_combout\ = (\controlador_PWM|senoid_60hz|divisor|Add0~12_combout\ & ((!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|Add0~12_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datad => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_count~5_combout\);

-- Location: FF_X57_Y1_N1
\controlador_PWM|senoid_60hz|divisor|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_count~5_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(6));

-- Location: LCCOMB_X56_Y1_N24
\controlador_PWM|senoid_60hz|divisor|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~22_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(11) & (!\controlador_PWM|senoid_60hz|divisor|Add0~21\)) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(11) & 
-- ((\controlador_PWM|senoid_60hz|divisor|Add0~21\) # (GND)))
-- \controlador_PWM|senoid_60hz|divisor|Add0~23\ = CARRY((!\controlador_PWM|senoid_60hz|divisor|Add0~21\) # (!\controlador_PWM|senoid_60hz|divisor|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(11),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~21\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~22_combout\,
	cout => \controlador_PWM|senoid_60hz|divisor|Add0~23\);

-- Location: FF_X57_Y1_N31
\controlador_PWM|senoid_60hz|divisor|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \controlador_PWM|senoid_60hz|divisor|Add0~22_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(11));

-- Location: LCCOMB_X56_Y1_N26
\controlador_PWM|senoid_60hz|divisor|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Add0~24_combout\ = \controlador_PWM|senoid_60hz|divisor|Add0~23\ $ (!\controlador_PWM|senoid_60hz|divisor|clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlador_PWM|senoid_60hz|divisor|clk_count\(12),
	cin => \controlador_PWM|senoid_60hz|divisor|Add0~23\,
	combout => \controlador_PWM|senoid_60hz|divisor|Add0~24_combout\);

-- Location: FF_X57_Y1_N19
\controlador_PWM|senoid_60hz|divisor|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \controlador_PWM|senoid_60hz|divisor|Add0~24_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_count\(12));

-- Location: LCCOMB_X57_Y1_N30
\controlador_PWM|senoid_60hz|divisor|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Equal0~0_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(6) & (\controlador_PWM|senoid_60hz|divisor|clk_count\(7) & (!\controlador_PWM|senoid_60hz|divisor|clk_count\(11) & 
-- !\controlador_PWM|senoid_60hz|divisor|clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(6),
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(7),
	datac => \controlador_PWM|senoid_60hz|divisor|clk_count\(11),
	datad => \controlador_PWM|senoid_60hz|divisor|clk_count\(12),
	combout => \controlador_PWM|senoid_60hz|divisor|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y1_N10
\controlador_PWM|senoid_60hz|divisor|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\ = (\controlador_PWM|senoid_60hz|divisor|Equal0~0_combout\ & (\controlador_PWM|senoid_60hz|divisor|clk_count\(3) & \controlador_PWM|senoid_60hz|divisor|clk_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|Equal0~0_combout\,
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(3),
	datad => \controlador_PWM|senoid_60hz|divisor|clk_count\(0),
	combout => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y1_N0
\controlador_PWM|senoid_60hz|divisor|clk_out_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_out_reg~0_combout\ = (!\controlador_PWM|senoid_60hz|divisor|clk_count\(8) & (\controlador_PWM|senoid_60hz|divisor|clk_count\(5) & (!\controlador_PWM|senoid_60hz|divisor|clk_count\(10) & 
-- \controlador_PWM|senoid_60hz|divisor|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(8),
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(5),
	datac => \controlador_PWM|senoid_60hz|divisor|clk_count\(10),
	datad => \controlador_PWM|senoid_60hz|divisor|clk_count\(9),
	combout => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~0_combout\);

-- Location: LCCOMB_X56_Y1_N28
\controlador_PWM|senoid_60hz|divisor|clk_out_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_out_reg~1_combout\ = (\controlador_PWM|senoid_60hz|divisor|clk_count\(2) & (!\controlador_PWM|senoid_60hz|divisor|clk_count\(4) & (!\controlador_PWM|senoid_60hz|divisor|clk_count\(1) & 
-- \controlador_PWM|senoid_60hz|divisor|clk_out_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|clk_count\(2),
	datab => \controlador_PWM|senoid_60hz|divisor|clk_count\(4),
	datac => \controlador_PWM|senoid_60hz|divisor|clk_count\(1),
	datad => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~0_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~1_combout\);

-- Location: LCCOMB_X57_Y1_N6
\controlador_PWM|senoid_60hz|divisor|clk_out_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|divisor|clk_out_reg~2_combout\ = (\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\ & (!\controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\ & ((\controlador_PWM|senoid_60hz|divisor|clk_out_reg~q\) # 
-- (\controlador_PWM|senoid_60hz|divisor|clk_out_reg~1_combout\)))) # (!\controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\ & (((\controlador_PWM|senoid_60hz|divisor|clk_out_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|divisor|Equal0~1_combout\,
	datab => \controlador_PWM|senoid_60hz|divisor|Equal0~3_combout\,
	datac => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~q\,
	datad => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~1_combout\,
	combout => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~2_combout\);

-- Location: FF_X57_Y1_N7
\controlador_PWM|senoid_60hz|divisor|clk_out_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|PLL27MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~2_combout\,
	clrn => \reset_init_blk_50|ALT_INV_rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~q\);

-- Location: CLKCTRL_G17
\controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y4_N10
\controlador_PWM|senoid_60hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~0_combout\ = \controlador_PWM|senoid_60hz|counter\(0) $ (VCC)
-- \controlador_PWM|senoid_60hz|Add0~1\ = CARRY(\controlador_PWM|senoid_60hz|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(0),
	datad => VCC,
	combout => \controlador_PWM|senoid_60hz|Add0~0_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~1\);

-- Location: FF_X50_Y4_N11
\controlador_PWM|senoid_60hz|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(0));

-- Location: LCCOMB_X50_Y4_N12
\controlador_PWM|senoid_60hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~2_combout\ = (\controlador_PWM|senoid_60hz|counter\(1) & (!\controlador_PWM|senoid_60hz|Add0~1\)) # (!\controlador_PWM|senoid_60hz|counter\(1) & ((\controlador_PWM|senoid_60hz|Add0~1\) # (GND)))
-- \controlador_PWM|senoid_60hz|Add0~3\ = CARRY((!\controlador_PWM|senoid_60hz|Add0~1\) # (!\controlador_PWM|senoid_60hz|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(1),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~1\,
	combout => \controlador_PWM|senoid_60hz|Add0~2_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~3\);

-- Location: FF_X50_Y4_N13
\controlador_PWM|senoid_60hz|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(1));

-- Location: LCCOMB_X50_Y4_N14
\controlador_PWM|senoid_60hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~4_combout\ = (\controlador_PWM|senoid_60hz|counter\(2) & (\controlador_PWM|senoid_60hz|Add0~3\ $ (GND))) # (!\controlador_PWM|senoid_60hz|counter\(2) & (!\controlador_PWM|senoid_60hz|Add0~3\ & VCC))
-- \controlador_PWM|senoid_60hz|Add0~5\ = CARRY((\controlador_PWM|senoid_60hz|counter\(2) & !\controlador_PWM|senoid_60hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|counter\(2),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~3\,
	combout => \controlador_PWM|senoid_60hz|Add0~4_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~5\);

-- Location: LCCOMB_X50_Y4_N16
\controlador_PWM|senoid_60hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~6_combout\ = (\controlador_PWM|senoid_60hz|counter\(3) & (!\controlador_PWM|senoid_60hz|Add0~5\)) # (!\controlador_PWM|senoid_60hz|counter\(3) & ((\controlador_PWM|senoid_60hz|Add0~5\) # (GND)))
-- \controlador_PWM|senoid_60hz|Add0~7\ = CARRY((!\controlador_PWM|senoid_60hz|Add0~5\) # (!\controlador_PWM|senoid_60hz|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(3),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~5\,
	combout => \controlador_PWM|senoid_60hz|Add0~6_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~7\);

-- Location: LCCOMB_X50_Y4_N18
\controlador_PWM|senoid_60hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~8_combout\ = (\controlador_PWM|senoid_60hz|counter\(4) & (\controlador_PWM|senoid_60hz|Add0~7\ $ (GND))) # (!\controlador_PWM|senoid_60hz|counter\(4) & (!\controlador_PWM|senoid_60hz|Add0~7\ & VCC))
-- \controlador_PWM|senoid_60hz|Add0~9\ = CARRY((\controlador_PWM|senoid_60hz|counter\(4) & !\controlador_PWM|senoid_60hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|counter\(4),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~7\,
	combout => \controlador_PWM|senoid_60hz|Add0~8_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~9\);

-- Location: FF_X50_Y4_N19
\controlador_PWM|senoid_60hz|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(4));

-- Location: LCCOMB_X50_Y4_N20
\controlador_PWM|senoid_60hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~10_combout\ = (\controlador_PWM|senoid_60hz|counter\(5) & (!\controlador_PWM|senoid_60hz|Add0~9\)) # (!\controlador_PWM|senoid_60hz|counter\(5) & ((\controlador_PWM|senoid_60hz|Add0~9\) # (GND)))
-- \controlador_PWM|senoid_60hz|Add0~11\ = CARRY((!\controlador_PWM|senoid_60hz|Add0~9\) # (!\controlador_PWM|senoid_60hz|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|counter\(5),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~9\,
	combout => \controlador_PWM|senoid_60hz|Add0~10_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~11\);

-- Location: LCCOMB_X50_Y4_N0
\controlador_PWM|senoid_60hz|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|counter~2_combout\ = (\controlador_PWM|senoid_60hz|Add0~10_combout\ & (((!\controlador_PWM|senoid_60hz|Equal0~0_combout\) # (!\controlador_PWM|senoid_60hz|Equal0~1_combout\)) # (!\controlador_PWM|senoid_60hz|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(8),
	datab => \controlador_PWM|senoid_60hz|Equal0~1_combout\,
	datac => \controlador_PWM|senoid_60hz|Equal0~0_combout\,
	datad => \controlador_PWM|senoid_60hz|Add0~10_combout\,
	combout => \controlador_PWM|senoid_60hz|counter~2_combout\);

-- Location: FF_X50_Y4_N1
\controlador_PWM|senoid_60hz|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(5));

-- Location: LCCOMB_X50_Y4_N22
\controlador_PWM|senoid_60hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~12_combout\ = (\controlador_PWM|senoid_60hz|counter\(6) & (\controlador_PWM|senoid_60hz|Add0~11\ $ (GND))) # (!\controlador_PWM|senoid_60hz|counter\(6) & (!\controlador_PWM|senoid_60hz|Add0~11\ & VCC))
-- \controlador_PWM|senoid_60hz|Add0~13\ = CARRY((\controlador_PWM|senoid_60hz|counter\(6) & !\controlador_PWM|senoid_60hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(6),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~11\,
	combout => \controlador_PWM|senoid_60hz|Add0~12_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~13\);

-- Location: FF_X50_Y4_N23
\controlador_PWM|senoid_60hz|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(6));

-- Location: LCCOMB_X50_Y4_N24
\controlador_PWM|senoid_60hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~14_combout\ = (\controlador_PWM|senoid_60hz|counter\(7) & (!\controlador_PWM|senoid_60hz|Add0~13\)) # (!\controlador_PWM|senoid_60hz|counter\(7) & ((\controlador_PWM|senoid_60hz|Add0~13\) # (GND)))
-- \controlador_PWM|senoid_60hz|Add0~15\ = CARRY((!\controlador_PWM|senoid_60hz|Add0~13\) # (!\controlador_PWM|senoid_60hz|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|counter\(7),
	datad => VCC,
	cin => \controlador_PWM|senoid_60hz|Add0~13\,
	combout => \controlador_PWM|senoid_60hz|Add0~14_combout\,
	cout => \controlador_PWM|senoid_60hz|Add0~15\);

-- Location: FF_X50_Y4_N25
\controlador_PWM|senoid_60hz|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(7));

-- Location: LCCOMB_X50_Y4_N28
\controlador_PWM|senoid_60hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Equal0~1_combout\ = (!\controlador_PWM|senoid_60hz|counter\(6) & (!\controlador_PWM|senoid_60hz|counter\(7) & (\controlador_PWM|senoid_60hz|counter\(0) & \controlador_PWM|senoid_60hz|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(6),
	datab => \controlador_PWM|senoid_60hz|counter\(7),
	datac => \controlador_PWM|senoid_60hz|counter\(0),
	datad => \controlador_PWM|senoid_60hz|counter\(5),
	combout => \controlador_PWM|senoid_60hz|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y4_N30
\controlador_PWM|senoid_60hz|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|counter~1_combout\ = (\controlador_PWM|senoid_60hz|Add0~6_combout\ & (((!\controlador_PWM|senoid_60hz|Equal0~0_combout\) # (!\controlador_PWM|senoid_60hz|Equal0~1_combout\)) # (!\controlador_PWM|senoid_60hz|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(8),
	datab => \controlador_PWM|senoid_60hz|Equal0~1_combout\,
	datac => \controlador_PWM|senoid_60hz|Equal0~0_combout\,
	datad => \controlador_PWM|senoid_60hz|Add0~6_combout\,
	combout => \controlador_PWM|senoid_60hz|counter~1_combout\);

-- Location: FF_X50_Y4_N31
\controlador_PWM|senoid_60hz|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(3));

-- Location: LCCOMB_X50_Y4_N4
\controlador_PWM|senoid_60hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Equal0~0_combout\ = (!\controlador_PWM|senoid_60hz|counter\(2) & (\controlador_PWM|senoid_60hz|counter\(3) & (\controlador_PWM|senoid_60hz|counter\(1) & !\controlador_PWM|senoid_60hz|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(2),
	datab => \controlador_PWM|senoid_60hz|counter\(3),
	datac => \controlador_PWM|senoid_60hz|counter\(1),
	datad => \controlador_PWM|senoid_60hz|counter\(4),
	combout => \controlador_PWM|senoid_60hz|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y4_N26
\controlador_PWM|senoid_60hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|Add0~16_combout\ = \controlador_PWM|senoid_60hz|Add0~15\ $ (!\controlador_PWM|senoid_60hz|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlador_PWM|senoid_60hz|counter\(8),
	cin => \controlador_PWM|senoid_60hz|Add0~15\,
	combout => \controlador_PWM|senoid_60hz|Add0~16_combout\);

-- Location: LCCOMB_X50_Y4_N6
\controlador_PWM|senoid_60hz|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|counter~3_combout\ = (\controlador_PWM|senoid_60hz|Add0~16_combout\ & (((!\controlador_PWM|senoid_60hz|counter\(8)) # (!\controlador_PWM|senoid_60hz|Equal0~1_combout\)) # (!\controlador_PWM|senoid_60hz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|Equal0~0_combout\,
	datab => \controlador_PWM|senoid_60hz|Equal0~1_combout\,
	datac => \controlador_PWM|senoid_60hz|counter\(8),
	datad => \controlador_PWM|senoid_60hz|Add0~16_combout\,
	combout => \controlador_PWM|senoid_60hz|counter~3_combout\);

-- Location: FF_X50_Y4_N7
\controlador_PWM|senoid_60hz|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(8));

-- Location: LCCOMB_X50_Y4_N8
\controlador_PWM|senoid_60hz|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|senoid_60hz|counter~0_combout\ = (\controlador_PWM|senoid_60hz|Add0~4_combout\ & (((!\controlador_PWM|senoid_60hz|Equal0~1_combout\) # (!\controlador_PWM|senoid_60hz|Equal0~0_combout\)) # (!\controlador_PWM|senoid_60hz|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|counter\(8),
	datab => \controlador_PWM|senoid_60hz|Equal0~0_combout\,
	datac => \controlador_PWM|senoid_60hz|Add0~4_combout\,
	datad => \controlador_PWM|senoid_60hz|Equal0~1_combout\,
	combout => \controlador_PWM|senoid_60hz|counter~0_combout\);

-- Location: FF_X50_Y4_N9
\controlador_PWM|senoid_60hz|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controlador_PWM|senoid_60hz|divisor|clk_out_reg~clkctrl_outclk\,
	d => \controlador_PWM|senoid_60hz|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|senoid_60hz|counter\(2));

-- Location: M9K_X51_Y4_N0
\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FBC0FDE03F340FBB03EA80F9903E200F7703D980F5603D140F3403C8C0F1303C0C0EF203B880ED203B080EB203A8C0E9303A100E75039980E57039240E3A038B00E1E038400E03037D40DE80376C0DCF037080DB6036A80D9F0364C0D88035F40D73035A40D5F035540D4C0350C0D3A034C40D29034880D1A0344C0D0C034180CFF033E80CF4033BC0CEA033980CE2033780CDB0335C0CD5033480CD00333C0CCE03",
	mem_init1 => X"3340CCC033300CCC033340CCE0333C0CD0033480CD50335C0CDB033780CE2033980CEA033BC0CF4033E80CFF034180D0C0344C0D1A034880D29034C40D3A0350C0D4C035540D5F035A40D73035F40D880364C0D9F036A80DB6037080DCF0376C0DE8037D40E03038400E1E038B00E3A039240E57039980E7503A100E9303A8C0EB203B080ED203B880EF203C0C0F1303C8C0F3403D140F5603D980F7703E200F9903EA80FBB03F340FDE03FBC0000000440022000CC0045001580067001E000890026800AA002EC00CC0037400ED003F4010E00478012E004F8014E00574016D005F0018B0066801A9006DC01C60075001E2007C001FD0082C02180089402310",
	mem_init0 => X"08F8024A009580261009B4027800A0C028D00A5C02A100AAC02B400AF402C600B3C02D700B7802E600BB402F400BE8030100C18030C00C44031600C68031E00C88032500CA4032B00CB8033000CC4033200CCC033400CD0033400CCC033200CC4033000CB8032B00CA4032500C88031E00C68031600C44030C00C18030100BE802F400BB402E600B7802D700B3C02C600AF402B400AAC02A100A5C028D00A0C0278009B4026100958024A008F802310089402180082C01FD007C001E20075001C6006DC01A900668018B005F0016D00574014E004F8012E00478010E003F400ED0037400CC002EC00AA002680089001E00067001580045000CC0022000440000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "senoide.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlador_PWM:controlador_PWM|gerador:senoid_60hz|senoid:senoid_60Hz|altsyncram:altsyncram_component|altsyncram_ec91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	portaaddr => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y5_N8
\controlador_PWM|portador_triangular|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~0_combout\ = \controlador_PWM|portador_triangular|counter\(0) $ (VCC)
-- \controlador_PWM|portador_triangular|Add0~1\ = CARRY(\controlador_PWM|portador_triangular|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(0),
	datad => VCC,
	combout => \controlador_PWM|portador_triangular|Add0~0_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~1\);

-- Location: LCCOMB_X53_Y5_N30
\controlador_PWM|portador_triangular|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~35_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~0_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~35_combout\);

-- Location: FF_X52_Y5_N13
\controlador_PWM|portador_triangular|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controlador_PWM|portador_triangular|Add0~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(0));

-- Location: LCCOMB_X52_Y5_N10
\controlador_PWM|portador_triangular|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~2_combout\ = (\controlador_PWM|portador_triangular|counter\(1) & (!\controlador_PWM|portador_triangular|Add0~1\)) # (!\controlador_PWM|portador_triangular|counter\(1) & 
-- ((\controlador_PWM|portador_triangular|Add0~1\) # (GND)))
-- \controlador_PWM|portador_triangular|Add0~3\ = CARRY((!\controlador_PWM|portador_triangular|Add0~1\) # (!\controlador_PWM|portador_triangular|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(1),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~1\,
	combout => \controlador_PWM|portador_triangular|Add0~2_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~3\);

-- Location: LCCOMB_X53_Y5_N20
\controlador_PWM|portador_triangular|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~34_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~2_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~34_combout\);

-- Location: FF_X52_Y5_N27
\controlador_PWM|portador_triangular|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controlador_PWM|portador_triangular|Add0~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(1));

-- Location: LCCOMB_X52_Y5_N12
\controlador_PWM|portador_triangular|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~4_combout\ = (\controlador_PWM|portador_triangular|counter\(2) & (\controlador_PWM|portador_triangular|Add0~3\ $ (GND))) # (!\controlador_PWM|portador_triangular|counter\(2) & 
-- (!\controlador_PWM|portador_triangular|Add0~3\ & VCC))
-- \controlador_PWM|portador_triangular|Add0~5\ = CARRY((\controlador_PWM|portador_triangular|counter\(2) & !\controlador_PWM|portador_triangular|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(2),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~3\,
	combout => \controlador_PWM|portador_triangular|Add0~4_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~5\);

-- Location: LCCOMB_X53_Y5_N10
\controlador_PWM|portador_triangular|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~33_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~4_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~33_combout\);

-- Location: FF_X52_Y5_N11
\controlador_PWM|portador_triangular|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controlador_PWM|portador_triangular|Add0~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(2));

-- Location: LCCOMB_X52_Y5_N14
\controlador_PWM|portador_triangular|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~6_combout\ = (\controlador_PWM|portador_triangular|counter\(3) & (!\controlador_PWM|portador_triangular|Add0~5\)) # (!\controlador_PWM|portador_triangular|counter\(3) & 
-- ((\controlador_PWM|portador_triangular|Add0~5\) # (GND)))
-- \controlador_PWM|portador_triangular|Add0~7\ = CARRY((!\controlador_PWM|portador_triangular|Add0~5\) # (!\controlador_PWM|portador_triangular|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(3),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~5\,
	combout => \controlador_PWM|portador_triangular|Add0~6_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~7\);

-- Location: LCCOMB_X52_Y5_N6
\controlador_PWM|portador_triangular|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~32_combout\ = (\controlador_PWM|portador_triangular|Add0~6_combout\ & !\controlador_PWM|portador_triangular|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|Add0~6_combout\,
	datad => \controlador_PWM|portador_triangular|always0~0_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~32_combout\);

-- Location: FF_X52_Y5_N7
\controlador_PWM|portador_triangular|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|portador_triangular|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(3));

-- Location: LCCOMB_X52_Y5_N16
\controlador_PWM|portador_triangular|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~8_combout\ = (\controlador_PWM|portador_triangular|counter\(4) & (\controlador_PWM|portador_triangular|Add0~7\ $ (GND))) # (!\controlador_PWM|portador_triangular|counter\(4) & 
-- (!\controlador_PWM|portador_triangular|Add0~7\ & VCC))
-- \controlador_PWM|portador_triangular|Add0~9\ = CARRY((\controlador_PWM|portador_triangular|counter\(4) & !\controlador_PWM|portador_triangular|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(4),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~7\,
	combout => \controlador_PWM|portador_triangular|Add0~8_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~9\);

-- Location: LCCOMB_X53_Y5_N12
\controlador_PWM|portador_triangular|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~31_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|always0~0_combout\,
	datac => \controlador_PWM|portador_triangular|Add0~8_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~31_combout\);

-- Location: FF_X52_Y5_N15
\controlador_PWM|portador_triangular|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controlador_PWM|portador_triangular|Add0~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(4));

-- Location: LCCOMB_X52_Y5_N18
\controlador_PWM|portador_triangular|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~10_combout\ = (\controlador_PWM|portador_triangular|counter\(5) & (!\controlador_PWM|portador_triangular|Add0~9\)) # (!\controlador_PWM|portador_triangular|counter\(5) & 
-- ((\controlador_PWM|portador_triangular|Add0~9\) # (GND)))
-- \controlador_PWM|portador_triangular|Add0~11\ = CARRY((!\controlador_PWM|portador_triangular|Add0~9\) # (!\controlador_PWM|portador_triangular|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(5),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~9\,
	combout => \controlador_PWM|portador_triangular|Add0~10_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~11\);

-- Location: LCCOMB_X53_Y5_N14
\controlador_PWM|portador_triangular|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~30_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~10_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~30_combout\);

-- Location: FF_X52_Y5_N9
\controlador_PWM|portador_triangular|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controlador_PWM|portador_triangular|Add0~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(5));

-- Location: LCCOMB_X52_Y4_N30
\controlador_PWM|portador_triangular|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Equal0~1_combout\ = (\controlador_PWM|portador_triangular|counter\(2) & (\controlador_PWM|portador_triangular|counter\(3) & (\controlador_PWM|portador_triangular|counter\(4) & 
-- \controlador_PWM|portador_triangular|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(2),
	datab => \controlador_PWM|portador_triangular|counter\(3),
	datac => \controlador_PWM|portador_triangular|counter\(4),
	datad => \controlador_PWM|portador_triangular|counter\(5),
	combout => \controlador_PWM|portador_triangular|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y5_N20
\controlador_PWM|portador_triangular|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~12_combout\ = (\controlador_PWM|portador_triangular|counter\(6) & (\controlador_PWM|portador_triangular|Add0~11\ $ (GND))) # (!\controlador_PWM|portador_triangular|counter\(6) & 
-- (!\controlador_PWM|portador_triangular|Add0~11\ & VCC))
-- \controlador_PWM|portador_triangular|Add0~13\ = CARRY((\controlador_PWM|portador_triangular|counter\(6) & !\controlador_PWM|portador_triangular|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(6),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~11\,
	combout => \controlador_PWM|portador_triangular|Add0~12_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~13\);

-- Location: LCCOMB_X52_Y5_N4
\controlador_PWM|portador_triangular|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~29_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~12_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~29_combout\);

-- Location: FF_X52_Y5_N5
\controlador_PWM|portador_triangular|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|portador_triangular|Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(6));

-- Location: LCCOMB_X52_Y5_N22
\controlador_PWM|portador_triangular|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~14_combout\ = (\controlador_PWM|portador_triangular|counter\(7) & (!\controlador_PWM|portador_triangular|Add0~13\)) # (!\controlador_PWM|portador_triangular|counter\(7) & 
-- ((\controlador_PWM|portador_triangular|Add0~13\) # (GND)))
-- \controlador_PWM|portador_triangular|Add0~15\ = CARRY((!\controlador_PWM|portador_triangular|Add0~13\) # (!\controlador_PWM|portador_triangular|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(7),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~13\,
	combout => \controlador_PWM|portador_triangular|Add0~14_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~15\);

-- Location: LCCOMB_X52_Y5_N2
\controlador_PWM|portador_triangular|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~28_combout\ = (\controlador_PWM|portador_triangular|Add0~14_combout\ & !\controlador_PWM|portador_triangular|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|Add0~14_combout\,
	datad => \controlador_PWM|portador_triangular|always0~0_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~28_combout\);

-- Location: FF_X52_Y5_N3
\controlador_PWM|portador_triangular|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|portador_triangular|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(7));

-- Location: LCCOMB_X52_Y5_N24
\controlador_PWM|portador_triangular|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~16_combout\ = (\controlador_PWM|portador_triangular|counter\(8) & (\controlador_PWM|portador_triangular|Add0~15\ $ (GND))) # (!\controlador_PWM|portador_triangular|counter\(8) & 
-- (!\controlador_PWM|portador_triangular|Add0~15\ & VCC))
-- \controlador_PWM|portador_triangular|Add0~17\ = CARRY((\controlador_PWM|portador_triangular|counter\(8) & !\controlador_PWM|portador_triangular|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(8),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~15\,
	combout => \controlador_PWM|portador_triangular|Add0~16_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~17\);

-- Location: LCCOMB_X53_Y5_N0
\controlador_PWM|portador_triangular|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~27_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & \controlador_PWM|portador_triangular|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~16_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~27_combout\);

-- Location: FF_X52_Y5_N17
\controlador_PWM|portador_triangular|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \controlador_PWM|portador_triangular|Add0~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(8));

-- Location: LCCOMB_X52_Y5_N26
\controlador_PWM|portador_triangular|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~18_combout\ = (\controlador_PWM|portador_triangular|counter\(9) & (!\controlador_PWM|portador_triangular|Add0~17\)) # (!\controlador_PWM|portador_triangular|counter\(9) & 
-- ((\controlador_PWM|portador_triangular|Add0~17\) # (GND)))
-- \controlador_PWM|portador_triangular|Add0~19\ = CARRY((!\controlador_PWM|portador_triangular|Add0~17\) # (!\controlador_PWM|portador_triangular|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(9),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~17\,
	combout => \controlador_PWM|portador_triangular|Add0~18_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~19\);

-- Location: LCCOMB_X52_Y5_N0
\controlador_PWM|portador_triangular|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~26_combout\ = (\controlador_PWM|portador_triangular|Add0~18_combout\ & !\controlador_PWM|portador_triangular|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|Add0~18_combout\,
	datad => \controlador_PWM|portador_triangular|always0~0_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~26_combout\);

-- Location: FF_X52_Y5_N1
\controlador_PWM|portador_triangular|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|portador_triangular|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(9));

-- Location: LCCOMB_X52_Y5_N28
\controlador_PWM|portador_triangular|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~20_combout\ = (\controlador_PWM|portador_triangular|counter\(10) & (!\controlador_PWM|portador_triangular|Add0~19\ & VCC)) # (!\controlador_PWM|portador_triangular|counter\(10) & 
-- (\controlador_PWM|portador_triangular|Add0~19\ $ (GND)))
-- \controlador_PWM|portador_triangular|Add0~21\ = CARRY((!\controlador_PWM|portador_triangular|counter\(10) & !\controlador_PWM|portador_triangular|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|portador_triangular|counter\(10),
	datad => VCC,
	cin => \controlador_PWM|portador_triangular|Add0~19\,
	combout => \controlador_PWM|portador_triangular|Add0~20_combout\,
	cout => \controlador_PWM|portador_triangular|Add0~21\);

-- Location: LCCOMB_X53_Y5_N22
\controlador_PWM|portador_triangular|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~25_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & !\controlador_PWM|portador_triangular|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~20_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~25_combout\);

-- Location: FF_X53_Y5_N23
\controlador_PWM|portador_triangular|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|portador_triangular|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(10));

-- Location: LCCOMB_X52_Y4_N0
\controlador_PWM|portador_triangular|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Equal0~2_combout\ = (\controlador_PWM|portador_triangular|counter\(11) & (\controlador_PWM|portador_triangular|counter\(1) & (\controlador_PWM|portador_triangular|counter\(0) & 
-- \controlador_PWM|portador_triangular|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(11),
	datab => \controlador_PWM|portador_triangular|counter\(1),
	datac => \controlador_PWM|portador_triangular|counter\(0),
	datad => \controlador_PWM|portador_triangular|counter\(10),
	combout => \controlador_PWM|portador_triangular|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y4_N28
\controlador_PWM|portador_triangular|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Equal0~0_combout\ = (\controlador_PWM|portador_triangular|counter\(9) & (\controlador_PWM|portador_triangular|counter\(8) & (\controlador_PWM|portador_triangular|counter\(6) & 
-- \controlador_PWM|portador_triangular|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(9),
	datab => \controlador_PWM|portador_triangular|counter\(8),
	datac => \controlador_PWM|portador_triangular|counter\(6),
	datad => \controlador_PWM|portador_triangular|counter\(7),
	combout => \controlador_PWM|portador_triangular|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y4_N2
\controlador_PWM|portador_triangular|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|always0~0_combout\ = (\reset_init_blk_50|rst_reg~q\) # ((\controlador_PWM|portador_triangular|Equal0~1_combout\ & (\controlador_PWM|portador_triangular|Equal0~2_combout\ & 
-- \controlador_PWM|portador_triangular|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|Equal0~1_combout\,
	datab => \controlador_PWM|portador_triangular|Equal0~2_combout\,
	datac => \reset_init_blk_50|rst_reg~q\,
	datad => \controlador_PWM|portador_triangular|Equal0~0_combout\,
	combout => \controlador_PWM|portador_triangular|always0~0_combout\);

-- Location: LCCOMB_X52_Y5_N30
\controlador_PWM|portador_triangular|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~22_combout\ = \controlador_PWM|portador_triangular|Add0~21\ $ (!\controlador_PWM|portador_triangular|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlador_PWM|portador_triangular|counter\(11),
	cin => \controlador_PWM|portador_triangular|Add0~21\,
	combout => \controlador_PWM|portador_triangular|Add0~22_combout\);

-- Location: LCCOMB_X53_Y5_N16
\controlador_PWM|portador_triangular|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|portador_triangular|Add0~24_combout\ = (!\controlador_PWM|portador_triangular|always0~0_combout\ & !\controlador_PWM|portador_triangular|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|portador_triangular|always0~0_combout\,
	datad => \controlador_PWM|portador_triangular|Add0~22_combout\,
	combout => \controlador_PWM|portador_triangular|Add0~24_combout\);

-- Location: FF_X53_Y5_N17
\controlador_PWM|portador_triangular|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|portador_triangular|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|portador_triangular|counter\(11));

-- Location: LCCOMB_X52_Y4_N4
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((!\controlador_PWM|portador_triangular|counter\(0) & \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(0),
	datab => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X52_Y4_N6
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\controlador_PWM|portador_triangular|counter\(1) & ((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1_cout\) # 
-- (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(1)))) # (!\controlador_PWM|portador_triangular|counter\(1) & (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(1) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(1),
	datab => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X52_Y4_N8
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(2) & 
-- ((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3_cout\) # (!\controlador_PWM|portador_triangular|counter\(2)))) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(2) & 
-- (!\controlador_PWM|portador_triangular|counter\(2) & !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(2),
	datab => \controlador_PWM|portador_triangular|counter\(2),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X52_Y4_N10
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(3) & (\controlador_PWM|portador_triangular|counter\(3) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5_cout\)) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(3) & ((\controlador_PWM|portador_triangular|counter\(3)) # 
-- (!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(3),
	datab => \controlador_PWM|portador_triangular|counter\(3),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X52_Y4_N12
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(4) & 
-- ((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7_cout\) # (!\controlador_PWM|portador_triangular|counter\(4)))) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(4) & 
-- (!\controlador_PWM|portador_triangular|counter\(4) & !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(4),
	datab => \controlador_PWM|portador_triangular|counter\(4),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X52_Y4_N14
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(5) & (\controlador_PWM|portador_triangular|counter\(5) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9_cout\)) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(5) & ((\controlador_PWM|portador_triangular|counter\(5)) # 
-- (!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(5),
	datab => \controlador_PWM|portador_triangular|counter\(5),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X52_Y4_N16
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\controlador_PWM|portador_triangular|counter\(6) & (\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(6) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11_cout\)) # (!\controlador_PWM|portador_triangular|counter\(6) & ((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(6)) # 
-- (!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(6),
	datab => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X52_Y4_N18
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(7) & (\controlador_PWM|portador_triangular|counter\(7) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13_cout\)) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(7) & ((\controlador_PWM|portador_triangular|counter\(7)) # 
-- (!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(7),
	datab => \controlador_PWM|portador_triangular|counter\(7),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X52_Y4_N20
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(8) & 
-- ((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15_cout\) # (!\controlador_PWM|portador_triangular|counter\(8)))) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(8) & 
-- (!\controlador_PWM|portador_triangular|counter\(8) & !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(8),
	datab => \controlador_PWM|portador_triangular|counter\(8),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X52_Y4_N22
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\controlador_PWM|portador_triangular|counter\(9) & ((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17_cout\) # 
-- (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(9)))) # (!\controlador_PWM|portador_triangular|counter\(9) & (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(9) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(9),
	datab => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(9),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X52_Y4_N24
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\controlador_PWM|portador_triangular|counter\(10) & ((\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(10)) # 
-- (!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19_cout\))) # (!\controlador_PWM|portador_triangular|counter\(10) & (\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(10) & 
-- !\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|portador_triangular|counter\(10),
	datab => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(10),
	datad => VCC,
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X52_Y4_N26
\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\ = (\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(11) & 
-- ((\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21_cout\) # (\controlador_PWM|portador_triangular|counter\(11)))) # (!\controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(11) & 
-- (\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21_cout\ & \controlador_PWM|portador_triangular|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|senoid_60hz|senoid_60Hz|altsyncram_component|auto_generated|q_a\(11),
	datad => \controlador_PWM|portador_triangular|counter\(11),
	cin => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	combout => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X61_Y4_N6
\controlador_PWM|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|Selector8~1_combout\ = (\controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\ & (((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\)))) # (!\controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\ & 
-- ((\controlador_PWM|Selector8~0_combout\ & ((!\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\))) # (!\controlador_PWM|Selector8~0_combout\ & (\controlador_PWM|driver2_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\,
	datab => \controlador_PWM|Selector8~0_combout\,
	datac => \controlador_PWM|driver2_reg~q\,
	datad => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\,
	combout => \controlador_PWM|Selector8~1_combout\);

-- Location: FF_X61_Y4_N7
\controlador_PWM|driver2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|Selector8~1_combout\,
	sclr => \reset_init_blk_50|rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|driver2_reg~q\);

-- Location: LCCOMB_X61_Y4_N28
\controlador_PWM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|Selector0~0_combout\ = (\controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\ & (\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\ $ (!\controlador_PWM|driver2_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\,
	datac => \controlador_PWM|DEAD_TIME_SM.COMPARE_2~q\,
	datad => \controlador_PWM|driver2_reg~q\,
	combout => \controlador_PWM|Selector0~0_combout\);

-- Location: LCCOMB_X61_Y4_N30
\controlador_PWM|DEAD_TIME_SM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~24_combout\ = (\controlador_PWM|DEAD_TIME_SM~22_combout\) # (((!\controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\ & \controlador_PWM|Selector0~0_combout\)) # (!\controlador_PWM|DEAD_TIME_SM~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|DEAD_TIME_SM~22_combout\,
	datab => \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\,
	datac => \controlador_PWM|DEAD_TIME_SM~23_combout\,
	datad => \controlador_PWM|Selector0~0_combout\,
	combout => \controlador_PWM|DEAD_TIME_SM~24_combout\);

-- Location: LCCOMB_X60_Y4_N24
\controlador_PWM|DEAD_TIME_SM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~27_combout\ = (!\reset_init_blk_50|rst_reg~q\ & ((\controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\) # (!\controlador_PWM|DEAD_TIME_SM.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_init_blk_50|rst_reg~q\,
	datac => \controlador_PWM|DEAD_TIME_SM.CHANGE_2~q\,
	datad => \controlador_PWM|DEAD_TIME_SM.INIT~q\,
	combout => \controlador_PWM|DEAD_TIME_SM~27_combout\);

-- Location: LCCOMB_X61_Y4_N20
\controlador_PWM|DEAD_TIME_SM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~28_combout\ = (\controlador_PWM|DEAD_TIME_SM~27_combout\) # ((!\controlador_PWM|DEAD_TIME_SM~24_combout\ & \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|DEAD_TIME_SM~24_combout\,
	datab => \controlador_PWM|DEAD_TIME_SM~27_combout\,
	datac => \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\,
	combout => \controlador_PWM|DEAD_TIME_SM~28_combout\);

-- Location: FF_X61_Y4_N21
\controlador_PWM|DEAD_TIME_SM.COMPARE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\);

-- Location: LCCOMB_X61_Y4_N14
\controlador_PWM|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|Selector8~0_combout\ = (\controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\ & (\controlador_PWM|driver1_reg~q\ $ (\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|DEAD_TIME_SM.COMPARE_1~q\,
	datac => \controlador_PWM|driver1_reg~q\,
	datad => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\,
	combout => \controlador_PWM|Selector8~0_combout\);

-- Location: LCCOMB_X61_Y4_N8
\controlador_PWM|DEAD_TIME_SM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~31_combout\ = (\controlador_PWM|DEAD_TIME_SM~30_combout\ & (!\reset_init_blk_50|rst_reg~q\ & (\controlador_PWM|Selector8~0_combout\))) # (!\controlador_PWM|DEAD_TIME_SM~30_combout\ & 
-- (((\controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|rst_reg~q\,
	datab => \controlador_PWM|Selector8~0_combout\,
	datac => \controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\,
	datad => \controlador_PWM|DEAD_TIME_SM~30_combout\,
	combout => \controlador_PWM|DEAD_TIME_SM~31_combout\);

-- Location: FF_X61_Y4_N9
\controlador_PWM|DEAD_TIME_SM.COUNTER_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\);

-- Location: LCCOMB_X61_Y4_N12
\controlador_PWM|DEAD_TIME_SM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~29_combout\ = (!\controlador_PWM|counter\(0) & (\controlador_PWM|counter\(1) & ((\controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\) # (\controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|counter\(0),
	datab => \controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\,
	datac => \controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\,
	datad => \controlador_PWM|counter\(1),
	combout => \controlador_PWM|DEAD_TIME_SM~29_combout\);

-- Location: LCCOMB_X61_Y4_N2
\controlador_PWM|DEAD_TIME_SM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~30_combout\ = (\controlador_PWM|DEAD_TIME_SM~29_combout\) # ((\controlador_PWM|Selector0~0_combout\) # (!\controlador_PWM|DEAD_TIME_SM~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|DEAD_TIME_SM~29_combout\,
	datac => \controlador_PWM|DEAD_TIME_SM~23_combout\,
	datad => \controlador_PWM|Selector0~0_combout\,
	combout => \controlador_PWM|DEAD_TIME_SM~30_combout\);

-- Location: LCCOMB_X61_Y4_N16
\controlador_PWM|DEAD_TIME_SM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~32_combout\ = (\controlador_PWM|DEAD_TIME_SM~30_combout\ & (!\reset_init_blk_50|rst_reg~q\ & ((\controlador_PWM|Selector0~0_combout\)))) # (!\controlador_PWM|DEAD_TIME_SM~30_combout\ & 
-- (((\controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|rst_reg~q\,
	datab => \controlador_PWM|DEAD_TIME_SM~30_combout\,
	datac => \controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\,
	datad => \controlador_PWM|Selector0~0_combout\,
	combout => \controlador_PWM|DEAD_TIME_SM~32_combout\);

-- Location: FF_X61_Y4_N17
\controlador_PWM|DEAD_TIME_SM.COUNTER_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\);

-- Location: LCCOMB_X61_Y4_N18
\controlador_PWM|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|counter[0]~0_combout\ = (!\reset_init_blk_50|rst_reg~q\ & ((\controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\) # (\controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_init_blk_50|rst_reg~q\,
	datab => \controlador_PWM|DEAD_TIME_SM.COUNTER_2~q\,
	datac => \controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\,
	combout => \controlador_PWM|counter[0]~0_combout\);

-- Location: FF_X62_Y4_N25
\controlador_PWM|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|Selector9~0_combout\,
	ena => \controlador_PWM|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|counter\(1));

-- Location: LCCOMB_X62_Y4_N6
\controlador_PWM|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|Selector10~0_combout\ = (!\controlador_PWM|counter\(0) & !\controlador_PWM|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlador_PWM|counter\(0),
	datad => \controlador_PWM|counter\(1),
	combout => \controlador_PWM|Selector10~0_combout\);

-- Location: FF_X62_Y4_N7
\controlador_PWM|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|Selector10~0_combout\,
	ena => \controlador_PWM|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|counter\(0));

-- Location: LCCOMB_X61_Y4_N24
\controlador_PWM|DEAD_TIME_SM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~21_combout\ = (!\controlador_PWM|counter\(0) & (\controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\ & (!\reset_init_blk_50|rst_reg~q\ & \controlador_PWM|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|counter\(0),
	datab => \controlador_PWM|DEAD_TIME_SM.COUNTER_1~q\,
	datac => \reset_init_blk_50|rst_reg~q\,
	datad => \controlador_PWM|counter\(1),
	combout => \controlador_PWM|DEAD_TIME_SM~21_combout\);

-- Location: FF_X61_Y4_N25
\controlador_PWM|DEAD_TIME_SM.CHANGE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|DEAD_TIME_SM~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|DEAD_TIME_SM.CHANGE_1~q\);

-- Location: LCCOMB_X60_Y4_N14
\controlador_PWM|DEAD_TIME_SM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|DEAD_TIME_SM~20_combout\ = (\controlador_PWM|DEAD_TIME_SM.INIT~q\ & !\controlador_PWM|DEAD_TIME_SM.CHANGE_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlador_PWM|DEAD_TIME_SM.INIT~q\,
	datad => \controlador_PWM|DEAD_TIME_SM.CHANGE_1~q\,
	combout => \controlador_PWM|DEAD_TIME_SM~20_combout\);

-- Location: LCCOMB_X61_Y4_N0
\controlador_PWM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador_PWM|Selector0~1_combout\ = (\controlador_PWM|DEAD_TIME_SM~20_combout\ & ((\controlador_PWM|Selector0~0_combout\ & (\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\)) # 
-- (!\controlador_PWM|Selector0~0_combout\ & ((\controlador_PWM|driver1_reg~q\))))) # (!\controlador_PWM|DEAD_TIME_SM~20_combout\ & (\controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador_PWM|DEAD_TIME_SM~20_combout\,
	datab => \controlador_PWM|PWM|comparador|LPM_COMPARE_component|auto_generated|op_1~22_combout\,
	datac => \controlador_PWM|driver1_reg~q\,
	datad => \controlador_PWM|Selector0~0_combout\,
	combout => \controlador_PWM|Selector0~1_combout\);

-- Location: FF_X61_Y4_N1
\controlador_PWM|driver1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \controlador_PWM|Selector0~1_combout\,
	sclr => \reset_init_blk_50|rst_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador_PWM|driver1_reg~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);
END structure;


