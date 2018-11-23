library ieee ;
use ieee.std_logic_1164.all ;

entity alu is
port ( ain : in std_logic_vector ( 3 downto 0 ) ;
	bin : in std_logic_vector ( 3 downto 0 ) ;
	carryinput : in std_logic ;
	mode : in std_logic_vector ( 1 downto 0 ) ;
	output : out std_logic_vector ( 3 downto 0 ) ;
	carryoutput : out std_logic ) ;
end alu ;
architecture alu_arch of alu is 
component mux is
port ( input: in std_logic ;
	s: in std_logic_vector (1 downto 0);
	cout : out std_logic );
end component ;
component adder4bit is
port ( a : in std_logic_vector( 3 downto 0 ) ;
	 b : in std_logic_vector ( 3 downto 0 ) ; 
	carryin : in std_logic ;
	sum  : out std_logic_vector( 3 downto 0 ) ;
	carryout : out std_logic ) ;
end component ;
signal connect : std_logic_vector ( 3 downto 0 ) ;
begin 
genlabel : for i in 0 to 3 generate
begin 
inst1 : mux port map ( bin(i) , mode , connect(i) ) ; 
end generate ; 
inst5 : adder4bit port map ( ain,connect,carryinput,output,carryoutput) ;
end architecture ;

