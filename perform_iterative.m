function [x, err, steps] = perform_iterative (G, c, x0, tol, max_steps)
  steps = 1;
  x = x0; % Inițializarea valorii vectorului soluție cu valoarea inițială dată
  err = tol; % Inițializarea erorii cu toleranța dată
  while steps < max_steps
    x = G * x0 + c; % Actualizarea valorii vectorului soluție folosind matricea de iterare și vectorul de iterare
    err = norm(x - x0); % Calcularea erorii de aproximare a soluției
    if err < tol % Verificarea criteriului de oprire
        return; % Încheierea funcției și returnarea valorilor finale
    end
    x0 = x; % Actualizarea valorii inițiale a vectorului soluție cu noua valoare calculată
    steps = steps + 1;
  end
endfunction
