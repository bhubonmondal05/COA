library ieee;
use ieee.std_logic_1164.all;

entity decoder_2to4 is
    port(
        input  : in std_logic_vector(1 downto 0);  -- 2-bit input
        output : out std_logic_vector(3 downto 0)  -- 4-bit output
    );
end decoder_2to4;

architecture behavioral of decoder_2to4 is
begin
    process(input)
    begin
        output <= "0000";  -- Initialize all outputs to 0
        case input is
            when "00" =>
                output <= "0001";  -- Activate output 0
            when "01" =>
                output <= "0010";  -- Activate output 1
            when "10" =>
                output <= "0100";  -- Activate output 2
            when "11" =>
                output <= "1000";  -- Activate output 3
            when others =>
                output <= "0000";  -- Default case (no output active)
        end case;
    end process;
end behavioral;
