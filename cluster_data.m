
function [idx1 idx2 idx3] = cluster_data(X , n , s ) 

[idx1, c] = kmeans ( X ,n ) ; 
    %test with newc
net = newc(X' , n ) ; 
net = train(net, X') ; 
idx2 = sim(net ,X' ) ; 
idx2 = vec2ind (idx2 ) ; 
    %test with som

net = newsom(X' , s) ; 
net = train(net, X') ; 
idx3 = sim(net ,X' ) ; 
idx3 = vec2ind (idx3 ) ; 

end