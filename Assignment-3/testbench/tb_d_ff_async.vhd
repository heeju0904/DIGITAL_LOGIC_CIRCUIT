library ieee;
use ieee.std_logic_1164.all;
entity tb_d_ff_async is end entity;
architecture test of tb_d_ff_async is
 signal d,clk,set,clr,q:std_logic:='0';
begin
 dut:entity work.d_ff_async port map(d=>d,clk=>clk,set=>set,clr=>clr,q=>q);
 process
 begin
  set<='1';wait for 5 ns;assert q='1' report "Async set failed" severity error;
  set<='0';clr<='1';wait for 5 ns;assert q='0' report "Async clear failed" severity error;
  set<='1';wait for 5 ns;assert q='0' report "Clear priority failed" severity error;
  set<='0';clr<='0';d<='1';wait for 5 ns;clk<='1';wait for 5 ns;assert q='1' report "Normal edge failed" severity error;
  d<='0';wait for 5 ns;assert q='1' report "Changed without edge" severity error;
  clk<='0';wait for 5 ns;clk<='1';wait for 5 ns;assert q='0' report "Second edge failed" severity error;
  report "Async D FF test complete" severity note;wait;
 end process;
end architecture;
