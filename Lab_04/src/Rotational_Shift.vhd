library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rotational_Shift is
Port ( 
    a : in STD_LOGIC_VECTOR (3 downto 0);
    b : in STD_LOGIC_VECTOR (3 downto 0);
    en : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (3 downto 0) 
);
end Rotational_Shift;

architecture Behavioral of Rotational_Shift is
begin
    Y <= (a(2 downto 0) & a(3)) when en = '1' else "0000";
end Behavioral;
