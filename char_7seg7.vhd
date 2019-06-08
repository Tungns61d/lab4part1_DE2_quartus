LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY char_7seg7 IS
PORT ( C: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
Display : OUT STD_LOGIC_VECTOR(6 downto 0));
END char_7seg7;

ARCHITECTURE Behavior OF char_7seg7 IS
begin
	display<="1001000"when C="011" else  --H 0light 1 dark 0001001
"0110000"when C="100" else  --E
"1110001"when C="101"  else --L
"1110001"when C="110"  else --L
"0000001" when C="111" else "1111111"; --0
END Behavior;