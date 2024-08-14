temp = [20,25,30,35,40,45,50,55];
calor = [0.99907,0.99852,0.99826,0.99818,0.99828,0.99849,0.99878,0.99919];
disp(interp1(temp, calor, 32.5));
disp(interp1(temp,calor, 32.5, 'nearest'));
