🔌 Multiplexadores em SystemVerilog


Projeto desenvolvido como parte da disciplina Laboratório de Organização de Computadores do CIn/UFPE (2026).

Implementação de multiplexadores utilizando SystemVerilog, com foco em modularidade e construção de circuitos digitais.

📁 Estrutura do Projeto
project1/
├── mux4.sv      # Implementação do MUX 4:1
└── tb_mux4.sv   # Testbench para validação
⚙️ Descrição

O projeto implementa um multiplexador 4:1 de 32 bits, responsável por selecionar uma entre quatro entradas com base em um sinal de controle.

🔹 Entradas:

a, b, c, d → dados de 32 bits

sel → seletor de 2 bits

🔹 Saída:

out → saída de 32 bits

🔄 Funcionamento
sel	saída
00	a
01	b
10	c
11	d
🧪 Testbench

O arquivo tb_mux4.sv realiza a simulação do circuito, permitindo verificar o comportamento do multiplexador para diferentes valores do seletor sel.

🧠 Conceitos abordados

Multiplexadores (MUX)

Modelagem em SystemVerilog

Estrutura modular de hardware

Simulação e validação com testbench

👥 Integrantes

Caio Agrelli
📧 caarr@cin.ufpe.br

Lucas David Lima Ferreira
📧 ldlf@cin.ufpe.br

🏫 Contexto acadêmico

Disciplina: Laboratório de Organização de Computadores

Instituição: Centro de Informática – UFPE (CIn)

Ano: 2026
