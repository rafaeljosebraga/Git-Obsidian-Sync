

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

*Essa questão está com uma resposta a qual eu não tenho certeza
## Aplicação

### Passos:

1. **Definir a matriz $A$ e o vetor unitário, que desta vez será um exemplar definido $u$:**
   $$
   A = \begin{bmatrix} 0 & 0 & 1 \\ -1 & -1 & 2 \end{bmatrix}
   $$
   $$
   u = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}
   $$

2. **Calcular $A^T u$:**
   $$
   A^T u = \begin{bmatrix} 0 & -1 \\ 0 & -1 \\ 1 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}
   $$

3. **Calcular a norma de $A^T u$**
   $$
   \|A^T u\| = \sqrt{0^2 + 0^2 + 1^2} = 1
   $$

4. **Calcular $V_u$:**
   $$
   V_u = \frac{1}{3} \|A^T u\|^2 = \frac{1}{3} \cdot 1^2 = \frac{1}{3}
   $$

Portanto, $V_u$ é igual a $\frac{1}{3}$ da norma ao quadrado do vetor resultante de  $A^T u$.

# Aplicação da Proposição 7.1.10

## Proposição 7.1.10
Para qualquer matriz $A$, temos:
$$ v \cdot (A w) = (A^T v) \cdot w $$
Em particular, se $A$ for simétrica, então:
$$ v \cdot (A w) = (A v) \cdot w $$