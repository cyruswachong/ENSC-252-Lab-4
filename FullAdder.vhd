library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
port( a,b,c : in std_logic;
sum, Carry : out std_logic);
end FullAdder;

architecture adderino of FullAdder is
begin
  sum <= a XOR b XOR c;
  Carry <= (a AND b) OR (c AND a) OR (c AND b);
 end adderino;
