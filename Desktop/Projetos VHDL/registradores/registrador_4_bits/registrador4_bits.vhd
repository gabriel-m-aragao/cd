Library IEEE;
Use IEEE.std_logic_1164.all;

entity registrador4_bits is
port(
		d0,d1,d2,d3: in std_logic;
		cargageral, rst: in std_logic;
		clk: in std_logic;
		
		q_out0,q_out1,q_out2,q_out3 : out  std_logic
);

end registrador4_bits;

architecture arc_registrador4_bits of registrador4_bits is

component registrador_1bit
	port(
			clock,reset, carga : in std_logic;
			dado: in std_logic;

			q,q_not: out std_logic
	);
end component;	

begin 

registrador1:registrador_1bit
	port map( dado=> d0 , clock=>clk, carga => cargageral, reset=>rst, q=>q_out0);
	
registrador2:registrador_1bit
	port map( dado=> d1 ,clock=>clk, carga => cargageral, reset=>rst, q=>q_out1);
	
registrador3:registrador_1bit
	port map( dado=> d2 ,clock=>clk, carga => cargageral, reset=>rst, q=>q_out2);
	
registrador4:registrador_1bit
	port map( dado=> d3 ,clock=>clk, carga => cargageral, reset=>rst, q=>q_out3);

end arc_registrador4_bits;