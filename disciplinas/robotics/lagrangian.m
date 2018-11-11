function sys = lagrangian(sys)
    K_ = [];
    U_ = [];
    F_ = [];
    
    for i = 1:length(sys.bodies)
        body = sys.bodies{i};
        sys.bodies{i}.K = kinetic_energy(body);
        sys.bodies{i}.U = potential_energy(body, sys.gravity);
        sys.bodies{i}.F = rayleigh_energy(body);
        
        K_ = [K_, sys.bodies{i}.K];
        U_ = [U_, sys.bodies{i}.U];
        F_ = [F_, sys.bodies{i}.F];
    end
       
    K = K_(1);
    U = U_(2);
    F = F_(3);

    for i = 2:length(sys.bodies)
        K = K + K_(i);
        U = U + U_(i);
        F = F + F_(i);
    end
        
    sys.L = simplify(K - U);
    sys.F = simplify(F);
end
