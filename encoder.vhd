library ieee;
use ieee.std_logic_1164.all;

entity encoder1 is
    port(
        a: in std_logic_vector(3 downto 0);
        b: out std_logic_vector(1 downto 0)
    );
end encoder1;

architecture bhv of encoder1 is
begin
    process(a)
    begin
        case a is
            when "1000" => 
                b <= "00";
            when "0100" => 
                b <= "01";
            when "0010" => 
                b <= "10";
            when "0001" => 
                b <= "11";
            when others => 
                b <= "00";  -- or another defined value
        end case;
    end process;
end bhv;
