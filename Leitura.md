

# Atividade 7.1.5

Vamos retornar ao conjunto de dados da atividade anterior, onde temos os pontos de dados centrados:

- \( \mathbf{d}_1 = \begin{bmatrix} 0 \\ -1 \end{bmatrix} \)
- \( \mathbf{d}_2 = \begin{bmatrix} 0 \\ -1 \end{bmatrix} \)
- \( \mathbf{d}_3 = \begin{bmatrix} 1 \\ 2 \end{bmatrix} \)

Nosso objetivo é calcular a variância \( V_u \) na direção definida por um vetor unitário \( \mathbf{u} \).

## Passos para resolver:

1. **Definir os vetores de dados centrados:**
$$   - \( \mathbf{d}_1 = \begin{bmatrix} 0 \\ -1 \end{bmatrix} \)
   - \( \mathbf{d}_2 = \begin{bmatrix} 0 \\ -1 \end{bmatrix} \)
   - \( \mathbf{d}_3 = \begin{bmatrix} 1 \\ 2 \end{bmatrix} \)$$

3. **Formar a matriz de dados centrados \( A \):**
   \[
   $$A = \begin{bmatrix} \mathbf{d}_1 & \mathbf{d}_2 & \mathbf{d}_3 \end{bmatrix} = \begin{bmatrix} 0 & 0 & 1 \\ -1 & -1 & 2 \end{bmatrix}$$
   \]

3. **Calcular \( A'\mathbf{u} \):**
   - \( A' \) é a transposta de \( A \):
     \[
     $$A' = \begin{bmatrix} 0 & -1 \\ 0 & -1 \\ 1 & 2 \end{bmatrix}$$
     \]
   - Multiplicando \( A' \) pelo vetor unitário \( \mathbf{u} \):
     \[
     $$A'\mathbf{u} = \begin{bmatrix} 0 & -1 \\ 0 & -1 \\ 1 & 2 \end{bmatrix} \mathbf{u}$$
     \]

4. **Expressar \( A'\mathbf{u} \) em termos dos produtos internos \( \mathbf{d}'_j \cdot \mathbf{u} \):**
   - Cada elemento de \( A'\mathbf{u} \) é o produto interno de \( \mathbf{d}_j \) com \( \mathbf{u} \):
     \[
     $$A'\mathbf{u} = \begin{bmatrix} \mathbf{d}'_1 \cdot \mathbf{u} \\ \mathbf{d}'_2 \cdot \mathbf{u} \\ \mathbf{d}'_3 \cdot \mathbf{u} \end{bmatrix}
     $$
     \]

Portanto, o vetor \( A'\mathbf{u} \) é composto pelos produtos internos dos vetores de dados centrados \($$ \mathbf{d}_j $$\) com o vetor unitário \( $$\mathbf{u} $$\).