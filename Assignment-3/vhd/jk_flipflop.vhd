library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop is
  port (j, k, clk : in std_logic; q : out std_logic);
end entity jk_flipflop;

architecture behavioral of jk_flipflop is
  signal state : std_logic := '0';
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if j = '0' and k = '1' then
        state <= '0';
      elsif j = '1' and k = '0' then
        state <= '1';
      elsif j = '1' and k = '1' then
        state <= not state;
      end if;
    end if;
  end process;
  q <= state;
end architecture behavioral;
