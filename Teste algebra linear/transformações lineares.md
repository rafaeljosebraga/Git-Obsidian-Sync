	
#
![[Pasted image 20240704111814.png]]
A é o nosso domínio
B é a "imagem" transportada alterada pela transformação linear

característica de transformação->deve ser linear

quando a transformação e a:distributiva e - b: escalável

![[Pasted image 20240704112222.png]]
->Exemplos de transformações lineares são a derivada e a integral.

Tati nos lembra do exemplo da maquininha que processa uma entrada e cospe uma saída.

#
Partindo do conjunto dos reais.->o $R²$(duas dimensões).
uma transformação identidade -> é onde transforma para o mesmo exemplo de partida

Lei de formação->$T(x,y,z)=(z,x-y,-z)$

Matriz de transformação->$(\begin{vmatrix}a\\b\\c\end{vmatrix})=\begin{vmatrix}z\\x-y\\-z\end{vmatrix}$

$\begin{vmatrix}z\\x-y\\-z \end{vmatrix}=$$\begin{vmatrix}0&0&1\\1&-1&0\\0&0&-1\end{vmatrix}$



$T(vetorG)=$Faz a rotação de um objeto em 90° no sentido anti-horário no 

$R²$
$R_{90} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$

$T=\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} *vetorG$

$T(\begin{bmatrix} 0 \\ 1\end{bmatrix})=$

Tomando consideração do circulo trigonométrico podemos observar

que a transformação que bota as coisas em um ângulo tem uma inferência direta entre os quadrantes onde no $R_{90}$ se pode observar como na verdade estamos transportando apenas para do quadrante 1 para o quadrante 2

usando uma "versão" do $\begin{bmatrix}cos(x)&&-sen(x)\\ -sen(x)&&cos(x)\end{bmatrix}$


Complementando o assunto temos autovalores e auto-vetores
esse site em inglês já tem uma boa exemplificação mas mesmo em caso de dúvida vou deixar um vídeo demonstrando uma transformação com valores que alteram tanto x e y
de vetores $\begin {bmatrix}1&&0\\0&&1 \end{bmatrix}$

https://www.3blue1brown.com/lessons/eigenvalues

![[LinearTransformation.light.mp4]]

Cisalhamento vertical

$\begin{bmatrix}wi\\wj\end{bmatrix}=$$\begin{bmatrix}1&&k\\0&&1\end{bmatrix}\begin{bmatrix}x\\y\end{bmatrix}$

mantemos os pés e mechemos a parte superior.

Matriz de transformação

$T:R_2$ -> $R_3$

$T(x,y)= (x+y,y,x)$

$\begin{bmatrix}x+y\\y\\x\end{bmatrix}=\begin{bmatrix}1&&1\\0&&1\\1&&0\end{bmatrix}\begin{bmatrix}x\\y\end{bmatrix}$


Revisao de funcoes 
podemos combinar funções em uma única transformação para esse objetivo
$f(x)=x²+1$

$g(x)=sen(x)$

$g(f(x))= sen(x²+1)$ ou $g_of(x)$
corrigir marcação

Composição de transformações

$T(vetX)=B$ -> $T:R^n$->$R^k$
$S(vetX)=A$ ->$S:R^k$->$R^m$
$S(T(x))=S_oT$ 
				$:R^n >>R^m$

$[B.A](vetX)$

Exemplo requisitado:


(1)
$T(vetX):R²$->$R²$
$T(x,y)=(x,-y)$
$[T]=A=\begin{bmatrix}1&&0\\0 && -1\end {bmatrix}$

$S(vetX):R²$->$R²$
$S(x,y)=(-x,y)$
(2)
$[S]=B=\begin{bmatrix}-1&&0\\0 && 1\end {bmatrix}$

multiplicando as matrizes obtemos a nossa matriz de transformação

$S(T(vetX))=A*B=\begin{bmatrix}-1&&0\\0 && 1\end {bmatrix}*\begin{bmatrix}1&&0\\0 && -1\end {bmatrix}=\begin{bmatrix}-1&&0\\0 && -1\end {bmatrix}$
	|->$S(T(vetX))$->$(x,y)=(-x,-y)$

Exemplo para prática$S(T(x)):R²$->$R^4$ 

$T(vetX)R^2$->$R³$
$T(x,y)=(y-x,x+3y,x-y)$

$[T]=\begin{bmatrix}-1&&1\\1&&3\\1&&-1\end{bmatrix}$

$S(vetX):R^3$->$R⁴$

$S(x,y,z)=(z,x,y,x-z)$

$[S]=\begin{bmatrix}0&&0&&1\\1&&0&&0\\0&&1&&0\\1&&0&&-1\end{bmatrix}$

$T(S(vetX))=[S]=\begin{bmatrix}0&&0&&1\\1&&0&&0\\0&&1&&0\\1&&0&&-1\end{bmatrix}*\begin{bmatrix}-1&&1\\1&&3\\1&&-1\end{bmatrix}=\begin{bmatrix}1&&-1\\-1&&1\\1&&3\\-2&&2\end{bmatrix}$

Lei de formação $x,y=(x-y,-x+y,x+3y,-2x+2y)$

Inversa de uma transformação

respeitando as regras de  linearidade independente det≃0

$T(vetX)^{-1}=[T]^{-1}$ $[T]$->é injetora

$[T](x)\begin{bmatrix}cosX&&-senX\\senX&&cosX\end{bmatrix}$->  $det([T])=cos²X+sen²=1$ a matriz de rotação possui inversa.

#<h3> Aula Lab</h3>
espaço linha ->Espaço vetorial definido dentro de uma matriz

![[Pasted image 20240723113630.png]]

Pode se perceber que a nossa matriz B quando escalonada e reduzida ela forma a matriz identidade -> significa que a nossa matriz é linearmente independente e pode servir de base para o $R³$

Podemos transformar uma matriz de vetores de base $R^3$ para $R⁴$  porem ainda dependemos da quantidade de vetores iguais ou maiores ao do numero da base para gerar um subespaço da base.

![[Pasted image 20240723115355.png]]
comparação com a transposta,existem vantagens de refatoração matricial em cálculos entre linhas de uma matriz transpostada

#<h2>Espaço Nulo</h2>
Espaço Nulo(Núcleo)

representado por $T(vetX)=Ô$

solucionamos esse problema utilizando multiplicação e inversa de matrizes

![[Pasted image 20240723120610.png]]

Comparação entre a "\ barrinha" e o rref para essa ideia .
![[Pasted image 20240723121132.png]]

#<h3>Transformações Em Espaços Q.Q</h3>
$R^3$->$R^2$

$T(x,y,z)=(x+y,2z)$

$T(1,0,0)=(1,0)$

$T(0,1,0)=(1,0)$

$T(0,0,1)=(0,2)$

$\begin{bmatrix}1&1&0\\0&0&2\end{bmatrix}$

Agora mudando a perspectiva podemos interpretar polinômios em função de vetores com base canônica

(1)  $P_2$->$P_2$

$B-(chaves)> 1,x²,x³$

$T(1)=1-1=0$->$0.1+0.x+0x²$

$T(1)=(x+1)-x=1$->$1.1+0.x+0x²$

$T(1)=(x+1)²=2x+1$->$1.1+2.x+0x²$

$\begin{bmatrix}0&1&1\\0&0&2\\0&0&0\end{bmatrix}$

Exemplo :

$M_2$->$M_2$

	matriz no caderno



