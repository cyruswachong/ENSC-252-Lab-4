library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
port( a,b : in std_logic;
sum, Carry : out std_logic);
end HalfAdder;

architecture adderino1 of HalfAdder is
begin
  sum <= (a XOR b);
  Carry <= (a AND b);
 end adderino1;
