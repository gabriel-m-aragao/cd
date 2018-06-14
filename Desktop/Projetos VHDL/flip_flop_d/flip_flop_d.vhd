Library IEEE;
Use IEEE.std_logic_1164.all;

entity flip_flop is
port(
	dado,clock,reset : in std_logic;
	

	q,q_not: out std_logic
);

end flip_flop;

architecture arc_flip_flop of flip_flop is
begin
	
		process(clock,reset)
		begin
			if (reset ='1') then
			 q<='0';
			 q_not<='1';
			
			 
			elsif (clock'event and clock ='1') then
				q<=dado; 
				q_not<=not(dado);	
			 end if;
	end process;
	
end arc_flip_flop;				