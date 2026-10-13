library ieee;
use ieee.std_logic_1164.all;

-- seg(6 downto 0) = a,b,c,d,e,f,g; 1 means ON (common cathode).
-- code 000=a, 001=b, 010=c, 011=d, 100=f, 101=g.
entity letters7seg is
    port (code : in std_logic_vector(2 downto 0);
          seg : out std_logic_vector(6 downto 0));
end letters7seg;

architecture rtl of letters7seg is
begin
    with code select
        seg <= "1110111" when "000", -- a (A)
               "0011111" when "001", -- b
               "1001110" when "010", -- c
               "0111101" when "011", -- d
               "1000111" when "100", -- f (F)
               "1011111" when "101", -- g (G-like)
               "0000000" when others;
end rtl;
