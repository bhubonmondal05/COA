library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor is
    port(
        A       : in std_logic;   -- Minuend
        B       : in std_logic;   -- Subtrahend
        B_in    : in std_logic;   -- Borrow input
        D       : out std_logic;  -- Difference
        B_out    : out std_logic   -- Borrow output
    );
end full_subtractor;

architecture behavioral of full_subtractor is
begin
    process(A, B, B_in)
    begin
        -- Calculate Difference
        D <= A XOR B XOR B_in;  -- D = A ? B ? B_in

        -- Calculate Borrow
        B_out <= (not A and B) or (B_in and (not A or B));  -- Borrow output
    end process;
end behavioral;

