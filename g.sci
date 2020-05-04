// Alberto Oporto Ames 100%
exec("rotE.sci")

d=6

// 53° sobre el eje z del proyector
theta1=53
u=[0, 0, 1]

R1=Rmat(u, theta1)
[A B C D] = rotE(u, theta1, d)

// 37° sobre el eje x del proyector
theta2=37
u2=[1, 0, 0]
u2=R1*u2' // Nuevo eje x

[A B C D] = rot(u2, theta2, A, B, C, D)

disp("A")
disp(A)

disp("B")
disp(B)

disp("C")
disp(C)

disp("D")
disp(D)
