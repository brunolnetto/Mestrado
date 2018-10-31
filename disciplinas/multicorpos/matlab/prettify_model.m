symb = ['L01', 'L02', 'L03', ...
        'L11', 'L12', 'L13', ...
        'L21', 'L22', 'L23', ...
        'delta_e_cg', 'Le_cg', ...
        'm11', 'm12', 'm13', ...
        'm21', 'm22', 'm23', 'me', ...
        'J11', 'Jm12', 'J13', ...
        'J21', 'Jm22', 'J23', 'Je', ... 
        'x', 'y', 'alpha', ...
        'xp', 'yp', 'alphap', ...
        'xpp', 'ypp', 'alphapp', ...
        'th11', 'th12', 'th13', ...
        'th11p', 'th12p', 'th13p', ...
        'th11pp', 'th12pp', 'th13pp', ...
        'th21', 'th22', 'th23', ...
        'th21p', 'th22p', 'th23p', ...
        'th21pp', 'th22pp', 'th23pp'];

latexvar = ['L_{01}', 'L_{02}', 'L_{03}', ...
            'L_{11}', 'L_{12}', 'L_{13}', ...
            'L_{21}', 'L_{22}', 'L_{23}', ...
            'L_{01}^{cg}', 'L_{02}^{cg}', 'L_{03}^{cg}', ...
            'L_{11}^{cg}', 'L_{12}^{cg}', 'L_{13}^{cg}', ...
            'L_{21}^{cg}', 'L_{22}^{cg}', 'L_{23}^{cg}', ...
            'delta_e^{cg}', 'L_{e}^{cg}', ...
            'm_{11}', 'm_{12}', 'm_{13}', ...
            'm_{21}', 'm_{22}', 'm_{23}', 'm_e', ...
            'J_{11}', 'J_{12}', 'J_{13}', ...
            'J_{21}', 'J_{22}', 'J_{23}', 'J_e', ... 
            'x', 'y', 'alpha', ...
            '\dot x', '\dot y', '\dot alpha', ...
            '\ddot x', '\ddot y', '\ddot alpha', ...
            '\theta_{11}', '\theta_{12}', '\theta_{13}', ...
            '\dot \theta_{11}', '\dot \theta_{12}', '\dot \theta_{13}', ...
            '\ddot \theta_{11}', '\ddot \theta_{12]', '\ddot \theta_{13}', ...
            '\theta_{21}', '\theta_{22}', '\theta_{23}', ...
            '\dot \theta_{21}', '\dot \theta_{22}', '\dot \theta_{23}', ...
            '\ddot \theta_{21}', '\ddot \theta_{22}', '\ddot \theta_{23}'];

model = latex(eqdyn);

pretty_model = strrep(model, symb, latexvar)