function inflateFactor = computeInflateFactor(A,longestAxisLength)


    [eigvecs, eigvals] = eig(A);
    eigs= diag(eigvals);
    % Position (1,2 or 3) of the minimum inertia
    minpos = find(eigs == min(eigs)); 

     
    % the radii are the singular value of a rectangula matrix J+ and they are the sqrt(eigenvalues of the square matrix J+'J+) 
    radii(1) = sqrt(1/eigs(1));
    radii(2) = sqrt(1/eigs(2));
    radii(3) = sqrt(1/eigs(3));
        
    % Resize the radii to match user desires
    inflateFactor = (radii(minpos)*2) / longestAxisLength;
end
