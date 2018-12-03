function generalized = load_generalized_endeffector()
    generalized = struct();
        
    % Generalized variables
    generalized.q = [sym('x', 'real'), ...
                     sym('y', 'real'), ...
                     sym('alpha', 'real')];

     generalized.qp = [sym('xp', 'real'), ...
                       sym('yp', 'real'), ...
                       sym('alphap', 'real')];
                 
    generalized.p = [sym('xp', 'real'), ...
                     sym('yp', 'real'), ...
                     sym('alphap', 'real')];

    generalized.pp = [sym('xpp', 'real'), ...
                      sym('ypp', 'real'), ...
                      sym('alphapp', 'real')];
end