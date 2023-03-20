function model=CreateModel()

    x=[15 65 8 55 21 32 5 88 38 61 44 51 31 30 0 56 11 65 11 44];
    y=[5 99 65 59 95 50 63 74 65 74 60 22 55 95 73 9 59 64 47 57];
    
    N=numel(x);
    
    D=zeros(N,N);
    for i=1:N-1
        for j=i:N
            D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
            D(j,i)=D(i,j);
        end
    end
    
    model.N=N;
    model.x=x;
    model.y=y;
    model.D=D;

end