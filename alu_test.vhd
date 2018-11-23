library ieee;
use ieee.std_logic_1164.all ;
entity alu_test is 
end entity ;
architecture arch of alu_test is 
component alu is
port ( ain : in std_logic_vector ( 3 downto 0 ) ;
	bin : in std_logic_vector ( 3 downto 0 ) ;
	carryinput : in std_logic ;
	mode : in std_logic_vector ( 1 downto 0 ) ;
	output : out std_logic_vector ( 3 downto 0 ) ;
	carryoutput : out std_logic ) ;
end component ;
signal tain,tbin, toutput : std_logic_vector ( 3 downto 0 ) ;
signal tcarryinput, tcarryoutput : std_logic ;
signal tmode : std_logic_vector ( 1 downto 0 ) ;
begin 
instance0 : alu port map ( tain, tbin, tcarryinput, tmode, toutput, tcarryoutput ) ; 
process 
begin
tain <= "1000" ;
tbin <= "0111" ;
tcarryinput <= '0' ;
tmode <= "00" ;
wait for 10 ns ;
tmode <= "01" ;
wait for 10 ns ;
tmode <= "10" ;
wait for 10 ns ;
tmode <= "11" ;
wait for 10 ns ;
end process ; 
end architecture ;

