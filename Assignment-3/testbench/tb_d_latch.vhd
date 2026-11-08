library ieee;
use ieee.std_logic_1164.all;
entity tb_d_latch is end entity;
architecture test of tb_d_latch is
 signal d,en,q:std_logic:='0';
begin
 dut:entity work.d_latch port map(d=>d,en=>en,q=>q);
 process
 begin
  d<='0'; en<='1'; wait for 10 ns; assert q='0' report "0 tracking failed" severity error;
  d<='1'; wait for 10 ns; assert q='1' report "1 tracking failed" severity error;
  en<='0'; d<='0';wait for 10 ns;assert q='1' report "Hold failed" severity error;
  en<='1'; wait for 10 ns;assert q='0' report "Transparent failed" severity error;
  report "D latch test complete" severity note;wait;
 end process;
end architecture;
