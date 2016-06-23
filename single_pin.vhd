library ieee;
use ieee.std_logic_misc.all;
use ieee.std_logic_1164.all;

entity single_pin is
generic(
input_bits : positive := 3;
pin_number : integer := 0
);
port(
input: in std_logic_vector(input_bits-1 downto 0);
pin: out std_logic
);
end single_pin;

architecture single_pin_arch of single_pin is
begin
   pin <= input(pin_number);
end single_pin_arch;