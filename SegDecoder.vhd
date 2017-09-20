library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
entity SegDecoder is 
	port(D: in unsigned (3 downto 0);
	Y: out unsigned (6 downto 0));
end SegDecoder;


architecture fudge of SegDecoder is
begin
Y <= "1000000" when D="0000" else
	 "1111001" when D="0001" else 
	 "0100100" when D="0010" else
	 "0110000" when D="0011" else
	 "0011001" when D="0100" else
	 "0010010" when D="0101" else  
	 "0000010" when D="0110" else 
	 "1111000" when D="0111" else 
	 "0000000" when D="1000" else 
	 "0011000" when D="1001" else
	 "0001000" when D="1010" else
    "0000011" when D="1011" else 
	 "0100111" when D="1100" else 
	 "0100001" when D="1101" else 
	 "0000110" when D="1110" else 
	 "0001110" when D="1111";
	 
	end fudge; 