function demo_clusters(X, idx1, idx2, idx3 ) 
close all hidden
figure, 
subplot(2,2,1),  gscatter(X(:,1) , X(:,2) , idx1) ; 
title('Kmeans') ;

subplot(2,2,2), gscatter(X(:,1) , X(:,2) , idx2) ; 
title('Competitive') ;

subplot(2,2,3), gscatter(X(:,1) , X(:,2) , idx3) ; 
title('SOM') ;

end