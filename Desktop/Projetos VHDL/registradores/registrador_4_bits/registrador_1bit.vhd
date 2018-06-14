Library IEEE;
Use IEEE.std_logic_1164.all;


entity registrador_1bit is
port(
	clock,reset, carga : in std_logic;
	dado: in std_logic;

	q,q_not: out std_logic
);

end registrador_1bit;

architecture arc_registrador_4_bits of registrador_1bit is

signal qtemp: std_logic;
begin
	
		process(clock,reset)
		begin
			if (reset ='1') then
			 q<='0';
			 --q_not<='1';
			
			 
			elsif (clock'event and clock ='1') then
				if carga = '1' then
					q<=dado;
					
				--q_not<=not(dado);
				
				else
					q<=qtemp;
					
				end if;				
			end if;
		end process;
end arc_registrador_4_bits;