// Questão 2 - C

//pesos
x = [63 69 73 79 82];
//altura
y = [163 173 178 183 188];

rad = 0.0174533;

Mat = [sin(x*rad)' cos(x*rad)'];

z = Mat'*Mat;
b = Mat'*y';
coef = z\b;

// exibir os coeficentes de Beta e Alfa
disp("Coeficientes alfa e Beta: ");
disp(coef);

peso = 70;
sisTrigonometrico = coef(1)*sin(peso*rad)+coef(2)*cos(peso*rad);

disp("Altura estimada para 70kg - trigonometria:");
disp(sisTrigonometrico);
