
## Python
import numpy as np

import matplotlib.pyplot as plt

import math

def calcCentroid(vetores):

    return np.mean(vetores,axis=0)

  

d1 = np.array([1,1])

d2 = np.array([2,1])

d3 = np.array([3,4])

pontos = np.array([[1, 1],[2, 1],[3, 4]])

centroide=calcCentroid(pontos);

  

pontosCentrados=pontos-centroide

pontosCentradosT= pontosCentrados.transpose()

#print(pontosCentrados)

#print(pontosCentradosT)

n=len(pontosCentrados)

#questão c

matrizC=(pontosCentrados@pontosCentradosT)/n

#questão e

u1=np.array([1/math.sqrt(5),2/math.sqrt(5)]).transpose

print(u1)

Vu1=u1@(matrizC@u1)

#f

u2=(np.array([2/math.sqrt(5),1/math.sqrt(5)]).transpose)

print(u2)

Vu2=u2@(matrizC@u2)

  

#print(Vu1)

#print(Vu2)

## Scilab

function centroide = calcCentroid(vetores)
    centroide = mean(vetores, "r");
endfunction

d1 = [1,1];
d2 = [2,1];
d3 = [3,4];
pontos = [1, 1; 2, 1; 3, 4];
centroide = calcCentroid(pontos);

pontosCentrados = pontos - centroide;
pontosCentradosT = pontosCentrados';

n = size(pontosCentrados, 1); // número de linhas
// questão c
matrizC = (pontosCentrados * pontosCentradosT) / n;

// questão e
u1 = [1/sqrt(5); 2/sqrt(5)];
disp(u1);
Vu1 = u1' * (matrizC * u1);

// questão f
u2 = [2/sqrt(5); 1/sqrt(5)];
disp(u2);
Vu2 = u2' * (matrizC * u2);

// Exibir Vu1 e Vu2
disp(Vu1);
disp(Vu2);