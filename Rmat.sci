function [R] = Rmat(u, theta)
    R = zeros(3,3)
    
    ux=u(1)
    uy=u(2)
    uz=u(3)
    
    R(1,1) = cosd(theta) + ux^2*(1-cosd(theta))
    R(1,2) = ux*uy*(1-cosd(theta)) - uz*sind(theta)
    R(1,3) = ux*uz*(1-cosd(theta)) + uy*sind(theta)
    
    R(2,1) = uy*uz*(1-cosd(theta)) + uz*sind(theta)
    R(2,2) = cosd(theta) + uy^2*(1-cosd(theta))
    R(2,3) = uy*uz*(1-cosd(theta)) - ux*sind(theta)
    
    R(3,1) = uz*ux*(1-cosd(theta)) - uy*sind(theta)
    R(3,2) = uz*uy*(1-cosd(theta)) + ux*sind(theta)
    R(3,3) = cosd(theta) + uz^2*(1-cosd(theta))
endfunction
