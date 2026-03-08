library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_adder_subtractor is
-- Testbenches don't have ports!
end tb_adder_subtractor;

architecture Behavioral of tb_adder_subtractor is
-- 1. Bring in your newly generated wrapper
component ADDER_SUBTRACTOR_wrapper is
Port ( 
    a3 : in STD_LOGIC; a2 : in STD_LOGIC; a1 : in STD_LOGIC; a0 : in STD_LOGIC;
    b3 : in STD_LOGIC; b2 : in STD_LOGIC; b1 : in STD_LOGIC; b0 : in STD_LOGIC;
    Add : in STD_LOGIC; Subtract : in STD_LOGIC;
    Y3 : out STD_LOGIC; Y2 : out STD_LOGIC; Y1 : out STD_LOGIC; Y0 : out STD_LOGIC;
    Err : out STD_LOGIC 
);
end component;

-- 2. Create internal wires to hook up to the wrapper
signal a3, a2, a1, a0 : STD_LOGIC := '0';
signal b3, b2, b1, b0 : STD_LOGIC := '0';
signal Add, Subtract : STD_LOGIC := '0';
signal Y3, Y2, Y1, Y0, Err : STD_LOGIC;

begin
-- 3. Place the wrapper on the testbench and wire it up
UUT: ADDER_SUBTRACTOR_wrapper port map (
    a3 => a3, a2 => a2, a1 => a1, a0 => a0,
    b3 => b3, b2 => b2, b1 => b1, b0 => b0,
    Add => Add, Subtract => Subtract,
    Y3 => Y3, Y2 => Y2, Y1 => Y1, Y0 => Y0, Err => Err
);

-- 4. The Testing Process
stimulus: process
begin
    -- TEST CASE 1: The Power-Saving Idle State
    -- A = 3 (0011), B = 1 (0001). But Add and Subtract are both 0.
    -- Because of your AND gates, the output MUST be 0000.
    a3 <= '0'; a2 <= '0'; a1 <= '1'; a0 <= '1';
    b3 <= '0'; b2 <= '0'; b1 <= '0'; b0 <= '1';
    Add <= '0'; Subtract <= '0';
    wait for 20 ns;

    -- TEST CASE 2: Standard Addition
    -- A = 3 (0011), B = 1 (0001). Add = 1.
    -- Output should be 4 (0100).
    Add <= '1'; Subtract <= '0';
    wait for 20 ns;

    -- TEST CASE 3: Two's Complement Subtraction
    -- A = 3 (0011), B = 1 (0001). Subtract = 1.
    -- Output should be 2 (0010).
    Add <= '0'; Subtract <= '1';
    wait for 20 ns;

    -- Stop the simulation
    wait;
end process;
end Behavioral;
