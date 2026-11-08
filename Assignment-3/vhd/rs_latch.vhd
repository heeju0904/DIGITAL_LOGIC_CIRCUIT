library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
  port (s, r : in std_logic; q, nq : out std_logic);
end entity rs_latch;

architecture behavioral of rs_latch is
  signal q_state : std_logic := '0';
begin
  process(s, r)
  begin
    if s = '1' and r = '0' then
      q_state <= '1';
    elsif s = '0' and r = '1' then
      q_state <= '0';
    end if;
  end process;
  q  <= '0' when (s = '1' and r = '1') else q_state;
  nq <= '0' when (s = '1' and r = '1') else not q_state;
end architecture behavioral;
