library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity boothmult is
port(mpcd, mplr: in std_logic_vector(7 downto 0);
	result: out std_logic_vector(15 downto 0);
	start: in std_logic);
end entity;

architecture booth_arch of boothmult is
begin
process(start)
variable br, nbr: std_logic_vector(7 downto 0);
variable acqr: std_logic_vector(15 downto 0);
variable qn1: std_logic;
begin
if(start'event and start = '1') then
acqr(15 downto 8) := (others => '0');
acqr(7 downto 0) := mplr;
br := mpcd;
nbr := (not mpcd) + '1';
qn1 := '0';
else
loop1: for i in 0 to 7 loop
if(acqr(0) = '0' and qn1='1')then
acqr(15 downto 8) := acqr(15 downto 8) + br;
elsif (acqr(0) = '1' and qn1 = '0')then
acqr(15 downto 8) := acqr(15 downto 8) + nbr;
end if;
qn1 := acqr(0);
acqr(14 downto 0) := acqr(15 downto 1);
end loop loop1;
result <= acqr;
end if;
end process;
end booth_arch;
