library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testbench is
-- Testbench has no inputs or outputs
end testbench;

architecture Behavioral of testbench is
-- Component Declaration for the Unit Under Test (UUT)
component top_module
Port (
    i_sw : in STD_LOGIC_VECTOR (7 downto 0);
    o_LED : out STD_LOGIC_VECTOR (7 downto 0)
);
end component;

-- Inputs
signal i_sw : std_logic_vector(7 downto 0) := (others => '0');

-- Outputs
signal o_LED : std_logic_vector(7 downto 0);

-- Clock period definitions (just for timing)
constant period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: top_module PORT MAP (
        i_sw => i_sw,
        o_LED => o_LED
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Loop to test all 256 combinations (00000000 to 11111111)
        for i in 0 to 255 loop
            i_sw <= std_logic_vector(to_unsigned(i, 8));
            wait for period;
        end loop;
        
        wait; -- Stop simulation
    end process;
end Behavioral;
