entity patternDetector is
port( input,clk,reset:in bit; output:out bit);
end entity;

architecture pd_arch of patternDetector is
type state is (s0, s1, s2, s3);
signal ps, ns  : state;
begin
process(clk, reset)
begin
if(reset = '1') then ps <= s0;
elsif ( clk'event and clk = '1') then ps <= ns;
end if;
end process;
process(input, ps)
begin
case ps is
when s0 =>
if(input = '1') then output<='0'; ns<=s0;
else output<='0'; ns<=s1;
end if;
when s1 =>
if(input = '0') then output<='0'; ns<=s1;
else output<='0'; ns<=s2;
end if;
when s2 =>
if(input = '1') then output<='0'; ns<=s0;
else output<='0'; ns<=s3;
end if;
when s3 =>
if(input = '0') then output<='0'; ns<=s1;
else output<='1'; ns<=s2;
end if;
end case;
end process;
end pd_arch;