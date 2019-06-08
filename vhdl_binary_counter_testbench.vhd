-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 4.6.2019 03:27:32 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_vhdl_binary_counter is
end tb_vhdl_binary_counter;

architecture tb of tb_vhdl_binary_counter is

    component vhdl_binary_counter
        port (clk : in std_logic;
              clr : in std_logic;
              q   : out std_logic_vector (3 downto 0));
    end component;

    signal clk : std_logic;
    signal clr : std_logic;
    signal q   : std_logic_vector (3 downto 0);

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : vhdl_binary_counter
    port map (clk => clk,
              clr => clr,
              q   => q);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed

        -- Reset generation
        -- EDIT: Check that clr is really your reset signal
        clr <= '1';
        wait for 100 ns;
        clr <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_vhdl_binary_counter of tb_vhdl_binary_counter is
    for tb
    end for;
end cfg_tb_vhdl_binary_counter;
