# Exemplo de Núcleo de uma Matriz

## Matriz A
\[ A = \begin{pmatrix} 1 & 2 & -1 \\ 2 & 4 & -2 \\ \end{pmatrix} \]

## Passos

1. **Formular o Sistema Homogêneo**
   \[ A $$\mathbf{x} = \mathbf{0} $$\]
   \[
   $$\begin{pmatrix} 1 & 2 & -1 \\ 2 & 4 & -2 \\ \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ \end{pmatrix}$$
   \]

2. **Escrever a Matriz Aumentada**
   \[
 $$  \begin{pmatrix} 1 & 2 & -1 & | & 0 \\ 2 & 4 & -2 & | & 0 \\ \end{pmatrix}$$
   \]

3. **Aplicar Eliminação Gaussiana**
   \[
   $$\begin{pmatrix} 1 & 2 & -1 & | & 0 \\ 0 & 0 & 0 & | & 0 \\ \end{pmatrix}$$
   \]

4. **Encontrar as Variáveis Livres**
   \( x_2 \) e \( x_3 \) são variáveis livres.

5. **Expressar as Soluções em Termos das Variáveis Livres**
   \[
 $$  x_1 + 2x_2 - x_3 = 0 \implies x_1 = -2x_2 + x_3$$
   \]

6. **Formar a Base do Núcleo**
   \[
  $$ \mathbf{x} = \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ \end{pmatrix} = \begin{pmatrix} -2x_2 + x_3 \\ x_2 \\ x_3 \\ \end{pmatrix} = x_2 \begin{pmatrix} -2 \\ 1 \\ 0 \\ \end{pmatrix} + x_3 \begin{pmatrix} 1 \\ 0 \\ 1 \\ \end{pmatrix}$$
   \]

Portanto, a base do núcleo é formada pelos vetores:
   \[
   $$\left\{ \begin{pmatrix} -2 \\ 1 \\ 0 \\ \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 1 \\ \end{pmatrix} \right\}$$
   \]
