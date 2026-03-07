// Mux de 2 entradas (com 32 bits)
module mux(
    output logic [31:0] f,          // saída do mux
    input logic [31:0] a, b,        // entradas do mux
    input logic sel                 // entradas do mux e chave seletora
);
    
    not     n1 (n_sel, sel);        // a chave seletora é invertida
    and #2  a1 (and_a, a, n_sel),   // (ativada sel = 0)
            a2 (and_b, b, sel);     // (ativada sel = 1)
    or  #2  o1 (f, and_a, and_b);   // porta OR para o resultado final
endmodule: mux


// Mux de 4 entradas usando 3 mux's de 2 entradas
module mux4(
    input logic [31:0] a, b, c, d,  // 4 entradas de 32 bits
    input logic [1:0] sel,         // chave seletora de 2 bits
    output logic [31:0] out        // saída de 32 bits
);

    // Mux's para selecionar entre as entradas a, b, c e d e ligar a chave seletora [0]
    mux m1 (.f(s1), .a(a), .b(b), .sel(sel[0]));    // mux a e b
    mux m2 (.f(s2), .a(c), .b(d), .sel(sel[0]));    // mux c e d

    // Mux para selecionar entre os resultados dos mux's anteriores e adicionar a chave seletora [1]
    mux m3 (.f(out), .a(s1), .b(s2), .sel(sel[1])); 
    
endmodule: mux4
