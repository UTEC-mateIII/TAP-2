exec("projection.sci")
exec("rot.sci")

// theta debe estar en grados
function [A, B, C, D] = rotE(u, theta, d)
    [_A _B _C _D] = projection(d)
    
    [A B C D] = rot(u, theta, _A, _B, _C, _D)
endfunction
