library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anode_decoder is
    Port ( 
        digit_select : in  STD_LOGIC_VECTOR (1 downto 0);
        an           : out STD_LOGIC_VECTOR (3 downto 0)
    );
end anode_decoder;

architecture Behavioral of anode_decoder is
begin
    process(digit_select)
    begin
        case digit_select is
            when "00" => an <= "1110";
            when "01" => an <= "1101";
            when "10" => an <= "1011";
            when "11" => an <= "0111";
            when others => an <= "1111";
        end case;
    end process;
end Behavioral;
