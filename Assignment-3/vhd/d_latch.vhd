library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
  port (d, en : in std_logic; q : out std_logic);
end entity d_latch;

architecture behavioral of d_latch is
  signal state : std_logic := '0';
begin
  process(d,en)
  begin
    if en = '1' then state <= d; end if;
  end process;
  q <= state;
end architecture behavioral;
