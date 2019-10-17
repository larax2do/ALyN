## Copyright (C) 2019 csunsa-12
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
## @deftypefn {} {@var{retval} =} cholesky (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: csunsa-12 <csunsa1@csunsa-pc>
## Created: 2019-10-17

function H = cholesky (A)
  if (nargin != 1)
    print_usage ("cholesky (matriz)");
  endif
  [m n]=size(A);
  if(A!=A')
    error("La matriz no es simetrica")
  endif
  for i=1:n
    if  det(A(i:n,i:n))<0
      error("La matriz no es definida positiva")
    endif
  endfor
  if (nargin != 1)
    print_usage ("cholesky (matriz)");
  endif
  if (ismatrix (A))
    H = zeros (n);
    for k = 1:n
      for i = 1:k-1
        sumaki = 0;
        for j = 1:i-1
          sumaki += H(i,j)*H(k,j);
        endfor
        H(k,i) = (A(k,i)-sumaki)/H(i,i);
      endfor
      sumakk = 0;
      for j = 1:k-1
        sumakk += H(k,j)*H(k,j);
      endfor
      H(k,k) = sqrt(A(k,k) - sumakk);
    endfor
  else
      error ("cholesky: argumento no es una matriz");
  endif
endfunction
