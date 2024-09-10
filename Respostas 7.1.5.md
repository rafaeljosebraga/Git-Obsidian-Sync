

**Formar a matriz de dados centrados \( A \):**
usando os dados adquiridos na questão anterior centrando os pontos podemos formar a matriz A  assim
$$ \mathbf{d}_1 = \begin{bmatrix} -1 \\ -1 \end{bmatrix} ;\mathbf{d}_2 = \begin{bmatrix} 0 \\ -1 \end{bmatrix};\mathbf{d}_3 = \begin{bmatrix} 1 \\ 2 \end{bmatrix}$$
$$A = \begin{bmatrix} \mathbf{d}_1 & \mathbf{d}_2 & \mathbf{d}_3 \end{bmatrix} = \begin{bmatrix} 0 & 0 & 1 \\ -1 & -1 & 2 \end{bmatrix}$$
e teremos um vetor unitário genérico **u**
## a)![[Pasted image 20240908150147.png]]
primeiro vamos transpor A:$$A' = \begin{bmatrix} 0 & -1 \\ 0 & -1 \\ 1 & 2 \end{bmatrix}$$

então podemos escrever$A^Tu$ assim: $$A'\mathbf{u} = \begin{bmatrix} 0 & -1 \\ 0 & -1 \\ 1 & 2 \end{bmatrix} \mathbf{u} ;$$
$$A'\mathbf{u} = \begin{bmatrix} \mathbf{d}'_1 \cdot \mathbf{u} \\ \mathbf{d}'_2 \cdot \mathbf{u} \\ \mathbf{d}'_3 \cdot \mathbf{u} \end{bmatrix}
     $$
## b)![[Pasted image 20240908150232.png]]


A letra b pede para explicar o motivo de $V_\mathbf{u} = \frac{1}{3} |A^T\mathbf{u}|^2$.

Vamos começar com a fórmula dada anteriormente para Variância :

$V_{\mathbf{u}1} = \frac{1}{N}\sum{j} |(\tilde{\mathbf{d}}_j \cdot \mathbf{u}_1)\mathbf{u}1|^2 = \frac{1}{N} \sum{j} (\tilde{\mathbf{d}}_j \cdot \mathbf{u}_1)^2.$

No nosso caso, temos $N = 3$ e estamos usando $\mathbf{u}$ no lugar de $\mathbf{u}_1$, então podemos escrever:

$V_\mathbf{u} = \frac{1}{3} \sum_{j=1}^{3} (\tilde{\mathbf{d}}_j \cdot \mathbf{u})^2.$

Agora, observe que o produto escalar $\tilde{\mathbf{d}}_j \cdot \mathbf{u}$ é o elemento $j$-ésimo do vetor $A^T\mathbf{u}$. Portanto, a soma acima é apenas a soma dos quadrados dos elementos de $A^T\mathbf{u}$, que é o mesmo que a norma ao quadrado de $A^T\mathbf{u}$:

$V_\mathbf{u} = \frac{1}{3} \|A^T\mathbf{u}\|^2 = \frac{1}{3} |A^T\mathbf{u}|^2.$

Pronto, mostramos por que $V_\mathbf{u} = \frac{1}{3} |A^T\mathbf{u}|^2$. 

Portanto, $V_u$ é igual a $\frac{1}{3}$ da norma ao quadrado do vetor resultante de  $A^T u$.

$V_{\mathbf{u}1} = \frac{1}{N}\sum{j} |(\tilde{\mathbf{d}}_j \cdot \mathbf{u}_1)\mathbf{u}1|^2 = \frac{1}{N} \sum{j} (\tilde{\mathbf{d}}_j \cdot \mathbf{u}_1)^2.$



## c)
### Aplicação da Proposição 7.1.10

#### Proposição 7.1.10
Para qualquer matriz $A$, temos:
$$ v \cdot (A w) = (A^T v) \cdot w $$

usando a a Proposição 7.1.10 para provar a equação:

$V_\mathbf{u} = \frac{1}{3} |A^T\mathbf{u}|^2 = \frac{1}{3}(A^T\mathbf{u}) \cdot (A^T\mathbf{u}) = \mathbf{u}^T \left(\frac{1}{3}AA^T\right)\mathbf{u} = \mathbf{u} \cdot \left(\frac{1}{3}AA^T\right)\mathbf{u}.$

**Começando pela esquerda:**

1. **$V_\mathbf{u} = \frac{1}{3} |A^T\mathbf{u}|^2$:** Essa é a equação que queremos provar.
    
2. **$\frac{1}{3} |A^T\mathbf{u}|^2 = \frac{1}{3}(A^T\mathbf{u}) \cdot (A^T\mathbf{u})$:** A norma ao quadrado de um vetor é igual ao produto escalar do vetor consigo mesmo.
    
3. **$\frac{1}{3}(A^T\mathbf{u}) \cdot (A^T\mathbf{u}) = \mathbf{u}^T \left(\frac{1}{3}AA^T\right)\mathbf{u}$:** Aqui, aplicamos a Proposição 7.1.10. Se definirmos $\mathbf{v} = \mathbf{u}$ e $\mathbf{w} = A^T\mathbf{u}$, a Proposição nos diz que:
    
    $\mathbf{v} \cdot (A\mathbf{w}) = (A^T\mathbf{v}) \cdot \mathbf{w}.$
    
    Substituindo na nossa equação, temos:
    
    $(A^T\mathbf{u}) \cdot (A^T\mathbf{u}) = \mathbf{u}^T \left( A(A^T\mathbf{u}) \right) = \mathbf{u}^T \left( AA^T\mathbf{u} \right) = \mathbf{u}^T \left(\frac{1}{3}AA^T\right)\mathbf{u}.$
    
4. **$\mathbf{u}^T \left(\frac{1}{3}AA^T\right)\mathbf{u} = \mathbf{u} \cdot \left(\frac{1}{3}AA^T\right)\mathbf{u}$:** O produto escalar de dois vetores pode ser escrito como o produto da transposta do primeiro vetor com o segundo vetor.
    

**Conclusão:**

Mostramos que $V_\mathbf{u} = \mathbf{u} \cdot \left(\frac{1}{3}AA^T\right)\mathbf{u}$.

Código Utilizado nas próximas questões:
```
//Declara nossa Matriz Inicial
pontosCentrados=[-1 -1;0 -1;1 2];

// Mostra os pontos centrados
disp("Pontos Centrados:")
disp(pontosCentrados)

pontosCentradosT = pontosCentrados';

n = size(pontosCentrados, 1); 

// Cálculo da matriz de covariância (corrigido na resposta anterior)
matrizC = (pontosCentradosT * pontosCentrados) / (n - 1);
disp(matrizC);
// Questão e
u1 = [1/sqrt(5); 2/sqrt(5)];
disp("u1:");
disp(u1);
Vu1 = u1' * matrizC * u1;

// Questão f
u2 = [2/sqrt(5); 1/sqrt(5)];
disp("u2:");
disp(u2);
Vu2 = u2' * matrizC * u2;

// Exibir Vu1 e Vu2
disp("Vu1:",Vu1);
disp("Vu2:",Vu2);
```


## d)

Rodando o algoritmo utilizando a fórmula chegamos a esta matriz:

![[Pasted image 20240910190603.png]]

Utilizando a formula dada: 
$$V_u=u*(Cu).$$
podemos calcular os resultados das letras $e)$ e $f)$
## e)
![[Pasted image 20240910191309.png]]
fazendo $V_{u1}=u_1*(Cu_1).$ temos
 $V_{u1}= 3,8$

## f)
![[Pasted image 20240910191336.png]]

e fazendo $V_{u2}=u_2*(Cu_2).$ temos $V_{u2}= 2,6$

$V_w=V_{u1}+V_{u2}=6,4$

## g)![[Pasted image 20240910193909.png]]
A matriz de covariância pode ser dada por esta formula, onde podemos ver que as variaveis fora da diagonal principal são calculadas de usando a mesma formula só que alterando $Cov(X,Y)|Cov(X,Y)$ veja a imagem
![[Pasted image 20240910193759.png]]

E pela formula abaixo vemos que independente da se $Cov(X,Y)$ ou $Cov(X,Y)$ das duas formas vão retornar o mesmo valor pois as ordem dos fatores não altera a multiplicação.
![[Pasted image 20240910193757.png]]


