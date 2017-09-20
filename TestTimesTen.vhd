library ieee;
use ieee.std_logic_1164.all;


entity TestTimesTen is
port (SW : in std_logic_vector ( 5 downto 0);
HEX0,HEX1,HEX2,HEX3: out std_logic_vector ( 6 downto 0 ));
end TestTimesTen;



architecture lights of TestTimesTen is
signal i : std_logic_vector (5 downto 0);
signal o: std_logic_vector (9 downto 0);
signal x1, x2: std_logic_vector (6 downto 0);
signal a,b: std_logic_vector (3 downto 0);
signal in1,in2,in3: std_logic_vector (5 downto 0);
signal out1,out2,out3,out4: std_logic_vector (9 downto 0);
component TimesTen 
port (X : in std_logic_vector ;
TenX : out std_logic_vector);
end component; 
component SegDecoder
port (D: in std_logic_vector;
	Y: out std_logic_vector );
	end component; 


begin 

in1 <= SW (5 downto 0);
multiply: TimesTen port map( in1 , out1 );
decoder1: SegDecoder port map (out1(9 downto 6), HEX3);
multiply1: TimesTen port map (out1(5 downto 0), out2 );
decoder2: SegDecoder port map (out2(9 downto 6), HEX2);

multiply2: TimesTen port map (out2(5 downto 0), out3 );
decoder3: SegDecoder port map (out3(9 downto 6), HEX1);
multiply3: TimesTen port map (out3(5 downto 0), out4 );
decoder4: SegDecoder port map (out4(9 downto 6), HEX0);

end lights; 