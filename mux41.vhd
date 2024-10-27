library ieee;
use ieee.std_logic_1164.all;

entity mux_41 is
    port(
        data        : in std_logic_vector(3 downto 0);  -- 4 data inputs
        select_line : in std_logic_vector(1 downto 0);  -- 2 select lines
        enable      : in std_logic;                      -- Enable signal
        output      : out std_logic                       -- Output signal
    );
end mux_41;

architecture sim of mux_41 is
begin
    process(data, select_line, enable)
    begin
        if enable = '1' then
            case select_line is
                when "00" =>
                    output <= data(0);
                when "01" =>
                    output <= data(1);
                when "10" =>
                    output <= data(2);
                when "11" =>
                    output <= data(3);
                when others =>
                    output <= 'X';  -- This case is unlikely to happen, but can be included for completeness
            end case;
        else
            output <= '0';  -- Disable output when enable is low
        end if;
    end process;
end sim;
