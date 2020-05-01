exec("Rmat.sci")

// Rotación con el vector unitario y el ángulo
function [A,B, C, D] = rot(u, theta, _A, _B, _C, _D)
    [R] = Rmat(u, theta)
    
    A=R*_A
    B=R*_B
    C=R*_C
    D=R*_D
endfunction

// Rotación con una matriz ya definida
function [A,B, C, D] = rot2(R, _A, _B, _C, _D)
    A=R*_A
    B=R*_B
    C=R*_C
    D=R*_D
endfunction
