%
%Table Generator
%
syms  D P n r  v_ b v_v h_v h_b Tau Delta f_b X_b L mu beta sigma;
syms Q positive;

Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
 sigma = 0.10568; % volatility

%L and Sigma
ydirection=1;
xdirection=1;
sigmaLthereorderlevel =  zeros(11,11);
sigmaLtheoptimalquantity =   zeros(11,11);
sigmaLtheoptimalcost =  zeros(11,11);
sigmaLtheshipment =   zeros(11,11);
for L= 250:50:750 

    for sigma = 0.055:0.01:0.155
        
        [sigmaLreorderresult,sigmaLshipmentresult,sigmaLquantityresult,sigmaLcostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        sigmaLthereorderlevel(ydirection,xdirection) = sigmaLreorderresult;
        sigmaLtheoptimalquantity(ydirection,xdirection) = sigmaLquantityresult;
        sigmaLtheoptimalcost(ydirection,xdirection) = sigmaLcostresult;
        sigmaLtheshipment(ydirection,xdirection) = sigmaLshipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end

%L and Beta need to fix
Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
 sigma = 0.10568; % volatility

 ydirection=1;
xdirection=1;
betaLthereorderlevel = zeros(11,21);
betaLtheoptimalquantity = zeros(11,21);
betaLtheoptimalcost= zeros(11,21);
betaLtheshipment = zeros(11,21);
for L= 250:50:750

    for beta = 0.9:0.1:3
        
        [betaLreorderresult,betaLshipmentresult,betaLquantityresult,betaLcostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        betaLthereorderlevel(ydirection,xdirection) = betaLreorderresult;
        betaLtheoptimalquantity(ydirection,xdirection) = betaLquantityresult;
        betaLtheoptimalcost(ydirection,xdirection) = betaLcostresult;
        betaLtheshipment(ydirection,xdirection) = betaLshipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end
 
 %L and Mue need to fix
 Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
 sigma = 0.10568; % volatility

 ydirection=1;
xdirection=1;
mueLthereorderlevel = zeros(11,8);
mueLtheoptimalquantity= zeros(11,8);
 mueLtheoptimalcost = zeros(11,8);
 mueLtheshipment = zeros(11,8);
for L= 250:50:750

    for mu = -0.06:0.01:0.01
        
        [mueLreorderresult,mueLshipmentresult,mueLquantityresult,mueLcostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        mueLthereorderlevel(ydirection,xdirection) = mueLreorderresult;
        mueLtheoptimalquantity(ydirection,xdirection) = mueLquantityresult;
        mueLtheoptimalcost(ydirection,xdirection) = mueLcostresult;
        mueLtheshipment(ydirection,xdirection) = mueLshipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end
 % Tau and Sigma
 Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
sigma = 0.10568; % volatility
ydirection=1;
xdirection=1;
sigmatauthereorderlevel = zeros(9,11);
sigmatautheoptimalquantity = zeros(9,11);
sigmatautheoptimalcost= zeros(9,11);
sigmatautheshipment = zeros(9,11);
for ELT = 11:1:19 
 Tau=365/ELT;
    for sigma = 0.055:0.01:0.155
        
        [sigmataureorderresult,sigmataushipmentresult,sigmatauquantityresult,sigmataucostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        sigmatauthereorderlevel(ydirection,xdirection) = sigmataureorderresult;
        sigmatautheoptimalquantity(ydirection,xdirection) = sigmatauquantityresult;
        sigmatautheoptimalcost(ydirection,xdirection) = sigmataucostresult;
        sigmatautheshipment(ydirection,xdirection) = sigmataushipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end

% xb and fb
Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
sigma = 0.10568; % volatility
ydirection=1;
xdirection=1;
xbfbthereorderlevel = zeros(11,8);
xbfbtheoptimalquantity  = zeros(11,8);
xbfbtheoptimalcost  = zeros(11,8);
xbfbtheshipment  = zeros(11,8);

for  X_b = 0.0005:0.0002:0.0025  

    for f_b = 0.1:0.05:0.45
        [xbfbreorderresult,xbfbshipmentresult,xbfbquantityresult,xbfbcostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        xbfbthereorderlevel(ydirection,xdirection) = xbfbreorderresult;
        xbfbtheoptimalquantity(ydirection,xdirection) = xbfbquantityresult;
        xbfbtheoptimalcost(ydirection,xdirection) = xbfbcostresult;
        xbfbtheshipment(ydirection,xdirection) = xbfbshipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end

% L and Tau
Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
sigma = 0.10568; % volatility
ydirection=1;
xdirection=1;
LELTthereorderlevel = zeros(11,7);
LELTtheoptimalquantity  = zeros(11,7);
LELTtheoptimalcost = zeros(11,7);
LELTtheshipment = zeros(11,7);

for L = 250:50:750

    for ELT = 12:1:18
        Tau=365/ELT;
        [LELTreorderresult,LELTshipmentresult,LELTquantityresult,LELTcostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        LELTthereorderlevel(ydirection,xdirection) = LELTreorderresult;
        LELTtheoptimalquantity(ydirection,xdirection) = LELTquantityresult;
        LELTtheoptimalcost(ydirection,xdirection) = LELTcostresult;
        LELTtheshipment(ydirection,xdirection) = LELTshipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end
%Tau and beta
Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
sigma = 0.10568; % volatility
ydirection=1;
xdirection=1;
ELTbetathereorderlevel = zeros(9,21);
ELTbetatheoptimalquantity = zeros(9,21);
ELTbetatheoptimalcost = zeros(9,21);
ELTbetatheshipment  = zeros(9,21);

for ELT = 11:1:19
Tau=365/ELT;
    for beta = 0.9:0.1:3
        
        [ELTbetareorderresult,ELTbetashipmentresult,ELTbetaquantityresult,ELTbetacostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        ELTbetathereorderlevel(ydirection,xdirection) = ELTbetareorderresult;
        ELTbetatheoptimalquantity(ydirection,xdirection) = ELTbetaquantityresult;
        ELTbetatheoptimalcost(ydirection,xdirection) = ELTbetacostresult;
        ELTbetatheshipment(ydirection,xdirection) = ELTbetashipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end

%Tau and Mue
Tau =24.33; %% 20 days is converted to year by diving it with 365 and inverse of it gives the Tau
 P = 10000; % Production rate
 D = 5000; % Demand
 h_v = 5; % Vendor's holding cost
h_b = 9; % Buyer's holding cost 
 Delta = 28; % stockout cost
 v_b = 50; % Order cost by the buyer (A_b in paper)
 v_v = 300; % Setup cost by the vendor (A_v in paper)
 f_b = 0.3; % fixed consumption
X_b = 0.0015;  % variable consumption
 L = 500;  % diatance
 mu = -0.028028;% mean
beta = 1.8594; % speed
sigma = 0.10568; % volatility
ELTmuthereorderlevel = zeros(9,9);
ELTmutheoptimalquantity = zeros(9,9);
ELTmutheoptimalcost = zeros(9,9);
ELTmutheshipment= zeros(9,9);
ydirection=1;
xdirection=1;

for ELT = 11:1:19
Tau=365/ELT;
    for mu = -0.06:0.01:0.01
        
        [ELTmureorderresult,ELTmushipmentresult,ELTmuquantityresult,ELTmucostresult] = test(D,P,v_b,v_v,h_v,h_b,Tau,Delta,f_b,X_b,L,mu,beta,sigma,Q,r,n);
        ELTmuthereorderlevel(ydirection,xdirection) = ELTmureorderresult;
        ELTmutheoptimalquantity(ydirection,xdirection) = ELTmuquantityresult;
        ELTmutheoptimalcost(ydirection,xdirection) = ELTmucostresult;
        ELTmutheshipment(ydirection,xdirection) = ELTmushipmentresult;
        
       
        xdirection=xdirection+1;
    end
xdirection=1;  
ydirection=ydirection+1;    
   

end
%
%Export data to excel
%

%for xb and fb export data
%for length of 11 (L)
for i = 1:11
    reorder11(i)= "reorder";
end
string(reorder11)
for i = 1:11
    quantity11(i)= "quantity";
end
string(quantity11)
for i = 1:11
    cost11(i)= "cost";
end
string(cost11)
for i = 1:11
    ship11(i)= "shipment";
end
string(ship11)
%for length of 9 (Tau)
for i = 1:9
    reorder9(i)= "reorder";
end
string(reorder9)
for i = 1:9
    quantity9(i)= "quantity";
end
string(quantity9)
for i = 1:9
    cost9(i)= "cost";
end
string(cost9)
for i = 1:9
    ship9(i)= "shipment";
end
string(ship9)


xb1= 0.0005:0.0002:0.0025 ;
fb1= 0.1:0.05:0.45;

%xb fb reorder
xlswrite('results.xlsx',reorder11(:),'xbfb','B2');
xlswrite('results.xlsx',{'''xb'},'xbfb','A1');
xlswrite('results.xlsx',{'''fb'},'xbfb','B1');
xlswrite('results.xlsx', fb1, 'xbfb','C1');
xlswrite('results.xlsx', xb1(:), 'xbfb','A2');
xlswrite('results.xlsx',xbfbthereorderlevel,'xbfb','C2');

%xb fb quantity
xlswrite('results.xlsx',quantity11(:),'xbfb','B16');
xlswrite('results.xlsx',{'''xb'},'xbfb','A15');
xlswrite('results.xlsx',{'''fb'},'xbfb','B15');
xlswrite('results.xlsx', fb1, 'xbfb','C15');
xlswrite('results.xlsx', xb1(:), 'xbfb','A16');
xlswrite('results.xlsx',xbfbtheoptimalquantity,'xbfb','C16');

%xb fb cost

xlswrite('results.xlsx',cost11(:),'xbfb','B30');
xlswrite('results.xlsx',{'''xb'},'xbfb','A29');
xlswrite('results.xlsx',{'''fb'},'xbfb','B29');
xlswrite('results.xlsx', fb1, 'xbfb','C29');
xlswrite('results.xlsx', xb1(:), 'xbfb','A30');
xlswrite('results.xlsx',xbfbtheoptimalcost,'xbfb','C30');

%xb fb shipment

xlswrite('results.xlsx',ship11(:),'xbfb','B44');
xlswrite('results.xlsx',{'''xb'},'xbfb','A43');
xlswrite('results.xlsx',{'''fb'},'xbfb','B43');
xlswrite('results.xlsx', fb1, 'xbfb','C43');
xlswrite('results.xlsx', xb1(:), 'xbfb','A44');
xlswrite('results.xlsx',xbfbtheshipment,'xbfb','C44');






%for sigma and L export data

sigma= 0.055:0.01:0.155 ;
L= 250:50:750;

%sigma L reorder
xlswrite('results.xlsx',reorder11(:),'sigmaxL','B2');
xlswrite('results.xlsx',{'''L'},'sigmaxL','A1');
xlswrite('results.xlsx',{'''sigma'},'sigmaxL','B1');
xlswrite('results.xlsx', sigma, 'sigmaxL','C1');
xlswrite('results.xlsx', L(:), 'sigmaxL','A2');
xlswrite('results.xlsx',sigmaLthereorderlevel,'sigmaxL','C2');

%sigma L quantity
xlswrite('results.xlsx',quantity11(:),'sigmaxL','B16');
xlswrite('results.xlsx',{'''L'},'sigmaxL','A15');
xlswrite('results.xlsx',{'''sigma'},'sigmaxL','B15');
xlswrite('results.xlsx', sigma, 'sigmaxL','C15');
xlswrite('results.xlsx', L(:), 'sigmaxL','A16');
xlswrite('results.xlsx',sigmaLtheoptimalquantity,'sigmaxL','C16');
%sigma L cost
xlswrite('results.xlsx',cost11(:),'sigmaxL','B30');
xlswrite('results.xlsx',{'''L'},'sigmaxL','A29');
xlswrite('results.xlsx',{'''sigma'},'sigmaxL','B29');
xlswrite('results.xlsx', sigma, 'sigmaxL','C29');
xlswrite('results.xlsx', L(:), 'sigmaxL','A30');
xlswrite('results.xlsx',sigmaLtheoptimalcost,'sigmaxL','C30');

%sigma L shipment
xlswrite('results.xlsx',ship11(:),'sigmaxL','B44');
xlswrite('results.xlsx',{'''L'},'sigmaxL','A43');
xlswrite('results.xlsx',{'''sigma'},'sigmaxL','43');
xlswrite('results.xlsx', sigma, 'sigmaxL','C43');
xlswrite('results.xlsx', L(:), 'sigmaxL','A44');
xlswrite('results.xlsx',sigmaLtheshipment,'sigmaxL','C44');


%for beta and L export data

beta = 0.9:0.1:3;
%beta L reorder
xlswrite('results.xlsx',reorder11(:),'betaxL','B2');
xlswrite('results.xlsx',{'''L'},'betaxL','A1');
xlswrite('results.xlsx',{'''beta'},'betaxL','B1');
xlswrite('results.xlsx', beta, 'betaxL','C1');
xlswrite('results.xlsx', L(:), 'betaxL','A2');
xlswrite('results.xlsx',betaLthereorderlevel,'betaxL','C2');

%beta L quanitty
xlswrite('results.xlsx',quantity11(:),'betaxL','B16');
xlswrite('results.xlsx',{'''L'},'betaxL','A15');
xlswrite('results.xlsx',{'''beta'},'betaxL','B15');
xlswrite('results.xlsx', beta, 'betaxL','C15');
xlswrite('results.xlsx', L(:), 'betaxL','A16');
xlswrite('results.xlsx',betaLtheoptimalquantity,'betaxL','C16');
%beta L cost
xlswrite('results.xlsx',cost11(:),'betaxL','B30');
xlswrite('results.xlsx',{'''L'},'betaxL','A29');
xlswrite('results.xlsx',{'''beta'},'betaxL','B29');
xlswrite('results.xlsx', beta, 'betaxL','C29');
xlswrite('results.xlsx', L(:), 'betaxL','A30');
xlswrite('results.xlsx',betaLtheoptimalcost,'betaxL','C30');

%beta L shipment
xlswrite('results.xlsx',ship11(:),'betaxL','B44');
xlswrite('results.xlsx',{'''L'},'betaxL','A43');
xlswrite('results.xlsx',{'''beta'},'betaxL','B43');
xlswrite('results.xlsx', beta, 'betaxL','C43');
xlswrite('results.xlsx', L(:), 'betaxL','A44');
xlswrite('results.xlsx',betaLtheshipment,'betaxL','C44');


%for mue and L export data

mue = -0.06:0.01:0.01;
%mue L reorder
xlswrite('results.xlsx',reorder11(:),'muexL','B2');
xlswrite('results.xlsx',{'''L'},'muexL','A1');
xlswrite('results.xlsx',{'''mue'},'muexL','B1');
xlswrite('results.xlsx', mue, 'muexL','C1');
xlswrite('results.xlsx', L(:), 'muexL','A2');
xlswrite('results.xlsx',mueLthereorderlevel,'muexL','C2');

%mue L quantity
xlswrite('results.xlsx',quantity11(:),'muexL','B16');
xlswrite('results.xlsx',{'''L'},'muexL','A15');
xlswrite('results.xlsx',{'''mue'},'muexL','B15');
xlswrite('results.xlsx', mue, 'muexLL','C15');
xlswrite('results.xlsx', L(:), 'muexL','A16');
xlswrite('results.xlsx',mueLtheoptimalquantity,'muexL','C16');
%mue L cost
xlswrite('results.xlsx',cost11(:),'muexL','B30');
xlswrite('results.xlsx',{'''L'},'muexL','A29');
xlswrite('results.xlsx',{'''mue'},'muexL','B29');
xlswrite('results.xlsx', mue, 'muexL','C29');
xlswrite('results.xlsx', L(:), 'muexL','A30');
xlswrite('results.xlsx',mueLtheoptimalcost,'muexL','C30');

%mue L shipment
xlswrite('results.xlsx',ship11(:),'muexL','B44');
xlswrite('results.xlsx',{'''L'},'muexL','A43');
xlswrite('results.xlsx',{'''mue'},'muexL','43');
xlswrite('results.xlsx',mue, 'muexL','C43');
xlswrite('results.xlsx', L(:), 'muexL','A44');
xlswrite('results.xlsx',mueLtheshipment,'muexL','C44');


%for tau and sigma export data



ELT = 11:1:19;
%sigma tau reorder
xlswrite('results.xlsx',reorder9(:),'sigmaxTau','B2');
xlswrite('results.xlsx',{'''ELT'},'sigmaxTau','A1');
xlswrite('results.xlsx',{'''sigma'},'sigmaxTau','B1');
xlswrite('results.xlsx', sigma, 'sigmaxTau','C1');
xlswrite('results.xlsx',  ELT(:), 'sigmaxTau','A2');
xlswrite('results.xlsx',sigmatauthereorderlevel,'sigmaxTau','C2');

%sigma tau quantity
xlswrite('results.xlsx',quantity9(:),'sigmaxTau','B16');
xlswrite('results.xlsx',{'''ELT'},'sigmaxTau','A15');
xlswrite('results.xlsx',{'''sigma'},'sigmaxTau','B15');
xlswrite('results.xlsx', sigma, 'sigmaxTau','C15');
xlswrite('results.xlsx',  ELT(:), 'sigmaxTau','A16');
xlswrite('results.xlsx',sigmatautheoptimalquantity,'sigmaxTau','C16');
%sigma tau cost
xlswrite('results.xlsx',cost9(:),'sigmaxTau','B30');
xlswrite('results.xlsx',{'''ELT'},'sigmaxTau','A29');
xlswrite('results.xlsx',{'''sigma'},'sigmaxTau','B29');
xlswrite('results.xlsx', sigma, 'sigmaxTau','C29');
xlswrite('results.xlsx',  ELT(:), 'sigmaxTau','A30');
xlswrite('results.xlsx',sigmatautheoptimalcost,'sigmaxTau','C30');

%sigma tau shipment
xlswrite('results.xlsx',ship9(:),'sigmaxTau','B44');
xlswrite('results.xlsx',{'''ELT'},'sigmaxTau','A43');
xlswrite('results.xlsx',{'''sigma'},'sigmaxTau','43');
xlswrite('results.xlsx', sigma, 'sigmaxTau','C43');
xlswrite('results.xlsx', ELT(:), 'sigmaxTau','A44');
xlswrite('results.xlsx',sigmatautheshipment,'sigmaxTau','C44');


%for Tau and L export data
ELTX = 12:1:18;

%tau L reorder
xlswrite('results.xlsx',reorder11(:),'tauxL','B2');
xlswrite('results.xlsx',{'''L'},'tauxL','A1');
xlswrite('results.xlsx',{'''ELTX'},'tauxL','B1');
xlswrite('results.xlsx', ELTX, 'tauxL','C1');
xlswrite('results.xlsx', L(:), 'tauxL','A2');
xlswrite('results.xlsx',LELTthereorderlevel,'tauxL','C2');

%tau L quantity
xlswrite('results.xlsx',quantity11(:),'tauxL','B16');
xlswrite('results.xlsx',{'''L'},'tauxL','A15');
xlswrite('results.xlsx',{'''ELTX'},'tauxL','B15');
xlswrite('results.xlsx', ELTX, 'tauxL','C15');
xlswrite('results.xlsx', L(:), 'tauxL','A16');
xlswrite('results.xlsx',LELTtheoptimalquantity,'tauxL','C16');
%tau L cost
xlswrite('results.xlsx',cost11(:),'tauxL','B30');
xlswrite('results.xlsx',{'''L'},'tauxL','A29');
xlswrite('results.xlsx',{'''ELTX'},'tauxL','B29');
xlswrite('results.xlsx', ELTX, 'tauxL','C29');
xlswrite('results.xlsx', L(:), 'tauxL','A30');
xlswrite('results.xlsx',LELTtheoptimalcost,'tauxL','C30');

%tau L shipment
xlswrite('results.xlsx',ship11(:),'tauxL','B44');
xlswrite('results.xlsx',{'''L'},'tauxL','A43');
xlswrite('results.xlsx',{'''ELTX'},'tauxL','43');
xlswrite('results.xlsx', ELTX, 'tauxL','C43');
xlswrite('results.xlsx', L(:), 'tauxL','A44');
xlswrite('results.xlsx',LELTtheshipment,'tauxL','C44');


%for Tau and Beta


%Tau Beta reorder
xlswrite('results.xlsx',reorder9(:),'betaxTau','B2');
xlswrite('results.xlsx',{'''ELT'},'betaxTau','A1');
xlswrite('results.xlsx',{'''beta'},'betaxTau','B1');
xlswrite('results.xlsx', beta, 'betaxTau','C1');
xlswrite('results.xlsx', ELT(:), 'betaxTau','A2');
xlswrite('results.xlsx',ELTbetathereorderlevel,'betaxTau','C2');

%Tau Beta quanitty
xlswrite('results.xlsx',quantity9(:),'betaxTau','B16');
xlswrite('results.xlsx',{'''ELT'},'betaxTau','A15');
xlswrite('results.xlsx',{'''beta'},'betaxTau','B15');
xlswrite('results.xlsx', beta, 'betaxTau','C15');
xlswrite('results.xlsx', ELT(:), 'betaxTau','A16');
xlswrite('results.xlsx',ELTbetatheoptimalquantity,'betaxTau','C16');
%Tau Beta cost
xlswrite('results.xlsx',cost9(:),'betaxTau','B30');
xlswrite('results.xlsx',{'''ELT'},'betaxTau','A29');
xlswrite('results.xlsx',{'''beta'},'betaxTau','B29');
xlswrite('results.xlsx', beta, 'betaxTau','C29');
xlswrite('results.xlsx', ELT(:), 'betaxTau','A30');
xlswrite('results.xlsx',ELTbetatheoptimalcost,'betaxTau','C30');

%Tau Beta shipment
xlswrite('results.xlsx',ship9(:),'betaxTau','B44');
xlswrite('results.xlsx',{'''ELT'},'betaxTau','A43');
xlswrite('results.xlsx',{'''beta'},'betaxTau','B43');
xlswrite('results.xlsx', beta, 'betaxTau','C43');
xlswrite('results.xlsx', ELT(:), 'betaxTau','A44');
xlswrite('results.xlsx',ELTbetatheshipment ,'betaxTau','C44');

%for Tau and Mue


%Tau Mue reorder
xlswrite('results.xlsx',reorder9(:),'MuexTau','B2');
xlswrite('results.xlsx',{'''ELT'},'MuexTau','A1');
xlswrite('results.xlsx',{'''beta'},'MuexTau','B1');
xlswrite('results.xlsx', mue, 'MuexTau','C1');
xlswrite('results.xlsx', ELT(:), 'MuexTau','A2');
xlswrite('results.xlsx',ELTmuthereorderlevel,'MuexTau','C2');

%Tau Mue quanitty
xlswrite('results.xlsx',quantity9(:),'MuexTau','B16');
xlswrite('results.xlsx',{'''ELT'},'MuexTau','A15');
xlswrite('results.xlsx',{'''mue'},'MuexTau','B15');
xlswrite('results.xlsx', mue, 'MuexTau','C15');
xlswrite('results.xlsx', ELT(:), 'MuexTau','A16');
xlswrite('results.xlsx',ELTmutheoptimalquantity,'MuexTau','C16');
%Tau Mue cost
xlswrite('results.xlsx',cost9(:),'MuexTau','B30');
xlswrite('results.xlsx',{'''ELT'},'MuexTau','A29');
xlswrite('results.xlsx',{'''mue'},'MuexTau','B29');
xlswrite('results.xlsx', mue, 'MuexTau','C29');
xlswrite('results.xlsx', ELT(:), 'MuexTau','A30');
xlswrite('results.xlsx',ELTmutheoptimalcost,'MuexTau','C30');

%Tau Mue shipment
xlswrite('results.xlsx',ship9(:),'betaxTau','B44');
xlswrite('results.xlsx',{'''ELT'},'betaxTau','A43');
xlswrite('results.xlsx',{'''mue'},'betaxTau','B43');
xlswrite('results.xlsx', mue, 'betaxTau','C43');
xlswrite('results.xlsx', ELT(:), 'betaxTau','A44');
xlswrite('results.xlsx',ELTmutheshipment,'betaxTau','C44');









%
%Graph generator
% 

%L and Sigma
sigma=0.055:0.01:0.155;
L=250:50:750;
[X1,Y1]=meshgrid(sigma,L);
figure;
subplot(2,2,1);
contourf(X1,Y1,sigmaLthereorderlevel, 'showtext', 'on');
set(get(gca,'ylabel'),'rotation',0);
xlabel('\it{\sigma}')
ylabel('\it{L  }  ')
title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,sigmaLtheoptimalquantity, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,sigmaLtheoptimalcost, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('\it{L  }  ')
title('(c) Total cost');
set(get(gca,'ylabel'),'rotation',0);
subplot(2,2,4);
contourf(X1,Y1,sigmaLtheshipment, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(d) The optimal number of shipments');

print('sigmaXL','-depsc');
%L and Beta
beta=0.9:0.1:3;
L=250:50:750;
[X1,Y1]=meshgrid(beta,L);
figure;
subplot(2,2,1);
contourf(X1,Y1,betaLthereorderlevel, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,betaLtheoptimalquantity, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,betaLtheoptimalcost, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('\it{L  }  ')
title('(c) Total cost');
set(get(gca,'ylabel'),'rotation',0);

subplot(2,2,4);
contourf(X1,Y1,betaLtheshipment, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(d) The optimal number of shipments');
print('betaxL','-depsc');

%L and Mue
mue= -0.06:0.01:0.01;
L=250:50:750;
[X1,Y1]=meshgrid(mue,L);
figure;
subplot(2,2,1);
contourf(X1,Y1,mueLthereorderlevel, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,mueLtheoptimalquantity, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,mueLtheoptimalcost, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('\it{L  }  ')
title('(c) Total cost');
set(get(gca,'ylabel'),'rotation',0);

subplot(2,2,4);
contourf(X1,Y1,mueLtheshipment, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(d) The optimal number of shipments');


print('muexL','-depsc');
%tau and sigma
ELT=11:1:19;

[X1,Y1]=meshgrid(sigma,ELT);
figure;
subplot(2,2,1);
contourf(X1,Y1,sigmatauthereorderlevel, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('Lead time  ')

title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,sigmatautheoptimalquantity, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('Lead time   ')

title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,sigmatautheoptimalcost, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('Lead time ')
title('(c) Total cost');


subplot(2,2,4);
contourf(X1,Y1,sigmatautheshipment, 'showtext', 'on');
xlabel('\it{\sigma}')
ylabel('Lead time  ')

title('(d) The optimal number of shipments');

print('sigmaxTau','-depsc');

%xb and fb
xb1= 0.0005:0.0002:0.0025 ;
fb1= 0.1:0.05:0.45;
[X1,Y1]=meshgrid(fb1,xb1);
figure;
subplot(2,2,1);
contourf(X1,Y1,xbfbthereorderlevel, 'showtext', 'on');
xlabel('\it{f_b}')
ylabel('\it{x_b  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,xbfbtheoptimalquantity, 'showtext', 'on');
xlabel('\it{f_b}')
ylabel('\it{x_b  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,xbfbtheoptimalcost, 'showtext', 'on');
xlabel('\it{f_b}')
ylabel('\it{x_b  }  ')
title('(c) Total cost');
set(get(gca,'ylabel'),'rotation',0);

subplot(2,2,4);
contourf(X1,Y1,xbfbtheshipment, 'showtext', 'on');
xlabel('\it{f_b}')
ylabel('\it{x_b  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(d) The optimal number of shipments');

print('xbfb','-depsc');
%L and Tau

ELT2=12:1:18;
[X1,Y1]=meshgrid(ELT2,L);
figure;
subplot(2,2,1);
contourf(X1,Y1,LELTthereorderlevel, 'showtext', 'on');
xlabel('Lead time')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,LELTtheoptimalquantity, 'showtext', 'on');
xlabel('Lead time')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,LELTtheoptimalcost, 'showtext', 'on');
xlabel('Lead time')
ylabel('\it{L  }  ')
title('(c) Total cost');
set(get(gca,'ylabel'),'rotation',0);

subplot(2,2,4);
contourf(X1,Y1,LELTtheshipment, 'showtext', 'on');
xlabel('Lead time')
ylabel('\it{L  }  ')
set(get(gca,'ylabel'),'rotation',0);
title('(d) The optimal number of shipments');
print('TauxL','-depsc');

%Tau and beta
ELT=11:1:19;

[X1,Y1]=meshgrid(beta,ELT);
figure;
subplot(2,2,1);
contourf(X1,Y1,ELTbetathereorderlevel, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('Lead time  ')

title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,ELTbetatheoptimalquantity, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('Lead time   ')

title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,ELTbetatheoptimalcost, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('Lead time ')
title('(c) Total cost');


subplot(2,2,4);
contourf(X1,Y1,ELTbetatheshipment, 'showtext', 'on');
xlabel('\it{\beta}')
ylabel('Lead time  ')

title('(d) The optimal number of shipments');
print('BetaXMue','-depsc');
% Tau and mue
mue2 = -0.06:0.01:0.01;
[X1,Y1]=meshgrid(mue2,ELT);
figure;
subplot(2,2,1);
contourf(X1,Y1,mueLthereorderlevel, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('Lead time  ')

title('(a) The optimal reorder level Total cost');

subplot(2,2,2);
contourf(X1,Y1,mueLtheoptimalquantity, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('Lead time   ')

title('(b) The optimal quantity');

subplot(2,2,3);
contourf(X1,Y1,mueLtheoptimalcost, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('Lead time ')
title('(c) Total cost');


subplot(2,2,4);
contourf(X1,Y1,mueLtheshipment, 'showtext', 'on');
xlabel('\it{\mu}')
ylabel('Lead time  ')

title('(d) The optimal number of shipments');
print('mueXTau','-depsc');




