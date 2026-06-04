library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mcu_project is
	PORT(
		SW    : in  STD_LOGIC_VECTOR(9 downto 0);	-- Chaves de entrada (interface com mundo externo)
		LEDR  : out STD_LOGIC_VECTOR(9 downto 0)	-- LEDs de saída com resultado do
	);
end;


architecture design of mcu_project is

	-- sinais associados à ALU
	signal regA, regB 	: STD_LOGIC_VECTOR(3 downto 0);
	signal alu_op 			: STD_LOGIC_VECTOR(2 downto 0);
	signal alu_result 	: STD_LOGIC_VECTOR(3 downto 0);

begin
	
	-- Unidade Lógica e Aritmética
	ALU0: entity work.alu
	port map(
		ALUControl	=> alu_op,
		Src_A 		=> regA,
		Src_B 		=> regB,
		ALU_out		=> alu_result
	);
	
end;