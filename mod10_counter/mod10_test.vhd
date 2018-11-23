library ieee;
use ieee.std_logic_1164.all;

entity mod10_test is
end entity;

architecture test_arch of mod10_test is
component mod10_ctr is
port(reset,clk:in std_logic;
oq1,oq2,oq3,oq4:inout std_logic);
end component;

signal treset,tclk,tq1,tq2,tq3,tq4:std_logic;
begin
inst0:mod10_ctr port map(treset,tclk,tq1,tq2,tq3,tq4);

process
begin
tclk <= '0';
wait for 10 ns;
tclk <= '1';
wait for 10 ns;
end process;

process
begin
treset <= '1';
wait for 23 ns;
treset <= '0';
wait for 200 ns;
treset <= '1';
wait;
end process;
end test_arch;
