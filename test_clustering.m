close all hidden
clear
clc

%% Test clustering with random data

X= [] ; 

x = rand(100,2) ; 
X=[X; x(:,1)-5 x(:,2)-5]; 

x = rand(100,2) ; 
X=[X; x(:,1)-5 x(:,2)+5]; 

x = rand(100,2) ; 
X=[X; x(:,1)+5 x(:,2)-5]; 

x = rand(100,2) ; 
X=[X; x(:,1)+5 x(:,2)+5]; 

[idx1, idx2, idx3] = cluster_data(X , 4 , [2 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 

%% Random data
X = rand(400,2) ; 
[idx1, idx2, idx3] = cluster_data(X , 4 , [2 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 

%% Circular data

r1 = 5 ; 
r2 = 10 ; 
X=[] ;
theta =linspace(0,2*pi,200) ; 
X=[r1*cos(theta') r1*sin(theta'); ...
   r2*cos(theta') r2*sin(theta')];

[idx1, idx2, idx3] = cluster_data(X , 4 , [2 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 

 %% circular data, 2 clusters   
r1 = 2 ; 
r2 = 20 ; 
X=[] ; 
theta =linspace(0,2*pi,200) ; 
X=[r1*cos(theta') r1*sin(theta'); ...
   r2*cos(theta') r2*sin(theta')];

[idx1, idx2, idx3] = cluster_data(X , 2 , [1 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 


 %% circular data, 2 clusters   
r1 = 2 ; 
r2 = 20 ; 
X=[] ;
theta =linspace(0,2*pi,200) ; 
X=[r1*cos(theta') r1*sin(theta'); ...
   r2*cos(theta') r2*sin(theta')];

[idx1, idx2, idx3] = cluster_data(X , 20 , [4 5]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 



 %% circular data, 4 clusters  
r = [2 4 6 8] ; 
theta =linspace(0,2*pi,200) ; 
X=[] ; 
for k=1:4
    X=[X;r(k)*cos(theta') r(k)*sin(theta')];
end
[idx1, idx2, idx3] = cluster_data(X , 4 , [2 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 

 %% spiral data, 4 clusters  
theta =  linspace(0,34, 10000)  ; 
X=[] ;
for k=1:length(theta)
    X=[X;0.1*k*cos(theta(k)) 0.1*k*sin(theta(k))];
end

[idx1, idx2, idx3] = cluster_data(X , 4 , [2 2]) ; 
demo_clusters(X,idx1 , idx2 ,idx3 ) ; 

