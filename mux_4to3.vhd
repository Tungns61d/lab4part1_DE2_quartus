LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------

ENTITY mux_4to3 IS
PORT ( n : IN STD_LOGIC_VECTOR(3 downto 0);
M: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END mux_4to3;

ARCHITECTURE Behavior OF mux_4to3 IS
	--SIGNAL mux1, mux2, mux3: STD_LOGIC_VECTOR(2 downto 0);
BEGIN
process(n)
begin
case n is

when "0000" =>m<="000";
when "0001" =>m<="001";
when "0010" =>m<="010";
when "0011" =>m<="011";
when "0100" =>m<="100";
when "0101" =>m<="101";
when "0110" =>m<="110";
when "0111" =>m<="111";

when "1000" =>m<="000";
when "1001" =>m<="001";
when "1010" =>m<="010";
when "1011" =>m<="011";
when "1100" =>m<="100";
when "1101" =>m<="101";
when "1110" =>m<="110";
when "1111" =>m<="111";

end case;
end process;
end behavior;