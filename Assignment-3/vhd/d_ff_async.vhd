library ieee;
use ieee.std_logic_1164.all;

entity d_ff_async is
  port (d, clk, set, clr : in std_logic; q : out std_logic);
end entity d_ff_async;

architecture behavioral of d_ff_async is
  signal state : std_logic := '0';
begin
  process(clk, set, clr)
  begin
    if clr = '1' then
      state <= '0';
    elsif set = '1' then
      state <= '1';
    elsif rising_edge(clk) then
      state <= d;
    end if;
  end process;
  q <= state;
end architecture behavioral;
