

**Formar a matriz de dados centrados \( A \):**
usando os dados adquiridos na questão anterior centrando os pontos podemos formar a matriz A  assim
$$ \mathbf{d}_1 = \begin{bmatrix} 0 \\ -1 \end{bmatrix} ;\mathbf{d}_2 = \begin{bmatrix} 0 \\ -1 \end{bmatrix};\mathbf{d}_3 = \begin{bmatrix} 1 \\ 2 \end{bmatrix}$$
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

# Aplicação da Proposição 7.1.10

## Proposição 7.1.10
Para qualquer matriz $A$, temos:
$$ v \cdot (A w) = (A^T v) \cdot w $$
Em particular, se $A$ for simétrica, então:
$$ v \cdot (A w) = (A v) \cdot w $$



usar a Proposição 7.1.10 para provar a equação:

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

Mostramos que $V_\mathbf{u} = \mathbf{u} \cdot \left(\frac{1}{3}AA^T\right)\mathbf{u}$, que é o que queríamos provar.
