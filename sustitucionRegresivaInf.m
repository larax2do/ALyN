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
## @deftypefn {} {@var{retval} =} sustitucionRegresivaInf (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Thales <thales@localhost.localdomain>
## Created: 2019-09-19

#Resolucion de sistemas Lineales Triangulares Superiores usando regresion lineal
#x es un vector con los resultados
#La funcion recibe una Matriz triangular inferior A y un vector b
#Ax=b
function x = sustitucionRegresivaInf (A, b)
  if columns(A)==rows(A) & rows(A)==length(b)
    n=length(b)
    x(1)=b(1)/A(1,1);
    for i=2:n
      x(i)=b(i);
      for j=1:i-1
        x(i)=x(i)-A(i,j)*x(j);
      endfor
      x(i)=x(i)/A(i,i);
    endfor
  endif
endfunction
