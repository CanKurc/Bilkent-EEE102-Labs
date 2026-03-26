library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity clock_divider is
    Port ( clk : in STD_LOGIC;
           digit_select : out STD_LOGIC_VECTOR (1 downto 0));
end clock_divider;

architecture Behavioral of clock_divider is
    signal refresh_counter : STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            refresh_counter <= refresh_counter + 1;
        end if;
    end process;
    
    digit_select <= refresh_counter(19 downto 18);
end Behavioral;
