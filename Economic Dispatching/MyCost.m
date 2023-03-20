function [z sol]=MyCost(p,model)

    global NFE;
    if isempty(NFE)
        NFE=0;
    end
    
    NFE=NFE+1;

    a0=model.a0;
    a1=model.a1;
    a2=model.a2;
    PL=model.PL;
    
    c=a0+a1.*p+a2.*p.^2;
    
    v=abs(sum(p)/PL-1);
    
    beta=2;
    
    z=sum(c)*(1+beta*v);
    
    sol.p=p;
    sol.pTotal=sum(p);
    sol.c=c;
    sol.cTotal=sum(c);
    sol.v=v;
    sol.z=z;

end
