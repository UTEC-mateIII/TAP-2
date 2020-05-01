exec("rotE.sci")

d=3

// 90° sobre el eje Y del proyector
theta1=90
u=[0, 1, 0]

R1=Rmat(u, theta1)
[A B C D] = rotE(u, theta1, d)

// 180° sobre el eje Z del proyector
theta2=180
u2=[0, 0, 1]
u2=R1*u2' // Nuevo eje Z

[A B C D] = rot(u2, theta2, A, B, C, D)

disp("A")
disp(A)

disp("B")
disp(B)

disp("C")
disp(C)

disp("D")
disp(D)
