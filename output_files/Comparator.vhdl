use ieee.std_logic_misc.all;

process (clk, data)
begin
    if rising_edge(clk) then
        data_cache <= data;
    end if;
end process;
change <= or_reduce(data_cache xor data);