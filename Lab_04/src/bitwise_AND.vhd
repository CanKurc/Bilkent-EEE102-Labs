library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bitwise_AND is
Port ( 
    a : in STD_LOGIC_VECTOR (3 downto 0);
    b : in STD_LOGIC_VECTOR (3 downto 0);
    en : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (3 downto 0) 
);
end bitwise_AND;

architecture Behavioral of bitwise_AND is
begin
    Y <= (a AND b) when en = '1' else "0000";
end Behavioral;
