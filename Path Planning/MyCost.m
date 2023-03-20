function [z sol]=MyCost(sol1,model)

    global NFE;
    if isempty(NFE)
        NFE=0;
    end
    
    NFE=NFE+1;

    sol=ParseSolution(sol1,model);
    
    beta=10;
    z=sol.L*(1+beta*sol.Violation);

end