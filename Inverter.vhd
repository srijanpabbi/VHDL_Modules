library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Inverter is
port(
	inputSig: in std_logic;
	outputSig: out std_logic
);
end entity;

architecture Inverter_arch of Inverter is
begin
outputSig <= not inputSig;
end Inverter_arch;

