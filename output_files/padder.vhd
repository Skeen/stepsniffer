library ieee;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;

entity padder is
generic(
input_bits : positive := 3;
pad_value : std_logic := '0';
output_bits : positive := 8
);
port(
unpadded: in std_logic_vector(input_bits-1 downto 0);
padded: in std_logic_vector(output_bits-1 downto 0)
);
end padder;

architecture padder_arch of padder is
begin
   padded <= (output_bits-1 downto input_bits => pad_value) & unpadded;
end padder_arch;