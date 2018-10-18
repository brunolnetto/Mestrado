function hfigs = plot_ex6(Y, U, E, legends)    
    n = length(legends);

    % Propriedades uteis
    set(gcf, 'PaperPositionMode', 'auto');
    
    set(groot, 'defaultFigureUnits', 'normalized')
    set(groot, 'defaultFigurePosition', [0, 0, 1, 1])
    set(groot, 'DefaultAxesColor', 'none'); 
    set(groot, 'defaultTextInterpreter', 'latex'); 

    titSize = 20;
    xlabSize = 15;
    ylabSize = 15;
    lgdSize = 15;
       
    for i = 1:n
        hfig1 = figure(1);
        % Saida da planta
        plot(Y(i).time, Y(i).signals.values);

        ylab = ylabel('Amplitude');
        xlab = xlabel('Tempo [s]');
        tit = title('Saida da planta', 'interpreter', 'latex');
        lgd = legend(legends{1:i});
        
        set(lgd, 'interpreter', 'latex');
        lgd.FontSize = lgdSize;
        tit.FontSize = titSize;
        ylab.FontSize = ylabSize;
        xlab.FontSize = xlabSize;
        
        grid
        
        hold on
        
        % Acao de controle
        hfig2 = figure(2);
        
        if i == 1
            plot(U(i).time, U(i).signals.values);
        else
            stairs(U(i).time, U(i).signals.values);
        end
        
        ylab = ylabel('Amplitude');
        xlab = xlabel('Tempo [s]');
        tit = title('Saida do Controlador', 'interpreter', 'latex');
        lgd = legend(legends{1:i});
        
        set(lgd, 'interpreter', 'latex');
        lgd.FontSize = lgdSize;
        tit.FontSize = titSize;
        ylab.FontSize = ylabSize;
        xlab.FontSize = xlabSize;
        
        grid
        
        hold on 

        % Erro da saida e entrada
        hfig3 = figure(3);
        
        if i == 1
            plot(E(i).time, E(i).signals.values);
        else
            stairs(E(i).time, E(i).signals.values);
        end
        
        ylab = ylabel('Amplitude');
        xlab = xlabel('Tempo [s]');
        tit = title('Erro');

        lgd = legend(legends{1:i});

        set(lgd, 'interpreter', 'latex');
        lgd.FontSize = lgdSize;
        tit.FontSize = titSize;
        ylab.FontSize = ylabSize;
        xlab.FontSize = xlabSize;
        
        grid
        
        hold on

    end
    
    hold off
    
    hfigs = [hfig1, hfig2, hfig3];
    
end
