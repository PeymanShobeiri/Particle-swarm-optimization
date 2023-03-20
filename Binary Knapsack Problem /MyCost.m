function [z sol]=MyCost(x,model)
    
    global NFE;
    if isempty(NFE)
        NFE=0;
    end
    
    NFE=NFE+1;

    v=model.v;
    w=model.w;
    M=model.M;
    W=model.W;

    r=M-x;
    SumVR=sum(v.*r);
    SumVX=sum(v.*x);
    SumWX=sum(w.*x);
    Violation=max(SumWX/W-1,0);
   
    
    beta=10;
    z=SumVR*(1+beta*Violation);

    sol.x=x;
    sol.r=r;
    sol.SumVX=SumVX;
    sol.SumVR=SumVR;
    sol.SumWX=SumWX;
    sol.Violation=Violation;
    sol.z=z;
    sol.IsFeasible=(Violation==0);

end
