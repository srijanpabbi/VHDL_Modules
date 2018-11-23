library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder2_4 is
port(en:in std_logic;
a:in std_logic_vector(1 downto 0);
output:out std_logic_vector(3 downto 0));
end entity;

architecture dcdr2_4_arch of decoder2_4 is
begin
output<= "0001"when a="00" and en='1' else
	"0010"when a="01" and en='1' else
	"0100"when a="10" and en='1' else
	"1000"when a="11" and en='1' ;
end dcdr2_4_arch;
