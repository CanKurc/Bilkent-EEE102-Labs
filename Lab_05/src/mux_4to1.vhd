library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( 
        sw           : in  STD_LOGIC_VECTOR (15 downto 0);
        digit_select : in  STD_LOGIC_VECTOR (1 downto 0);
        digit_out    : out STD_LOGIC_VECTOR (3 downto 0)
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(digit_select, sw)
    begin
        case digit_select is
            when "00" => digit_out <= sw(3 downto 0);
            when "01" => digit_out <= sw(7 downto 4);
            when "10" => digit_out <= sw(11 downto 8);
            when "11" => digit_out <= sw(15 downto 12);
            when others => digit_out <= "0000";
        end case;
    end process;
end Behavioral;
