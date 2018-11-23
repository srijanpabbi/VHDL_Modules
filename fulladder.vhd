library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fulladder is
port(
	x,y,ci:in std_logic;
	s,co:out std_logic
);

end entity;
architecture fulladder_arch of fulladder is
begin
s <= x xor y xor ci;
co <= (x and y) or (y and ci) or (ci and x);
end fulladder_arch;