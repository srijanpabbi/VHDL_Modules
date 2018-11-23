library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_4x1 is
port(
	inp0, inp1, inp2, inp3, sel0, sel1 : in std_logic;
	op: out std_logic
);
end entity;

architecture Mux_arch of Mux_4x1 is
begin
op <=   inp0 when sel0='0' and sel1='0' else
	inp1 when sel0='0' and sel1='1' else
	inp2 when sel0='1' and sel1='0' else
	inp3;
end Mux_arch;
