library ieee;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;

entity combiner is
generic(
Na : positive := 3;
Nb : positive := 3
);
port(
A: in std_logic_vector(Na-1 downto 0);
B: in std_logic_vector(Nb-1 downto 0);
Z: out std_logic_vector((Na+Nb)-1 downto 0)
);
end combiner;

architecture combiner_arch of combiner is
begin
   Z <= A & B;
end combiner_arch;