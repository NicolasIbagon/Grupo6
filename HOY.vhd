library ieee;


use ieee.std_logic_1164.all;

entity HOY is 
port(
	a : in integer range 0 to 7;
	b : in integer range 0 to 7;
	suma : out integer range 0 to 15;
	c : out std_logic
	);
end HOY;


architecture arch of HOY is

begin 

	process(a,b)
		begin 
		if(a > b ) then
			c <= '1';
		else 
			c <= '0';
		end if;
		suma <= a + b;
	end process;
end arch;