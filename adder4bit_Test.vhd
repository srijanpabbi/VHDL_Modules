entity testbench is
end entity;

architecture test_arch of testbench is 
component adder4bit is 
port(	a,b: in bit_vector(3 downto 0);
	sum: out bit_vector(3 downto 0);
	carryin: in bit;
	carryout: out bit
);
end component;
signal ta, tb, tsum: bit_vector(3 downto 0);
signal tcarryin, tcarryout: bit;
begin
inst: adder4bit port map (ta, tb, tsum, tcarryin, tcarryout);
process
begin
end process;
end test_arch;
