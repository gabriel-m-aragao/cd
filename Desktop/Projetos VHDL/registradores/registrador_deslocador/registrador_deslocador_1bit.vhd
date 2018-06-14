Library IEEE;
Use IEEE.std_logic_1164.all;


entity registrador_deslocador_1bit is
port(
	clock,clear, c1,c0 : in std_logic;
	d,input: in std_logic;

	q,q_not: out std_logic
);

end registrador_1bit;

architecture arc_registrador_deslocador_4bits of registrador_deslocador_1bit is

signal desloca_esquerda,desloca_direita: std_logic;
begin
	
		process(clock,clear)
		begin
			if (clear='1') then
			 q<='0';
			 --q_not<='1';
			
			 
			elsif (clock'event and clock ='1') then
				if c1 = '0' and c0='0' then
					d<=q;
					elsif c1 = '0' and c0='1' then
						desloca_esquerda => d;
					elsif c1 = '1' and c0='0' then
						desloca_direita => d;
					elsif c1 = '1' and c0='1' then
						q<=input;
					
				end if;				
			end if;
		end process;
end arc_registrador_deslocador_4bits;