library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bitwise_NOT is
Port ( 
    a : in STD_LOGIC_VECTOR (3 downto 0);
    en : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (3 downto 0) 
);
end bitwise_NOT;

architecture Behavioral of bitwise_NOT is
begin
    Y <= (NOT a) when en = '1' else "0000";
end Behavioral;
