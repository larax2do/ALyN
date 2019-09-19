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
## @deftypefn {} {@var{retval} =} sustitucionRegresivaSup (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Thales <thales@localhost.localdomain>
## Created: 2019-09-19

#Resolucion de sistemas Lineales Triangulares Superiores usando regresion lineal
#x es un vector con los resultados
#La funcion recibe una Matriz triangular superior A y un vector b
#Ax=b
function x = sustitucionRegresivaSup (A, b)
  if columns(A)==rows(A) & rows(A)==length(b)
    n=length(b)
    x(n)=b(n)/A(n,n);
    for i=n-1:-1:1
      x(i)=b(i);
      for j=n:-1:i+1
        x(i)=x(i)-A(i,j)*x(j);
      endfor
      x(i)=x(i)/A(i,i);
    endfor
  endif
endfunction
