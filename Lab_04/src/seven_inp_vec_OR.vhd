library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_inp_vec_OR is
Port ( 
    x0 : in STD_LOGIC_VECTOR (3 downto 0);
    x1 : in STD_LOGIC_VECTOR (3 downto 0);
    x2 : in STD_LOGIC_VECTOR (3 downto 0);
    x3 : in STD_LOGIC_VECTOR (3 downto 0);
    x4 : in STD_LOGIC_VECTOR (3 downto 0);
    x5 : in STD_LOGIC_VECTOR (3 downto 0);
    x6 : in STD_LOGIC_VECTOR (3 downto 0);
    Y : out STD_LOGIC_VECTOR (3 downto 0) 
);
end seven_inp_vec_OR;

architecture Behavioral of seven_inp_vec_OR is
begin
    Y <= x0 OR x1 OR x2 OR x3 OR x4 OR x5 OR x6;
end Behavioral;
