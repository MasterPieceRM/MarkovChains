function [G, c] = get_Jacobi_parameters (Link)
  s = size(Link); % Obține dimensiunile matricei
  % Obținerea parametrilor Jacobieni
  G = Link(1 : s(1) - 2, 1 : s(2) - 2);
  c = Link(1 : s(1) - 2, s(2) - 1);
endfunction
