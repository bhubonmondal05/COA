library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1_to_4 is
    port (
        data        : in std_logic;                  -- Input data
        select_line : in std_logic_vector(1 downto 0); -- 2-bit select line
        enable      : in std_logic;                  -- Enable signal
        output      : out std_logic_vector(3 downto 0) -- 4 output lines
    );
end demux_1_to_4;

architecture behavior of demux_1_to_4 is
begin
    process(data, select_line, enable)
    begin
        if enable = '1' then
            output <= (others => '0');  -- Set all outputs to 0 initially
            case select_line is
                when "00" =>
                    output(0) <= data;  -- Route data to output 0
                when "01" =>
                    output(1) <= data;  -- Route data to output 1
                when "10" =>
                    output(2) <= data;  -- Route data to output 2
                when "11" =>
                    output(3) <= data;  -- Route data to output 3
                when others =>
                    output <= (others => '0');  -- Default case
            end case;
        else
            output <= (others => '0');  -- Disable all outputs when not enabled
        end if;
    end process;
end behavior;

