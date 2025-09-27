%Analisis Numerico Matricial en Matlab
%En este script se desarrolla la descomposicion Lower Upper (LU) de una
%matriz. La descomposición LU es un método de álgebra lineal para factorizar
% una matriz cuadrada en el producto de una matriz triangular inferior (L) y
% una matriz triangular superior (U). Este proceso es útil para resolver 
% sistemas de ecuaciones lineales de forma eficiente, pues simplifica la
% solución al resolver un sistema triangular inferior (Ly = B) y luego uno 
% triangular superior (Ux = y). 
% Es muy eficiente para resolver sistemas lineales, especialmente cuando se 
% deben resolver varias ecuaciones con la misma matriz de coeficientes. 
% Tambien se usa en el calculo de la matriz inversa ya que es muy parecido
% al proceso de eliminacion gaussiana

A=[1,5,6,7; 0,2,0,0;0,0,3,0;10,0,0,4] %Se mete manualmente la matriz
%load('matrix.mat') Funcion load para archivos .mat
%readmatrix('matriz.xlsx') Funcion readmatrix para archivos .xlsx y .csv
b=[-6;-2;6;2] %Se mete manualmente el vector

det(A) %Calculo del determinante
A\b %Resuelve el sistema lineal
mldivide(A,b) %resuelve el sistema lineal
Y=lu(A) %Te da la matriz 
[L,U]=lu(A) %Te da las matrices L y U
u=U\(L\b)
[L,U,P]=lu(A) %Te da las matrices L, U y P
u=U\(L\P*b)

%Algunos comentarios acerca de la Fact LU en Matlab
%No obtengo mismos resultados en Fortran que en Matlab con L y U 
% Además el producto de matrices LU tiene que ser igual a A, y las 
%matrices dadas por matlab no cumplen esta propiedad.
% ATENCION P*A=L*U donde P es la matriz de permutacion, obtenida con la
% funcion lu
