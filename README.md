🎮 Jogo de Reflexo em VHDL

Projeto desenvolvido para a disciplina de Sistemas Digitais da Universidade Federal de Minas Gerais (UFMG).

📖 Descrição

O Jogo de Reflexo é um sistema digital implementado em VHDL para FPGA DE10-Lite que mede o tempo de reação do usuário a um estímulo visual.

Após o início da partida, o sistema aguarda um intervalo pseudoaleatório e acende um LED indicando que o usuário deve pressionar o botão de resposta o mais rápido possível. O tempo de reação é então calculado, exibido nos displays de sete segmentos e comparado com o melhor tempo registrado.

O projeto foi desenvolvido seguindo uma arquitetura RTL (Register Transfer Level), com separação entre Unidade de Controle e Caminho de Dados, utilizando máquinas de estados finitos (FSM), registradores, contadores e temporizadores.

🚀 Funcionalidades
- Início de partida por botão
- Geração de atraso pseudoaleatório
- Estímulo visual através de LEDs
- Medição do tempo de reação
- Exibição do resultado em displays HEX
- Registro do melhor tempo (recorde)
- Sistema de pontuação simples
- Reset do sistema

🏗️ Arquitetura

O sistema é composto pelos seguintes módulos:

- FSM de Controle  
- Temporizador  
- Gerador de atraso pseudoaleatório  
- Registrador de recorde  
- Decodificador para display de sete segmentos  
- Módulo Top-Level  

🛠️ Tecnologias Utilizadas
- VHDL  
- Intel Quartus Prime  
- ModelSim  
- FPGA DE10-Lite  

📂 Estrutura do Projeto
src/
├── control_fsm.vhd
├── timer.vhd
├── random_delay.vhd
├── record_register.vhd
├── hex_decoder.vhd
└── top_level.vhd

tb/
├── tb_timer.vhd
├── tb_record_register.vhd
├── tb_fsm.vhd
└── tb_top.vhd

docs/
├── especificacao.pdf
├── arquitetura.pdf
└── relatorio_final.pdf

🎯 Objetivos Acadêmicos

Aplicar conceitos de projeto RTL
Desenvolver máquinas de estados finitos (FSM)
Implementar sistemas digitais em FPGA
Realizar verificação funcional através de testbenches
Integrar hardware e software de apoio ao desenvolvimento

👥 Autores

Luis Filipe Tieres da Silva
Nome do Integrante

Disciplina: Sistemas Digitais
Universidade: Universidade Federal de Minas Gerais (UFMG)
Ano: 2026