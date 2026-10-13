library ieee;
use ieee.std_logic_1164.all;

entity vote25 is
    port (vt : in std_logic_vector(24 downto 0);
          result : out std_logic);
end vote25;

architecture rtl of vote25 is
begin
    process(vt)
        variable votes : integer range 0 to 25;
    begin
        votes := 0;
        for i in vt'range loop
            if vt(i) = '1' then
                votes := votes + 1;
            end if;
        end loop;
        if votes >= 13 then
            result <= '1';
        else
            result <= '0';
        end if;
    end process;
end rtl;
