function [Labyrinth] = parse_labyrinth(file_path)
  fid = fopen(file_path, "r"); % Deschide fișierul pentru citire
  dim = fscanf(fid, "%d", 2); % Citire dimensiune labirint
  m = dim(1); % Extrage numărul de rânduri
  n = dim(2); % Extrage numărul de coloane
  Labyrinth = fscanf(fid, "%f", [n, m])'; % Citire labirint și salvare în matrice
  fclose(fid); % Închide fișierul
endfunction
