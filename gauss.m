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
#La funcion recibe una Matriz  A y un vector b
#Ax=b

function x = gauss (A, b)
  n=length(b);
  if columns(A)==rows(A) & rows(A)==length(b)
    for k=1:n
      for i=k+1:n
        m=-(A(i,k)/A(k,k));
        for j=1:n
          A(i,j)=A(i,j)+m*A(k,j);
          b(j)=b(j)+m*b(j);
        endfor
      endfor
    endfor
  endif
  x=A
endfunction
