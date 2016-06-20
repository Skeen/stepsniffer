library ieee;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;

entity comparator is
generic (N : positive := 6);
port(
clk: in std_logic;
data: in std_logic_vector(N-1 downto 0);
changed: out std_logic
);
end comparator;

architecture comparator_arch of comparator is
signal data_buffer : std_logic_vector(N-1 downto 0);
begin

	process (clk, data)
	begin
		 if rising_edge(clk) then
			  data_buffer <= data;
		 end if;
	end process;
	changed <= '0' when data_buffer = data else '1';
	
end comparator_arch;