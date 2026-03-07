// Mux de 2 entradas (com 32 bits)
module mux(
    output logic [31:0] f,          // saida do mux
    input logic [31:0] a, b,        // entradas do mux
    input logic sel                 // entradas do mux e chave seletora
);
        assign f = sel ? b : a; // se sel for 1, f recebe b, senao recebe a
endmodule: mux

 
// Mux de 4 entradas usando 3 mux's de 2 entradas
module mux4(
    input logic [31:0] a, b, c, d,  // 4 entradas de 32 bits
    input logic [1:0] sel,         // chave seletora de 2 bits
    output logic [31:0] out        // saida de 32 bits 
);

    logic [31:0] s1, s2; // sinais intermediarios 

    // Mux's para selecionar entre as entradas a, b, c e d e ligar a chave seletora [0]
    mux m1 (.f(s1), .a(a), .b(b), .sel(sel[0]));
    mux m2 (.f(s2), .a(c), .b(d), .sel(sel[0]));

    // Mux para selecionar entre os resultados dos mux's anteriores e adicionar a chave seletora [1]
    mux m3 (.f(out), .a(s1), .b(s2), .sel(sel[1])); 
    
endmodule: mux4
