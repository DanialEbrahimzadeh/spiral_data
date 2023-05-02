function D = floyd_dist(X , n) 
    D = squareform(pdist(X)) ; 
    [D,idx] = sort(D,2) ; 
    D(:,n+1:end) = inf ; 
    
    %safe 
    for k=1:size(D,1)
        D(k,:) = D(k,idx(k,:)) ; 
    end
    
    %apply floyd to D
    
end