
library ieee;
use ieee.std_logic_1164.all;

entity fulladd is
port(
		Cin, x, y : in std_logic;
		s, Cout : out std_logic
	);
end fulladd;

architecture Behavior of fulladd is
begin
	s <= x XOR y XOR Cin;
	Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);
end Behavior;