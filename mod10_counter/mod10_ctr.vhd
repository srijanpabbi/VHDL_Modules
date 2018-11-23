Library ieee;
use ieee.std_logic_1164.all;

entity mod10_ctr is
port(reset,clk:in std_logic;
oq1,oq2,oq3,oq4:inout std_logic);
end entity;

architecture mod10_arch of mod10_ctr is
component tff is
port(T,clk,reset:in std_logic;
q:inout std_logic);
end component;
signal t1,t2,t3,t4,q1,q2,q3,q4:std_logic;
begin
t1 <= ((not(q1) and q2 and q3 and q4) or (q1 and not(q2) and not(q3) and q4));
t2 <= ((not(q1) and not(q2) and q3 and q4) or (not(q1) and q2 and q3 and q4));
t3 <= ((not(q1) and not(q2) and not(q3) and q4) or (not(q1) and not(q2) and q3 and q4) or (not(q1) and q2 and not(q3) and q4) or (not(q1) and q2 and q3 and q4));
t4 <= '1';
inst1:tff port map (t1,clk,reset,q1);
inst2:tff port map (t2,clk,reset,q2);
inst3:tff port map (t3,clk,reset,q3);
inst4:tff port map (t4,clk,reset,q4);
oq1<=q1;
oq2<=q2;
oq3<=q3;
oq4<=q4;
end mod10_arch;
