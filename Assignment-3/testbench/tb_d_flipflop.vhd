library ieee;
use ieee.std_logic_1164.all;
entity tb_d_flipflop is end entity;
architecture test of tb_d_flipflop is
 signal clk,d,q:std_logic:='0';
begin
 dut:entity work.d_flipflop port map(clk=>clk,d=>d,q=>q);
 process
 begin
  d<='0';wait for 5 ns;clk<='1';wait for 5 ns;assert q='0' report "Initial edge failed" severity error;
  d<='1';wait for 5 ns;assert q='0' report "Changed without edge" severity error;
  clk<='0';wait for 5 ns;assert q='0' report "Changed on falling edge" severity error;
  clk<='1';wait for 5 ns;assert q='1' report "Rising edge failed" severity error;
  d<='0';wait for 5 ns;assert q='1' report "Level tracking error" severity error;
  report "D FF test complete" severity note;wait;
 end process;
end architecture;
