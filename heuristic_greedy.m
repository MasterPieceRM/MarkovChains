function [path] = heuristic_greedy(start_position, probabilities, Adj)
% start_position -> poziția de început în rețea
% probabilities -> vectorul de probabilități asociat fiecărui nod din rețea, inclusiv probabilitățile WIN și LOSE
% path -> vectorul de noduri alese de algoritm

    path = [start_position]; % Inițializarea căii cu poziția de început
    visited = [start_position]; % Inițializarea listei de noduri vizitate cu poziția de început
    while ~isempty(path)
        current_pos = path(end); % Se obține ultimul nod din cale
        if current_pos == length(probabilities) - 1 % Dacă nodul curent este ultimul din rețea, se încheie funcția și se returnează calea
            return;
        end
        neighbors = find(Adj(current_pos, :)); % Se obțin vecinii nodului curent din matricea de adiacență
        neighbors = setdiff(neighbors, visited); % Se elimină vecinii deja vizitați
        if isempty(neighbors) % Dacă nu există vecini disponibili, se elimină ultimul nod din cale și se continuă cu nodul anterior
            path = path(1:end-1);
            continue;
        end
        [max_prob, max_idx] = max(probabilities(neighbors)); % Se alege vecinul cu cea mai mare probabilitate de a conduce la nodul final
        next_pos = neighbors(max_idx);
        visited = [visited, next_pos];
        path = [path, next_pos]; % Se adaugă următoarea mutare în cale
    end
end
