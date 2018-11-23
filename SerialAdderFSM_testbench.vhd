entity saFSM_testbench is
end entity;

architecture saFSM_testbench_arch of saFSM_testbench is
component saFSM is 
port(
x,y,clk,reset:in bit;
s:out bit);
end component;
signal tx,ty,tclk,treset,ts:bit;
begin
inst: saFSM port map (tx,ty,tclk,treset,ts);

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
wait for 20 ns;
treset <= '0';
tx <= '0';
ty <= '0';
wait for 20 ns;
tx <= '0';
ty <= '1';
wait for 20 ns;
tx <= '1';
ty <= '0';
wait for 20 ns;
tx <= '1';
ty <= '1';
wait for 20 ns;
end process;
end saFSM_testbench_arch;
