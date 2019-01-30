function [reorderresult,shipmentresult,quantityresult,costresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n)
syms Q positive;

TC = (D*(n*v_b + v_v))/(n*Q)+h_b*(r + Q/2 - D/Tau) + ...
    (D^2*(Delta+h_b)/(Tau^2*Q))*(exp(-r*Tau/D)-exp(-((r+Q)*Tau)/D))+...
    h_v*(Q/2)*((n-1)*(1-D/P)+D/P)+(D/Q)*L*(f_b+X_b*Q)*(exp(mu+(sigma^2/(4*beta))));
r = (D/Tau)*log((D*(Delta + h_b)*(1 - exp(-Q*Tau/D)))/(h_b*Tau*Q));
NewTC = subs(TC, r);

% valueQ = zeros(1,3);
minQ = zeros(1);
% TotalCost = valueQ;

reorderPoint = zeros(1);
n_checkPoint = zeros(1);
TotalCost(1,1)= Inf;

for i = 1:10
    TotalCost(i,1)= Inf;
    TC_inQ(i) = subs(NewTC, n, i);
    
    %% Optimal value of Q by equation the first derivative to zero
    g(i) = diff(TC_inQ(i),Q);

    minQ(i) = solve(g(i) == 0, Q, 'MaxDegree', 4); % 
    % supress the warning:
    % 
    w = warning('query','last');
    id = w.identifier;
    warning('off', id);
rmpath('folderthatisnotonpath')
    TotalCost(i) = subs(TC_inQ(i), Q, minQ(i));
    
    reorderPoint(i) =...
                (D/Tau)*log((D*(Delta + h_b)*...
                (1 - exp(-minQ(i)*Tau/D)))/(h_b*Tau*minQ(i)));
            n_checkPoint(i) = (2*D*v_v)/(h_v*minQ(i)^2*(1-D/P));
            n_star = i;
            disp(['n = ' num2str(i)]);
            disp(['Optimal Q: ' num2str(minQ(i))]);
            if n_checkPoint(i) >= n_star*(n_star-1)
                disp('n_star Left condition satisfied');
            else 
                disp('n_star Left condition NOT satisfied');
            end
            if n_checkPoint(i) <= n_star*(n_star+1)
                disp('n_star Right condition satisfied');
            else
                disp('n_star Right condition NOT satisfied');
            end
            
            disp(['Reorder point: ' num2str(reorderPoint(i))]);
            disp(['Total Cost: ' num2str(TotalCost(i))]);
            disp('===============================');
       
            
    temp_minTotalCost(i) = TotalCost(i);
    if i >= 2
        if temp_minTotalCost(i) >= temp_minTotalCost(i-1) 
            disp('**************************');
            disp(['* Reorder level = '  num2str(reorderPoint(i-1))]);
            reorderresult = double(reorderPoint(i-1));
            disp(['* Optimal found at n =  ' num2str(i-1)]);
            shipmentresult = double(i-1);
            disp(['* Optimal Q = ' num2str(minQ(i-1))]);
            quantityresult = double(minQ(i-1));
            disp(['* Optimal Cost = ' num2str(TotalCost(i-1))]);
            costresult = double(TotalCost(i-1));
            disp(['* Tau = ' num2str(Tau)]);
            disp('*************************');
            break;
        end % end if
    end % end if
end % end for i

end