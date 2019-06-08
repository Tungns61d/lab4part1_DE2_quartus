library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vhdl_binary_counter is
port (clk:in std_logic;
clr:in std_logic;
	q:out std_logic_vector(3 downto 0));
	end vhdl_binary_counter;
	
architecture bhv of vhdl_binary_counter is
	signal tmp:std_logic_vector(3 downto 0);
	 signal temporal: STD_LOGIC;
    signal counter : integer range 0 to 25000000  := 0;
	
begin 
	frequency_divider:process (clk,clr)
	begin
	if(clr='1') then
	tmp<="0000";
	temporal <= '0';
    counter <= 0;
	
	elsif (clk'event and clk='1') then
		if(counter=25000000) then
		temporal <= NOT(temporal);
      counter <= 0;
		tmp<=tmp+"0001";
		--count<=0;
		 else
                counter <= counter + 1;
		end if;
	end if;
	end process;
	q<=tmp;
	end bhv;
	
	