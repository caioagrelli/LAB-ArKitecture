# 🔌 Multiplexadores em SystemVerilog

<div align="center">

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-HDL-blue?style=for-the-badge)
![UFPE](https://img.shields.io/badge/UFPE-CIn-green?style=for-the-badge)
![Status](https://img.shields.io/badge/status-acadêmico-lightgrey?style=for-the-badge)
![Linguagem](https://img.shields.io/badge/linguagem-SystemVerilog-orange?style=for-the-badge)

**Projeto acadêmico desenvolvido para a disciplina de Laboratório de Organização de Computadores — CIn/UFPE (2026)**

</div>

---

## 📌 Sobre o Projeto

Este projeto implementa um **multiplexador 4:1 de 32 bits** em **SystemVerilog**, com foco em modularidade, clareza de código e validação via testbench. Desenvolvido como atividade prática da disciplina de **Laboratório de Organização de Computadores** do Centro de Informática da UFPE.

---

## 📁 Estrutura do Projeto
```bash
project1/
├── mux4.sv       # Implementação do MUX 4:1 de 32 bits
└── tb_mux4.sv    # Testbench para simulação e validação
```

---

## ⚙️ Descrição do Circuito

O módulo implementa um **multiplexador 4:1**, responsável por selecionar uma entre quatro entradas de 32 bits com base em um sinal de controle de 2 bits.

### 🔹 Entradas

| Sinal | Largura | Descrição              |
|-------|---------|------------------------|
| `a`   | 32 bits | Entrada de dados 0     |
| `b`   | 32 bits | Entrada de dados 1     |
| `c`   | 32 bits | Entrada de dados 2     |
| `d`   | 32 bits | Entrada de dados 3     |
| `sel` | 2 bits  | Sinal de seleção       |

### 🔸 Saída

| Sinal | Largura | Descrição              |
|-------|---------|------------------------|
| `out` | 32 bits | Saída selecionada      |

---

## 🔄 Tabela Verdade

| `sel` | `out` |
|:-----:|:-----:|
| `00`  | `a`   |
| `01`  | `b`   |
| `10`  | `c`   |
| `11`  | `d`   |

---

## 🧪 Testbench

O arquivo `tb_mux4.sv` realiza a **simulação completa** do circuito, cobrindo todos os valores possíveis do seletor `sel` para verificar o comportamento correto do multiplexador em cada caso.

---

## 🧠 Conceitos Abordados

- ✅ Multiplexadores (MUX) e lógica combinacional
- ✅ Modelagem estrutural e comportamental em SystemVerilog
- ✅ Projeto modular de hardware
- ✅ Simulação e validação com testbench

---

## 👥 Integrantes

| Nome                      | E-mail                  |
|---------------------------|-------------------------|
| Caio Agrelli              | caarr@cin.ufpe.br       |
| Lucas David Lima Ferreira | ldlf@cin.ufpe.br        |

---

## 🏫 Contexto Acadêmico

| Campo        | Informação                                    |
|--------------|-----------------------------------------------|
| Disciplina   | Laboratório de Organização de Computadores    |
| Instituição  | Centro de Informática – UFPE (CIn)            |
| Ano          | 2026                                          |
