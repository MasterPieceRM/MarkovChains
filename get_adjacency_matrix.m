function [Adj] = get_adjacency_matrix (Labyrinth)
  s = size(Labyrinth); % Obține dimensiunile labirintului
  B = sparse(s(1) * s(2) + 2, s(1) * s(2) + 2); % Se inițializează matrice rară
  B(s(1) * s(2) + 1, s(1) * s(2) + 1) = 1;
  B(s(1) * s(2) + 2, s(1) * s(2) + 2) = 1;
  for i = 1 : s(1)
    for j = 1 : s(2)
      for nr = 0 : 3 % Verifică fiecare perete (de sus, dreapta, jos, stânga)
        if (mod(Labyrinth(i, j), 2) == 0 && nr == 0)
          if j == 1
            B((i - 1) * s(2) + j, s(1) * s(2) + 2) = 1;
          else
            B((i - 1) * s(2) + j, (i - 1) * s(2) + j - 1) = 1;
            B((i - 1) * s(2) + j - 1, (i - 1) * s(2) + j) = 1;
          endif
        endif
        if (mod(Labyrinth(i, j), 2) == 0 && nr == 1)
          if j == s(2)
            B((i - 1) * s(2) + j, s(1) * s(2) + 2) = 1;
          else
            B((i - 1) * s(2) + j, (i - 1) * s(2) + j + 1) = 1;
            B((i - 1) * s(2) + j + 1, (i - 1) * s(2) + j) = 1;
          endif
        endif
        if (mod(Labyrinth(i, j), 2) == 0 && nr == 2)
          if i == s(1)
            B((i - 1) * s(2) + j, s(1) * s(2) + 1) = 1;
          else
            B((i - 1) * s(2) + j, i * s(2) + j) = 1;
            B(i * s(2) + j, (i - 1) * s(2) + j) = 1;
          endif
        endif
        if (mod(Labyrinth(i, j), 2) == 0 && nr == 3)
          if i == 1
            B((i - 1) * s(2) + j, s(1) * s(2) + 1) = 1;
          else
            B((i - 1) * s(2) + j, (i - 2) * s(2) + j) = 1;
            B((i - 2) * s(2) + j, (i - 1) * s(2) + j) = 1;
          endif
        endif
        Labyrinth(i, j) = fix(Labyrinth(i, j) / 2); % Se imparte la 2 și se aplică parte întreagă
      endfor
    endfor
  endfor
  Adj = B;
endfunction
