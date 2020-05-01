exec("projection.sci")
exec("Rmat.sci")

// theta debe estar en grados
function [A, B, C, D] = rotE(u, theta, d)
    [_A _B _C _D] = projection(d)
    
    [R] = Rmat(u, theta)
    
    A=R*_A
    B=R*_B
    C=R*_C
    D=R*_D
endfunction
