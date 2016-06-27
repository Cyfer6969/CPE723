%% Questao 3

% Gera��o dos dados iniciais
x_0 = 1;
x = x_0;
eps = 0.1;
k = 1;
T = 0.1;


R = -1 + 2*rand(1000000,1);


for i=2:size(R,1);
    
    %C�lculo da amostra com perturba��o.
    x(i) = x(i-1) - eps*R(i);
    
    
    dJ = x(i).^2 - x(i-1).^2;
    
    q = exp(-dJ/(k*T));
    
    r = rand();
    
    if (r > q)
        a = 0;
    else
        a = 1;
    end
    
    %Se dJ < 0 j� podemos aceitar a part�cula
    %Caso contr�rio tomaremos a amostra atual
    %e a rejeitaremos ou n�o dependendo de r/q
    if (dJ < 0)
        x(i) = x(i);
    else
        x(i) = (1-a)*x(i-1) + a*x(i);
    end
    
end
%plot do histograma de x;
histogram(x)

xf = 1/size(R,1) * sum(exp(-x.^2/T));
