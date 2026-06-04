-- Projeto didático de um microcontrolador
-- ELT029 - Laboratório de Sistemas Digitais
-- Professor Tiago C. Magalhães
-- test bench

-- bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity alu_tb is
end;

architecture test of alu_tb is

	-- sinais para conectar ao DUT (Device Under Test)
	signal ALUControl_tb : STD_LOGIC_VECTOR(2 downto 0);
	signal Src_A_tb 		: STD_LOGIC_VECTOR(3 downto 0);
	signal Src_B_tb		: STD_LOGIC_VECTOR(3 downto 0);
	signal ALU_out_tb 	: STD_LOGIC_VECTOR(3 downto 0);

begin

	-- solicitação direta do componente
	DUT: entity work.alu
	port map(
		ALUControl 	=> ALUControl_tb,
		Src_A 		=> Src_A_tb,
		Src_B 		=> Src_B_tb,
		ALU_out 		=> ALU_out_tb
	);
	

	-- Estímulos
	process
	begin
		
		Src_A_tb <= "0100";
		Src_B_tb <= "0010";
	
		-- Caso 1: adição
		ALUControl_tb <= "000";
		wait for 10 ns;

		-- Caso 2: subtração
		ALUControl_tb <= "001";
		wait for 10 ns;

		-- Caso 3: AND
		ALUControl_tb <= "010";
		wait for 10 ns;

		-- Caso 4: OR
		ALUControl_tb <= "011";
		wait for 10 ns;

		wait;
	end process;

end;	



