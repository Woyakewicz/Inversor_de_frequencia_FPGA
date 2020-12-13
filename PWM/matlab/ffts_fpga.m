clear all;
close all;
clc;
%rotina para testar modulação AM
%abre o sinal, multiplica por um coseno e mostra a saida

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DECALARAÇÕES INICIAIS
n_b = 12;      % Numero de bits
fs = 18E3;     % Frequencia de Amostragem
fs2 = 390E3;    % Frequencia de Amostragem
fs3 = 4E6;    % Frequencia de Amostragem
% teorema de nyquist 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% GERA SINAL DE ENTRADA

n = 5E4;        % Numero de amostras
Ts = 1/fs;      % Periodo de amostragem
Ts2 = 1/fs2;
Ts3 = 1/fs3;

% fp = fopen('signal_tone_10khz_48k.hex','r');
% Am = fscanf(fp,'%x');
% tama = length(Am);
% for i =1:tama
%    j = Am(i);
%     if j>32767
%        Am(i) = Am(i) - 65538;
%     end   
% end   
% Am = Am/32768;
% fclose (fp);
%  Am = Am.';
%  
tama = 80000;
t_18k = 0:Ts:Ts*(tama-1);  % Gera vetor tempo
t_390k = 0:Ts2:Ts2*(tama-1); % Gera vetor tempo
t_4M = 0:Ts3:Ts3*(tama-1); % Gera vetor tempo

fp2 = fopen('file_out_portadora.hex','r');
fpga_portadora = fscanf(fp2,'%x');
tama2 = length(fpga_portadora);
for i =1:tama2
   j = fpga_portadora(i);
    if j>2048
       fpga_portadora(i) = fpga_portadora(i) - 4096;
    end   
end   
fpga_portadora = fpga_portadora/2048;
fclose (fp2);
 fpga_portadora = fpga_portadora.';
 
fp3 = fopen('file_out_senoid.hex','r');
senoid = fscanf(fp3,'%x');
tama3 = length(senoid);
for i =1:tama3
   j = senoid(i);
    if j>2048
       senoid(i) = senoid(i) - 4096;
    end   
end   
senoid = senoid/2048;
fclose (fp3);
 senoid = senoid.';
 
fp4 = fopen('file_out_driver1.hex','r');
driver1 = fscanf(fp4,'%x');
tama4 = length(driver1);
for i =1:tama4
   j = driver1(i);
    if j>2048
       driver1(i) = driver1(i) - 4096;
    end   
end   
driver1 = driver1/2048;
fclose (fp4);
 driver1 = driver1.';


fp5 = fopen('file_out_driver2.hex','r');
driver2 = fscanf(fp5,'%x');
tama5 = length(driver2);
for i =1:tama5
   j = driver2(i);
    if j>2048
       driver2(i) = driver2(i) - 4096;
    end   
end   
driver2 = driver2/2048;
fclose (fp5);
 driver2 = driver2.';
 


 % script para ffts
n = 2^nextpow2(tama);
fdomain = fs*(0:(n/2))/n;           %18E3
fdomain2 = fs2*(0:(n/2))/n;         %390E3
fdomain3 = fs3*(0:(n/2))/n;         %4E6


%para portadora
Yport = fft(fpga_portadora,n);
Pport = abs(Yport/n);

%para senoide
Ysenoid = fft(senoid,n);
Psenoid = abs(Ysenoid/n);

%para driver 1
Ydriver1 = fft(driver1,n);
Pdriver1 = abs(Ydriver1/n);

%para driver 2
Ydriver2 = fft(driver2,n);
Pdriver2 = abs(Ydriver2/n);

 
figure;                                             %Cria figura
subplot(4,1,1),plot(fdomain2,Pport(1:n/2+1), 'green')     
subplot(4,1,2),plot(fdomain,Psenoid(1:n/2+1), 'blue')                
subplot(4,1,3),plot(fdomain2,Pdriver1(1:n/2+1), 'red')
subplot(4,1,4),plot(fdomain2,Pdriver2(1:n/2+1), 'yellow') 
% subplot(7,1,5),plot(fdomain2,Pinterp2_i(1:n/2+1), 'green') 
% subplot(7,1,6),plot(fdomain2,Pinterp2_q(1:n/2+1), 'blue') 
% subplot(7,1,7),plot(fdomain2,Pfpga(1:n/2+1), 'red')                

hold;

figure;                                             %Cria figura
subplot(4,1,1),plot(t_390k(1:1000),fpga_portadora(1:1000), 'green')     
subplot(4,1,2),plot(t_18k(1:900),senoid(1:900), 'blue')               
subplot(4,1,3),plot(t_390k(1:1000),driver1(1:1000), 'red')               
subplot(4,1,4),plot(t_390k(1:1000),driver2(1:1000), 'yellow')
% subplot(7,1,5),plot(t_120M(1:tama),interp2_i(20001:(20000+tama)), 'green')
% subplot(7,1,6),plot(t_120M(1:tama),interp2_q(20001:(20000+tama)), 'blue')
% subplot(7,1,7),plot(t_120M(1:tama),fpga_out(20001:(20000+tama)), 'red')               
% plot(t, Ac, 'green', t, Am, 'blue', t, mod, 'red')
 %plot(t(1:40000),fpga_out(1:40000))
hold;