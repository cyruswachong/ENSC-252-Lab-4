library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
entity TimesTen is
port (X : in unsigned ( 5 downto 0 );
TenX : out unsigned ( 9 downto 0));
end TimesTen;



architecture operator of TimesTen is
signal s3,s4: unsigned (9 downto 0 );

begin 
s3 <= "000" & X(5 downto 0) & "0";
s4 <= "0" & X(5 downto 0) & "000";
TenX <= s3(9 downto 0) + s4 (9 downto 0);
end operator; 




