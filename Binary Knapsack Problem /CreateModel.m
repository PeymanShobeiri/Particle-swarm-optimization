function model=CreateModel()

    % Item Values
    v=[2   8  11  18   3   2   2   8  19   7  11  17];

    % Item Weights
    w=[26  36  50  35  50  25  18  48  27  30  18  19];

    % Item Counts
    M=[7   2   3   7   3   7   8   3   6   1   7   7];
    
    % Max Weight
    W=850;
    
    % Number of Items
    N=numel(v);
    
    model.N=N;
    model.v=v;
    model.w=w;
    model.M=M;
    model.W=W;

end
