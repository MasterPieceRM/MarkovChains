# MarkovChains
1. function [Labyrinth] = parse_labyrinth:

Această funcție este utilizată pentru a parsa un fișier reprezentând un labirint. Funcția primește ca parametru calea către fișier și returnează o matrice reprezentând labirintul.

2. function [Adj] = get_adjacency_matrix:

Această funcție primește ca argument o matrice "Labyrinth" care reprezintă labirintul și returnează o matrice rară de adiacență "Adj" pentru labirintul dat, ținând cont de pereți.

3. function [Link] = get_link_matrix:

Această funcție primește ca argument o matrice "Labyrinth" care reprezintă labirintul și returnează o matrice rară de legătură "Link" pentru labirintul dat, ținând cont de pereți.

4. function [G, c] = get_Jacobi_parameters:

Această funcție primește ca argument o matrice de legătură și returnează parametrii necesari în aplicare metodei Jacobi.

5. function [x, err, steps] = perform_iterative:

Această funcție implementează o metodă iterativă pentru a rezolva un sistem de ecuații liniare de forma Ax = b. Metoda iterativă presupune pornirea de la o valoare inițială a vectorului soluție x0 și actualizarea acestuia într-un mod iterativ, până când se atinge o toleranță tol sau se ajunge la un număr maxim de pași max_steps.

6. function [path] = heuristic_greedy:

Această funcție implementează un algoritm euristici de parcurgere greedy a unui labirint reprezentat printr-o rețea de noduri și muchii. Scopul este de a găsi un drum de la poziția de început start_position la un nod final, reprezentat de nodul cu starea WIN din rețea. Algoritmul alege mereu următorul nod pe baza probabilității sale de a conduce la nodul WIN.

7. function [decoded_path] = decode_path:

Această funcție primește un parametru numit "path", care este un vector ce conține ordinea pozițiilor parcurse pentru a ajunge la o poziție de câștig. Funcția decodează acest vector într-un alt vector numit "decoded_path", care conține perechi de indici de linie și coloană corespunzători pozițiilor din "path". Indicii de linie și coloană sunt calculate folosind numărul de linii și coloane date de parametrii "lines" și "cols".
