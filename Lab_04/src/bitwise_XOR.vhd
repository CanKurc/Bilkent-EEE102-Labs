library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bitwise_XOR is
Port ( 
    a : in STD_LOGIC_VECTOR (3 downto 0);
    b : in STD_LOGIC_VECTOR (3 downto 0);
    en : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (3 downto 0) 
);
end bitwise_XOR;

architecture Behavioral of bitwise_XOR is
begin
    Y <= (a XOR b) when en = '1' else "0000";
end Behavioral;
