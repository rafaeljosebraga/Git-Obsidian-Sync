A=[1 -1;2 3];
[e,E]=spec(A);
disp(E);
disp("QR")
[Q,R]=qr(A);
disp(Q);
disp(R);
disp("outra")
A=[1 2; 0 1;1 4];
[Q,R]=qr(A);
disp(Q);
disp(R);
disp("outra")
A=[1 1;-2 1;2 1];
[Q,R]=qr(A);
disp(Q);
disp(R);


