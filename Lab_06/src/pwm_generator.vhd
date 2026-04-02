library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_generator is
    Port ( clk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (7 downto 0);
           pwm_out : out STD_LOGIC);
end pwm_generator;

architecture Behavioral of pwm_generator is
    signal refresh_counter : STD_LOGIC_VECTOR (16 downto 0) := (others => '0');
begin
    process(clk)
        variable v_threshold : integer := 0;
    begin
        if rising_edge(clk) then
            v_threshold := to_integer(unsigned(sw)) * 392;

            if unsigned(refresh_counter) = 99999 then
                refresh_counter <= (others => '0');
            else
                refresh_counter <= std_logic_vector(unsigned(refresh_counter) + 1);
            end if;

            if unsigned(refresh_counter) < v_threshold then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;
end Behavioral;
