library ieee;
use ieee.std_logic_1164.all;

entity mux_81 is
    port(
        data        : in std_logic_vector(7 downto 0);
        select_line : in std_logic_vector(2 downto 0);
        enable      : in std_logic;
        output      : out std_logic
    );
end mux_81;

architecture sim of mux_81 is
begin
    process(data, select_line, enable)
    begin
        if enable = '1' then
            case select_line is
                when "000" => output <= data(0);
                when "001" => output <= data(1);
                when "010" => output <= data(2);
                when "011" => output <= data(3);
                when "100" => output <= data(4);
                when "101" => output <= data(5);
                when "110" => output <= data(6);
                when "111" => output <= data(7);
                when others => output <= 'X';  -- Undefined case for robustness
            end case;
        else
            output <= '0';  -- Optionally change to 'Z' for high impedance
        end if;
    end process;
end sim;


