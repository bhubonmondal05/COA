library IEEE;
use IEEE.std_logic_1164.all;

entity OR_gate is
    port (
        A,B : in std_logic;      
        Y : out std_logic      
    );
end OR_gate;

architecture bhv of OR_gate is
begin
    Y <= A OR B;  
end bhv;

