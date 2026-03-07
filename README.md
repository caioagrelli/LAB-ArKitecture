# Multiplexador 4:1 de 32 bits em SystemVerilog

## Descrição

Este projeto implementa um **multiplexador 4:1 de 32 bits** utilizando **SystemVerilog**, juntamente com um **testbench** para validação funcional do circuito.

O multiplexador seleciona uma entre quatro entradas de 32 bits com base em um sinal seletor de 2 bits.

A verificação é feita por meio de simulação, onde diferentes cenários de entrada são aplicados ao circuito e a saída é comparada automaticamente com o valor esperado.

---

# Estrutura do Projeto


.
├── mux2.sv # Multiplexador de 2 entradas
├── mux4.sv # Multiplexador 4:1 de 32 bits (usando mux2)
├── tb_mux4.sv # Testbench para validação
└── README.md


---

# Funcionamento do Multiplexador

O mux implementado segue a lógica:

| Selector | Saída |
|--------|--------|
| 00 | Entrada A |
| 01 | Entrada B |
| 10 | Entrada C |
| 11 | Entrada D |

Formalmente:


out = a, se sel = 00
out = b, se sel = 01
out = c, se sel = 10
out = d, se sel = 11


---

# Implementação

O multiplexador 4:1 foi construído utilizando **três multiplexadores 2:1**.

Estrutura lógica:

   sel[1]
     │
  ┌─────┐
  │MUX2 │
  └─┬─┬─┘
    │ │

┌────┘ └────┐
│ │
┌─────┐ ┌─────┐
│MUX2 │ │MUX2 │
└─┬─┬─┘ └─┬─┬─┘
│ │ │ │
a b c d
sel[0]


---

# Testbench

O **testbench** é responsável por gerar estímulos e verificar automaticamente o funcionamento do multiplexador.

Ele utiliza:

- `for` loops para variar o seletor
- diferentes padrões de entrada
- uma task `check_output()` para verificar a saída
- `assert` para detectar erros automaticamente

---

# Cenários de Teste

Foram implementados três cenários principais.

## Teste 1 — Uma entrada ativa

Apenas uma entrada possui valor diferente de zero.

Objetivo:

Verificar se o mux seleciona corretamente a entrada ativa.

---

## Teste 2 — Duas entradas ativas

Duas entradas possuem valores simultaneamente.

Objetivo:

Garantir que o mux seleciona **apenas a entrada indicada pelo seletor**, ignorando as demais.

---

## Teste 3 — Todas as entradas ativas

Todas as entradas possuem valores diferentes.

Objetivo:

Simular o cenário mais comum de operação do multiplexador.

---

# Verificação Automática

A verificação da saída é realizada por meio da task:

```systemverilog
task check_output;
    assert (out === expected)
        else $error("ERRO: t=%0t sel=%b expected=%h got=%h",
                    $time, selector, expected, out);
endtask

Esta task compara:

saida_real == saida_esperada

Caso os valores sejam diferentes, uma mensagem de erro é exibida.

Simulação

O projeto pode ser simulado utilizando ferramentas como:

ModelSim

QuestaSim

Vivado Simulator

Verilator

Exemplo de fluxo em ModelSim:

vlog mux2.sv mux4.sv tb_mux4.sv
vsim tb_mux4
run -all
Exemplo de Saída da Simulação
t=10 | sel=00 | expected=AAAAAAAA | out=AAAAAAAA
t=20 | sel=01 | expected=55555555 | out=55555555
t=30 | sel=10 | expected=12345678 | out=12345678
t=40 | sel=11 | expected=DEADBEEF | out=DEADBEEF

Caso ocorra erro:

ERRO: t=30 sel=10 expected=12345678 got=BBBBBBBB
Conceitos Demonstrados

Este projeto demonstra:

design hierárquico em hardware

multiplexadores

verificação funcional

uso de assert

criação de testbenches em SystemVerilog

uso de tasks para verificação

simulação de circuitos digitais

Autor

Projeto desenvolvido para estudo de Arquitetura de Computadores / Sistemas Digitais utilizando SystemVerilog.