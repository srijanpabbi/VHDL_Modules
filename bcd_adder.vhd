library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_adder is
port(
a,b: in std_logic_vector(3 downto 0);
sum: out std_logic_vector(3 downto 0);
carryin: in std_logic;
carryout: out std_logic);
end entity;

architecture bcd_arch of bcd_adder is
begin
process(a,b)
variable sumtemp : std_logic_vector(4 downto 0);
begin
sumtemp := ('0'&a) + ('0'&b) + ("000"&carryin);

if(sumtemp > 9)then
carryout <= '1';
sumtemp := sumtemp + "00110";
sum <= sumtemp(3 downto 0);
else
carryout <= '0';
sum <= sumtemp(3 downto 0);
end if;
end process;
end bcd_arch;
