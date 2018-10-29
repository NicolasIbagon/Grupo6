library ieee;
use ieee.std_logic_1164.all;

entity parity_cheker is
generic(
	long_entrada : natural := 15
);
port(
	a : in std_logic_vector(long_entrada downto 0);
	y : out std_logic
);
end entity;

architecture parity_cheker_arc of parity_cheker is
begin
	process(a) is 
		variable par : std_logic;
		begin
			par := '1';
			for i in a'range loop
				if a(i) = '1' then
					par := not(par);
				end if;
			end loop;
			y <= par;
	end process;
end architecture;