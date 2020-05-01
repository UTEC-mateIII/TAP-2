function [A, B, C, D] = projection(d)
    _A=[1; -0.01; -0.02]
    _B=[1; 0.01; -0.02]
    _C=[1; 0.01; 0.02]
    _D=[1; -0.01; 0.02]
    
    T=[-d 0 0; 0 2*d 0; 0 0 3*d]
    
    A=T*_A
    B=T*_B
    C=T*_C
    D=T*_D
endfunction
