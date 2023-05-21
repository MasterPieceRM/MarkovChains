function [decoded_path] = decode_path (path, lines, cols)
    % Inițializează vectorul decoded_path cu o matrice nulă având numărul de rânduri 
    % egal cu lungimea vectorului path minus unu și numărul de coloane egal cu doi
    decoded_path = zeros(numel(path) - 1, 2);
    
    % Parcurge fiecare element din vectorul path cu excepția ultimului element
    for i = 1 : numel(path)-1
        % Calculează indicele de linie corespunzător elementului din path
        row_index = ceil(path(i) / cols);
        % Calculează indicele de coloană corespunzător elementului din path
        col_index = mod(path(i) - 1, cols) + 1;
        % Salvează perechea de indici de linie și coloană în matricea decoded_path
        decoded_path(i, :) = [row_index, col_index];
    end
endfunction
