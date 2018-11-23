LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity bcdtest is
end entity;

architecture test_arch of bcdtest is 
component bcd_adder is 
port(	a,b: in std_logic_vector(3 downto 0);
	sum: out std_logic_vector(3 downto 0);
	carryin: in std_logic;
	carryout: out std_logic
);
end component;
signal ta, tb, tsum: std_logic_vector(3 downto 0);
signal tcarryin, tcarryout: std_logic;
begin
inst: bcd_adder port map (ta, tb, tsum, tcarryin, tcarryout);
process
begin
ta <= "0001";
tb <= "0011";
tcarryin <= '1';
wait for 100 ns;
ta <= "1001";
tb <= "1000";
tcarryin <= '0';
wait for 100 ns;
ta <= "1001";
tb <= "1001";
tcarryin <= '0';
wait for 100 ns;
end process;
end test_arch;
