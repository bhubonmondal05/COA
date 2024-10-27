library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
    port (
        A       : in std_logic;
        B       : in std_logic;
        carry_in : in std_logic;
        sum     : out std_logic;
        carry_out : out std_logic
    );
end full_adder;

architecture flow of full_adder is
    component half_adder is 
        port (
            A       : in std_logic;
            B       : in std_logic;
            sum     : out std_logic;
            carryout : out std_logic
        );
    end component;

    component OR_gate is
        port (
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
        );
    end component;

    signal T1, T2, T3 : std_logic;

begin 
    half_adder1 : half_adder port map (A => A, B => B, sum => T1, carryout => T2);
    half_adder2 : half_adder port map (A => T1, B => carry_in, sum => sum, carryout => T3); 
    OR_gate1 : OR_gate port map (A => T3, B => T2, Y => carry_out);
end flow;
