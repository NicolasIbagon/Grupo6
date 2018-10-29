library ieee;
use ieee.std_logic_1164.all;

entity shift is
port(
	v1 : in std_logic_vector(3 downto 0);
	si : in std_logic;
	v2 : out std_logic_vector(3 downto 0);
	res : out std_logic
);
end entity;

architecture shift_arc of shift is
begin
	process(v1, si) is
		begin
			if(si = '0') then
			v2 <= v1;
			res <= '0';
			else
				v2(0) <= '0';
				v2(3 downto 1) <= v1(2 downto 0);
				res <= '1';
			end if;
	end process;
end architecture;