Library IEEE;
Use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity contador is
	port(
		clk, load, reset: in std_logic; --load carrega os dados a serem utilizados
		d: in std_logic_vector(3 downto 0);
		q: out std_logic_vector(3 downto 0)
	);
end contador;

architecture behavioral of contador is
begin
process(clk, reset)
variable count: std_logic_vector(3 downto 0); 
	begin 
		if(reset ='1') then
			count := "0000";
		elsif (clk'event and clk = '1') then
			if(load = '1') then 
			count := d;
			else 
				if(count = "1111") then 
					count := "0000";
			else 
				count := count + '1';
			end if;
		end if;
		end if;
	q <= count;
end process;
end behavioral;
	 