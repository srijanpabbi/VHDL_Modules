entity adder4bit is
port(	a,b: in bit_vector(3 downto 0);
	sum: out bit_vector(3 downto 0);
	carryin: in bit;
	carryout: out bit
);
end entity;
architecture adder4bit_arch of adder4bit is
component fulladder is
port(
	x:in bit;
	y:in bit;
	ci:in bit;
	s:out bit;
	co:out bit
);
end component;
signal tcarry: bit_vector(2 downto 0);
begin
inst0: fulladder port map (a(0), b(0), carryin, sum(0), tcarry(0));
inst1: fulladder port map (a(1), b(1), tcarry(0), sum(1), tcarry(1));
inst2: fulladder port map (a(2), b(2), tcarry(1), sum(2), tcarry(2));
inst3: fulladder port map (a(3), b(3), tcarry(2), sum(3), carryout);
end adder4bit_arch;

