library ieee;
use ieee.std_logic_1164.all;
entity tb_jk_flipflop is end entity;
architecture test of tb_jk_flipflop is
 signal j,k,clk,q:std_logic:='0';
begin
 dut:entity work.jk_flipflop port map(j=>j,k=>k,clk=>clk,q=>q);
 process
 begin
  j<='0';k<='1';wait for 5 ns;clk<='1';wait for 5 ns;assert q='0' report "Reset failed" severity error;
  clk<='0';j<='1';k<='0';wait for 5 ns;clk<='1';wait for 5 ns;assert q='1' report "Set failed" severity error;
  clk<='0';j<='0';k<='0';wait for 5 ns;clk<='1';wait for 5 ns;assert q='1' report "Hold failed" severity error;
  clk<='0';j<='1';k<='1';wait for 5 ns;clk<='1';wait for 5 ns;assert q='0' report "Toggle 1 failed" severity error;
  clk<='0';wait for 5 ns;clk<='1';wait for 5 ns;assert q='1' report "Toggle 2 failed" severity error;
  report "JK FF test complete" severity note;wait;
 end process;
end architecture;
