Library IEEE;
Use IEEE.std_logic_1164.all;

entity registrador_deslocador is
port(
	
		i0,i1,i2,i3: in std_logic;
		carga1,carga0: in std_logic;
		rst: in std_logic;
		clk: in std_logic;
		
		q_out0,q_out1,q_out2,q_out3 : out  std_logic
);	

end registrador_deslocador;

architecture arc_registrador_deslocador of registrador_deslocador is
signal s0,s1,s2,s3: std_logic;
component registrador_deslocador_1bit
	port(
		clock,clear, c1,c0 : in std_logic;
	d: in std_logic;

	q,q_not: out std_logic
	);

end component;	

begin 

registrador0:registrador_deslocador_1bit
	port map(d=> i0 , clock=>clk, c1 => carga1, c0=>carga0 reset=>rst, q=>q_out0, s0=>desloca_esquerda);
	
registrador1:registrador_deslocador_1bit
	port map(d=> i1 , clock=>clk, c1 => carga1, c0=>carga0 reset=>rst, q=>q_out1, d=>s0);
	
registrador2:registrador_deslocador_1bit
	port map(d=> i2 , clock=>clk, carga => cargageral, reset=>rst,);
	
registrador3:registrador_deslocador_1bit
	port map(d=> i3 , clock=>clk, carga => cargageral, reset=>rst,);

end arc_registrador_deslocador;