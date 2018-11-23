Library ieee;
use ieee.std_logic_1164.all;

entity tff is
port(T,clk,reset:in std_logic;
q:inout std_logic := '0');
end entity;

architecture tff_arch of tff is
begin
process(clk,reset)
begin
if(reset ='1')then
q <= '0';
elsif(clk'event and clk='1')then
if(T='0')then
q<=q;
else
q<=not(q);
end if;
end if;
end process;
end tff_arch;
