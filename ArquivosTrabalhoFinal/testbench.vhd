-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component circuito is
port(
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  s: out std_logic);
end component;

signal a_in, b_in, c_in, s_out: std_logic;

begin

  -- Connect DUT
  DUT: circuito port map(a_in, b_in, c_in, s_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    c_in <= '0';
    wait for 1 ns;
    assert(s_out='0') report "Falha 0/0" severity error;
  
    a_in <= '0';
    b_in <= '0';
    c_in <= '1';
    wait for 1 ns;
    assert(s_out='1') report "Falha 0/0" severity error;

    a_in <= '0';
    b_in <= '1';
    c_in <= '0';
    wait for 1 ns;
    assert(s_out='1') report "Falha 0/0" severity error;

    a_in <= '0';
    b_in <= '1';
    c_in <= '1';
    wait for 1 ns;
    assert(s_out='0') report "Falha 0/0" severity error;
    
    a_in <= '1';
    b_in <= '0';
    c_in <= '0';
    wait for 1 ns;
    assert(s_out='0') report "Falha 0/0" severity error;
    
    a_in <= '1';
    b_in <= '0';
    c_in <= '1';
    wait for 1 ns;
    assert(s_out='1') report "Falha 0/0" severity error;
    
    a_in <= '1';
    b_in <= '1';
    c_in <= '0';
    wait for 1 ns;
    assert(s_out='1') report "Falha 0/0" severity error;
    
    a_in <= '1';
    b_in <= '1';
    c_in <= '1';
    wait for 1 ns;
    assert(s_out='1') report "Falha 0/0" severity error;
    
    -- Clear inputs
    a_in <= '0';
    b_in <= '0';
    c_in <= '0';

    assert false report "Teste finalizado." severity note;
    wait;
  end process;
end tb;