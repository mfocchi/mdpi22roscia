 function  plotEllispoidInertia(A, center, inflateFactor)
    
 
    [eigvecs, eigvals] = eig(A);
         
    % The eigenvalues are the diagonal elements of the returned matrix
    eigs= diag(eigvals);
    if(any(eigs < 0))
        error('Looks like the inertia tensor is not positive definite');
    end

    % The equation of the inertia ellipsoid is
    %    X x^2 + Y y^2 + Z z^2 = 1
    % Matlab computes an ellipsoid with this equation
    %    (x^2)/(a^2) + (y^2)/(b^2) + (z^2)/(c^2) = 1
    % I call 'a', 'b' and 'c' "radii"; they are half of the ellipsoid axes
    %size of axis are the singularvalues = square root of the eigen values
    %of (I)^-1

    % the radii are the singular value of a rectangula matrix J+ and they are the sqrt(1/eigenvalues of the square matrix J+'J+) 
    radii(1) = sqrt(1/eigs(1));
    radii(2) = sqrt(1/eigs(2));
    radii(3) = sqrt(1/eigs(3));
        
    radii= radii/inflateFactor;
    %the ellispoid is created 
    [X,Y,Z] = ellipsoid(0,0,0, radii(1),radii(2),radii(3));

    % Rotate the coordinates of all the points to the base frame (they are
    % generated in the ellipsoidframe), and translate them to p3
    for r=1:size(X,1)
        for c=1:size(X,2)
            tmp =  eigvecs* [X(r,c); Y(r,c); Z(r,c);]; %%rotate back to base coordinates by mult for the eigvecs vatrix that contains the axis of the ellipsoid in base coords
            X(r,c) = tmp(1) + center(1); %translate to end effector
            Y(r,c) = tmp(2) + center(2);
            Z(r,c) = tmp(3) + center(3);
        end
    end
    surf(X, Y, Z, 'FaceColor',[0.8 0.1 0.1],'FaceAlpha', 0.5, 'EdgeAlpha', 0.1 ,'EdgeColor','none');hold on;
    colormap jet
    shading interp;
    light;
    lighting phong;
    

    %plot axes 
    arrow3d(center,eigvecs(:,1)/norm(eigvecs(:,1))*radii(1), 'color', [1 0 0 ],'facealpha', 0.5,  'stemWidth', 0.0015);
    arrow3d(center,eigvecs(:,2)/norm(eigvecs(:,1))*radii(2), 'color', [0 1 0 ],'facealpha', 0.5,  'stemWidth', 0.0015);
    arrow3d(center,eigvecs(:,3)/norm(eigvecs(:,1))*radii(3), 'color', [0 0 1 ],'facealpha', 0.5,  'stemWidth', 0.0015);
    
    xlabel(['X'])
    ylabel(['Y'])   
    zlabel(['Z'])
    axis equal;
    
 end
