library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
  port (d, clk : in std_logic; q : out std_logic);
end entity d_flipflop;

architecture behavioral of d_flipflop is
  signal state : std_logic := '0';
begin
  process(clk)
  begin
    if rising_edge(clk) then state <= d; end if;
  end process;
  q <= state;
end architecture behavioral;
