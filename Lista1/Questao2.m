%% Quest�o 2
    %M�todo 1
       % Este m�todo utiliza o artif�cio de que arctg(1) - arctg(0) = pi/4
       % E este c�lculo � equivalente � resolver a integral de 1/(1+x^2) de
       % 0 a 1.
       
        m = 1e6;
        x = -1 + 2*rand(m,1);
        
        % Estima��o da Integral
        Q2_1 = sum(4./(1+x.^2))/size(x,1)
    
        % Neste caso n�o tem problema fazer a distribui��o ser de -1 a 1
        % Pois a transforma��o remove a informa��o de sinal (fase).
        
        
        
        
   % M�todo 2
        % Este m�todo chuta m pontos (x,y) e v� quais
        % caem dentro do c�rculo de raio 1 
        % inscrito em um quadrado.
        
        % Depois o valor de pi � estimado fazendo 
        %
        % 4*(N�mero de pontos no circulo)/(N�mero total de pontos)
        %
        % Isto faz sentido pois em m�dia, a chance de acertar o quadrado
        % chutando n�meros aleat�rios � justamente a raz�o entre as �reas,
        % o que d� pi/4.

        
        m = 1e6;
        k = 0;
        x = -1 + 2*rand(m,1);
        y = -1 + 2*rand(m,1);
        
        for i=1:size(x,1)
            if (x(i)^2+ y(i)^2 < 1)
                k = k+1;
            end 
        end
        
        Q2_2 = 4*k/m
        