library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_SevenSeg is
-- Testbench entities are empty
end tb_SevenSeg;

architecture Behavioral of tb_SevenSeg is
    -- 1. Declare the Vivado-generated wrapper as our component
    component SevenSeg_wrapper is
        Port ( 
            clk : in STD_LOGIC;
            sw  : in STD_LOGIC_VECTOR ( 15 downto 0 );
            an  : out STD_LOGIC_VECTOR ( 3 downto 0 );
            seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
        );
    end component;

    -- 2. Virtual wires for simulation
    signal clk : STD_LOGIC := '0';
    signal sw  : STD_LOGIC_VECTOR ( 15 downto 0 ) := (others => '0');
    signal an  : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal seg : STD_LOGIC_VECTOR ( 6 downto 0 );
    constant clk_period : time := 10 ns;

begin
    -- 3. Connect the virtual wires to your Block Design
    UUT: SevenSeg_wrapper port map (
        clk => clk,
        sw  => sw,
        an  => an,
        seg => seg
    );

    -- 4. Generate the 100 MHz clock
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- 5. Provide inputs to the switches
    stimulus: process
    begin
        -- Test Case 1: Display "4321"
        sw <= x"4321";
        wait for 15 ms;
        
        -- Test Case 2: Display "bEEF"
        sw <= x"BEEF";
        wait for 15 ms;
        
        wait;
    end process;
end Behavioral;
