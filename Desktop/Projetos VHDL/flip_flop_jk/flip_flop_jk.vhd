Library IEEE;
Use IEEE.std_logic_1164.all;
entity flip_flop_jk is
port(
	j,k,clock,reset : in std_logic;
	

	q,q_not: out std_logic
);

end flip_flop_jk;

architecture arc_flip_flop_jk of flip_flop_jk is
signal temp:std_logic;
begin
process(clock,reset)
begin 
	if(reset='1') then
		temp<='0';
	elsif(clock'event and clock ='1')then
		if(j='0' and k='0')then
			temp<=temp;
		elsif(j='1' and k='0')then
			temp<='1';
		elsif(j='0' and k='1')then
			temp<='0';
		elsif(j='0' and k='0')then
			temp<=not temp;
		end if;
	end if;
q<=temp;	
end process; 
end arc_flip_flop_jk;