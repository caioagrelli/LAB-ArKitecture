//definindo escala de tempo para a simulação
`timescale 1ns/1ps

module tb_mux4;
    logic [3.0] [31:0] count;   // contador para gerar combinações das 4 entradas            
    logic [31:0] out;          // saída do mux4
    logic [1:0] sel;           // chave seletora
    logic [31:0] exp;         // valor esperado na saída

    // instanciando o mux4
    mux4 dut(.a(count[0]), .b(count[1]), .c(count[2]), .d(count[3]), .sel(sel), .out(out));

    // definir quais valores são esperados para cada chave
    always_comb begin
        case (sel)
            2'b00: exp = count[0];          // a
            2'b01: exp = count[1];          // b
            2'b10: exp = count[2];          // c
            2'b11: exp = count[3];          // d
            default: exp = 32'hXXXXXXXX;    // caso não esperado
        endcase
    end

    // task para testar se a saída do mux tá correta (usando o expected)
    task check;
        assert (out === exp)
            else $error("ERRO: %0t Time |Sel: %2'b |Esperado: %h |Saída: %h",
                $time, sel, exp, out);
    endtask

    initial begin
        sel = 2'b00;  // inicializando a chave seletora
        cont = '0;    // inicializando o contador
        #10;           // esperar a simulação estabilizar

        $monitor("%0t Time |A: %4'b |B: %4'b |C: %4'b |D: %4'b | Sel: %2'b | Out: %32'b",
            $time, a, b, c, d, sel, out);

        // teste 1: uma entrada ativa
        for (int key = 0; key < 4; key++) begin
            sel = key;
            count = '0;
            count[key] = 32'h11111111 + key; // atribuir um valor único para cada entrada
            #10;
            check(); // verificar se a saída corresponde a única entrada selecionada
        end

        // teste 2: todas as entradas ativas
        count[0] = 32'hAAAAAAAA;
        count[1] = 32'hBBBBBBBB;
        count[2] = 32'hCCCCCCCC;
        count[3] = 32'hDDDDDDDD;

        for (int i = 0; i < 4; i++) begin
            sel = i;
            #10;
            check(); // teste de fogo (so precisava desse, mas coloquei o teste 1 só pra garantir)
        end

        $finish;
    end
endmodule: tb_mux4  