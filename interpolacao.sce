X = [20,25,30,35,40,45,50,55];
y = [0.99907,0.99852,0.99826,0.99818,0.99828,0.99849,0.99878,0.99919];
disp(interp1(X, y, 32.5));
disp(interp1(X, y, 32.5, 'nearest'));
printf("aqui começa");
xx=1.0;
[m,n] = size (X);
s = 0;
for i=1 : i
	produto= y(i);
	for j = 1 : n
		if i<>j
			produto = produto* (xx-X(j))/(X(i)-X(j));
		end
	end
	s=s+produto;
end
disp(s);
