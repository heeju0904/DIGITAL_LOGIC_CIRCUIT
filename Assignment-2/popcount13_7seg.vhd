library ieee;
use ieee.std_logic_1164.all;

-- seg(6 downto 0) = a,b,c,d,e,f,g; active high; common cathode.
-- A 13-bit vector has a population count between 0 and 13 (0x0 to 0xD).
entity popcount13_7seg is
    port (vt : in std_logic_vector(12 downto 0);
          en : in std_logic;
          seg : out std_logic_vector(6 downto 0));
end popcount13_7seg;

architecture rtl of popcount13_7seg is
begin
    process(vt, en)
        variable count_ones : integer range 0 to 13;
    begin
        count_ones := 0;
        for i in vt'range loop
            if vt(i) = '1' then
                count_ones := count_ones + 1;
            end if;
        end loop;
        if en = '0' then
            seg <= "0000000";
        else
            case count_ones is
                when 0  => seg <= "1111110";
                when 1  => seg <= "0110000";
                when 2  => seg <= "1101101";
                when 3  => seg <= "1111001";
                when 4  => seg <= "0110011";
                when 5  => seg <= "1011011";
                when 6  => seg <= "1011111";
                when 7  => seg <= "1110000";
                when 8  => seg <= "1111111";
                when 9  => seg <= "1111011";
                when 10 => seg <= "1110111"; -- A
                when 11 => seg <= "0011111"; -- b
                when 12 => seg <= "1001110"; -- C
                when 13 => seg <= "0111101"; -- d
                when others => seg <= "0000000";
            end case;
        end if;
    end process;
end rtl;
