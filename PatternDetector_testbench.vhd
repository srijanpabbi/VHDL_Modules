entity patternDetector_testbench is
end entity;

architecture pdt_arch of patternDetector_testbench is
component patternDetector is
port( input,clk,reset:in bit; output:out bit);
end component;
signal tinput, tclk, treset, toutput: bit;
begin
inst: patternDetector port map (tinput, tclk, treset, toutput);

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
wait for 17 ns;
treset <= '0';
tinput <= '0';
wait for 13 ns;
tinput <= '0';
wait for 19 ns;
tinput <= '1';
wait for 18 ns;
tinput <= '0';
wait for 16 ns;
tinput <= '1';
wait for 14 ns;
tinput <= '0';
wait for 17 ns;
tinput <= '1';
wait for 13 ns;
end process;
end pdt_arch;