library ieee;
use ieee.std_logic_1164.all;
entity tb_rs_latch is end entity;
architecture test of tb_rs_latch is
 signal s,r,q,nq: std_logic:='0';
begin
 dut: entity work.rs_latch port map(s=>s,r=>r,q=>q,nq=>nq);
 process
 begin
  r<='1'; s<='0'; wait for 10 ns; assert q='0' and nq='1' report "Reset failed" severity error;
  r<='0'; wait for 10 ns; assert q='0' report "Hold 0 failed" severity error;
  s<='1'; wait for 10 ns; assert q='1' and nq='0' report "Set failed" severity error;
  s<='0'; wait for 10 ns; assert q='1' report "Hold 1 failed" severity error;
  s<='1'; r<='1'; wait for 10 ns; assert q='0' and nq='0' report "Forbidden outputs failed" severity error;
  -- Do not assert deterministic state after releasing forbidden condition.
  report "RS latch test complete" severity note;wait;
 end process;
end architecture;
