library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_pwm_generator is
end tb_pwm_generator;

architecture Behavioral of tb_pwm_generator is
    component pwm_generator
        Port ( clk : in STD_LOGIC;
               sw : in STD_LOGIC_VECTOR (7 downto 0);
               pwm_out : out STD_LOGIC);
    end component;

    signal clk     : STD_LOGIC := '0';
    signal sw      : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal pwm_out : STD_LOGIC;

    constant clk_period : time := 10 ns;
begin
    uut: pwm_generator port map (
        clk => clk,
        sw => sw,
        pwm_out => pwm_out
    );

    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        -- Test Case 1: 50% Duty Cycle
        -- 128 * 392 = 50,176. Expected High Time: 501.76 us.
        sw <= x"80";
        wait for 2 ms;

        -- Test Case 2: 25% Duty Cycle
        -- 64 * 392 = 25,088. Expected High Time: 250.88 us.
        sw <= x"40";
        wait for 2 ms;

        wait;
    end process;
end Behavioral;
