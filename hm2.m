close all hidden
clear
clc


theta =  linspace(0,34, 1000)  ; 
X=[] ;
for k=1:length(theta)
    X=[X;0.1*(k^4)*cos(theta(k)) 0.1*(k^4)*sin(theta(k))];
end
%D=floyd_dist(X,4);
n=4;
D1 = squareform(pdist(X,'euclidean')) ; 
D=ones(size(D1,1),size(D1,2)) * inf;
for i=1:size(D1,1)
    n=4;
    D2=[];
    [D2,idx] = sort(D1(i,:)) ;
    if mod(i,4)==0
        n=6;
    end
    for j=1:n
        D(i,idx(j))=D2(j);
    end
end
 
    
%apply floyd to D
for k=1:size(D,1)
    for i=1:size(D,1)
        for j=1:size(D,1)
            if D(i,j)>D(i,k)+D(k,j)
                D(i,j)=D(i,k)+D(k,j);
            end
        end
    end
    disp(k);
end

[idx1, idx2, idx3] = cluster_data(D , 4 , [2 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 