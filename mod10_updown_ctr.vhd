library ieee;
use ieee.std_logic_1164.all;

entity mod10_ud is
port(
clk, mode:in std_logic);
end entity;

architecture mod10_ud_arch of mod10_ud is
component tff is
port(
t, reset,  clk: in std_logic;
qout:inout std_logic := '0');
end component;

signal q0,q1,q2,q3,t1,t2,t3,t0,rst: std_logic;
begin
t0<='1';
t1<=((q3 and (not q0) and (not mode)) or ((not q3) and q0 and mode) or (q1 and (not q0) and (not mode)) or (q2 and (not q0) and (not mode)));
t2<=((q2 and (not q1) and (not q0) and (not mode)) or (q3 and (not q0) and (not mode)) or (q1 and q0 and mode));
t3<=((not(q2) and not(q1) and not(q0) and not(mode)) or (q3 and q0 and mode) or (q2 and q1 and q0 and mode));
rst<='0';
inst0: tff port map (t0,rst,clk, q0);
inst1: tff port map (t1,rst,clk, q1);
inst2: tff port map (t2,rst,clk, q2);
inst3: tff port map (t3,rst,clk, q3);
end architecture;
