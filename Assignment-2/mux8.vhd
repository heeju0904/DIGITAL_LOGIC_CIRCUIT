library ieee;
use ieee.std_logic_1164.all;

entity mux8 is
    port (data_in : in std_logic_vector(7 downto 0);
          sel : in std_logic_vector(2 downto 0);
          data_out : out std_logic);
end mux8;

architecture rtl of mux8 is
begin
    with sel select
        data_out <= data_in(0) when "000",
                    data_in(1) when "001",
                    data_in(2) when "010",
                    data_in(3) when "011",
                    data_in(4) when "100",
                    data_in(5) when "101",
                    data_in(6) when "110",
                    data_in(7) when others;
end rtl;
