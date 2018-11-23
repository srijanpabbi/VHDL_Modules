entity saFSM is
port(
x,y,clk,reset:in bit;
s:out bit);
end entity;

architecture saFSM_arch of saFSM is
type state is (s0, s1);
signal ps, ns: state;
begin 
process(clk, reset)
begin 
if(reset = '1') then ps <= s0;
elsif ( clk'event and clk = '1') then ps <= ns;
end if;
end process;
process(x,y,ps)
begin
case ps is
when s0 =>
if(x = '0' and y = '0') then ns <= s0; s <= '0';
elsif(x = '1' and y = '0') then ns <= s0; s <= '1';
elsif(x = '0' and y = '1') then ns <= s0; s <= '1';
else ns <= s1; s <= '0';
end if;
when s1 =>
if(x = '0' and y = '1') then ns <= s1; s <= '0';
elsif(x = '1' and y = '0') then ns <= s1; s <= '0';
elsif(x = '1' and y = '1') then ns <= s1; s <= '1';
else ns <= s0; s <= '1';
end if;
end case;
end process;
end saFSM_arch;