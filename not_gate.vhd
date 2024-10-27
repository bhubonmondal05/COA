library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_gate is
    port (
        A : in std_logic;      
        Y : out std_logic      
    );
end NOT_gate;

architecture bhv of NOT_gate is
begin
    Y <= NOT A;  
end bhv;

