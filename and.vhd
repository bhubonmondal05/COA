library IEEE;
use IEEE.std_logic_1164.all;

entity AND_gate is
    port (
        A,B : in std_logic;      
        Y : out std_logic      
    );
end AND_gate;

architecture bhv of AND_gate is
begin
    Y <= A and B;  
end bhv;

