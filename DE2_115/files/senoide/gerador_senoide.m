clear all
clc

n_b = 12; 
N = [0:299];

V_tabela = 820*sin((2*pi*N)/300);

Hn=round(V_tabela);
%V_tabela = typecast(V_tabela,'uint16');
%V_tabela = int16(V_tabela);
write_mif(Hn,n_b,'senoide.mif');