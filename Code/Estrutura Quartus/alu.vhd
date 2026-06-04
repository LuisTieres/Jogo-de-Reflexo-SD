-- Projeto didático de um microcontrolador
-- ELT029 - Laboratório de Sistemas Digitais
-- Professor Tiago C. Magalhães

-- bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- declaração da entidade
entity alu is
	port(
		ALUControl 	: in 	STD_LOGIC_VECTOR(2 downto 0);
		Src_A 		: in 	STD_LOGIC_VECTOR(3 downto 0);
		Src_B			: in 	STD_LOGIC_VECTOR(3 downto 0);
		ALU_out 		: out STD_LOGIC_VECTOR(3 downto 0)
	);
end;

-- descrição
architecture design of alu is

	signal ALU_result : STD_LOGIC_VECTOR(3 downto 0);

begin

	with ALUControl select
			ALU_result <=  Src_A and Src_B 	when 	"010",
								Src_A or Src_B 	when 	"011",
								"0000" 				when 	others;
	
	ALU_out <= ALU_result;
								
end;	

