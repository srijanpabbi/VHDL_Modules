library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder32bit is
port(	a,b: in std_logic_vector(31 downto 0);
	sum: out std_logic_vector(31 downto 0);
	carryin: in std_logic;
	carryout: out std_logic
);
end entity;
architecture adder32bit_arch of adder32bit is
signal toutput : std_logic_vector(32 downto 0);

begin
toutput <= '0'&a + b + carryin;
sum <= toutput(31 downto 0);
carryout <= toutput(32);

end adder32bit_arch;

