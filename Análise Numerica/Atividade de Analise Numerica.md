//Aplicação do metodo de newton
function x=no_inverso(C, x0, tol, max_iter)
    x = x0;
    k = 1;
    while k <= max_iter then
        x = x * (2 - C * x);
        if abs(1/x - C) < tol then
            disp("Solução encontrada:");
            disp(x);
            disp("Iterações: " + string(k));
            return;
        end
        k = k + 1;
    end
    disp("Solução não convergiu em " + string( max_iter) + " iterações.");
endfunction
//código para receber o valor positivo de C
controle=0
while(controle~=1)
    C=input("insira um número positivo C >>");
    if C>0 then
        controle=1;
    end
end
x=no_inverso(C, 0.1, 1e-6,500);

disp(x);