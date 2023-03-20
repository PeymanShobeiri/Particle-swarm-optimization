function [z sol]=MyCost(a,model)

    global NFE;
    if isempty(NFE)
        NFE=0;
    end

    NFE=NFE+1;
    
    x=model.x;
    y=model.y;
    fhat=model.fhat;

    yhat=zeros(size(x));
    for i=1:numel(x)
        yhat(i)=fhat(x(i),a);
    end
    
    e=y-yhat;
    
    z=sum(e.^2);

    sol.yhat=yhat;
    sol.e=e;
    
end