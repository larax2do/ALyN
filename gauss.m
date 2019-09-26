## Copyright (C) 2019 Thales
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} gauss (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Thales <thales@localhost.localdomain>
## Created: 2019-09-19

#Convertir la matriz en una matriz triangular superior, para resolver el sistema
#x es un vector con los resultados
#La funcion recibe una Matriz  A y la descompone en [L U]
#Ax=b

function [L U] = gauss (A)
  [n r]=size(A);
  m=eye(n);
  for k=1:n-1
    for i=k+1:n
      m(i,k)=A(i,k)/(A(k,k));
      for j=k+1:n
        A(i,j)=-m(i,k)*A(k,j)+A(i,j);
      endfor
      A(i,k)=0;
    endfor
  endfor
  %A;
  U=A(1:n,1:n);
  L=m;
  %L*U;
  %%%%%%%%%%% Solucion usando regresion
  
  %x=sustitucionRegresivaSup(A(1:n,1:n),A(1:n,r));
endfunction
