LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY lab4part1 IS
	PORT (
	CLOCK_50:IN Std_LOGIC;
	key0: in std_LOGIC;
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
			LEDR : OUT STD_lOGIC_VECTOR(17 DOWNTO 0); 
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_lOGIC_VECTOR(0 TO 6);
			HEX2 : OUT STD_lOGIC_VECTOR(0 TO 6);
			HEX3 : OUT STD_lOGIC_VECTOR(0 TO 6);
			HEX4: OUT STD_lOGIC_VECTOR(0 TO 6);
			HEX5 : OUT STD_lOGIC_VECTOR(0 TO 6);
			HEX6: OUT STD_lOGIC_VECTOR(0 TO 6);
			HEX7: OUT STD_lOGIC_VECTOR(0 TO 6)
			);
END lab4part1;

ARCHITECTURE Behavior OF lab4part1 IS
--COMPONENT mux_4bit_5to1 is
	--PORT ( S, U, V, W, X, Y : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		--	M : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
--END COMPONENT;

component vhdl_binary_counter is
port (clk:in std_logic;
clr:in std_logic;
	q:out std_logic_vector(3 downto 0));
	end component;

COMPONENT char_7seg0 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg1 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg2 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg3 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg4 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg5 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg6 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT char_7seg7 is
	PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

SIGNAL N :std_lOGIC_VECTOR(3 downto 0);
SIGNAL M : STD_LOGIC_VECTOR(2 DOWNTO 0);

component mux_4to3 IS
PORT ( n : IN STD_LOGIC_VECTOR(3 downto 0);
M: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END component;



BEGIN
LEDR <= SW;



--H0: mux_4bit_5to1 PORT MAP (SW(17 DOWNTO 15), SW(14 DOWNTO 12), SW(11 DOWNTO 9),SW(8 DOWNTO 6), SW(5 DOWNTO 3), SW(2 DOWNTO 0), M);

--A1:vhdl_binary_counter port map(sw(0),sw(1),N);
A1:vhdl_binary_counter port map(CLOCK_50,sw(1),N);

A2: mux_4to3 port map(N,M);
M0: char_7seg0 PORT MAP (M, HEX0);
M1: char_7seg1 PORT MAP (M, HEX1);
M2: char_7seg2 PORT MAP (M, HEX2);
M3: char_7seg3 PORT MAP (M, HEX3);
M4: char_7seg4 PORT MAP (M, HEX4);
M5: char_7seg5 PORT MAP (M, HEX5);
M6: char_7seg6 PORT MAP (M, HEX6);
M7: char_7seg7 PORT MAP (M, HEX7);
END Behavior;