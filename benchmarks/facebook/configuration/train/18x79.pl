10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('15687','30105').
0.1::trusts('29208','15687').
0.40951::trusts('30105','15687').
0.19::trusts('940','15687').
0.19::trusts('23813','15687').
0.1::trusts('10450','15687').
0.1::trusts('31977','15687').
0.271::trusts('31979','15687').
0.40951::trusts('41234','15687').
0.1::trusts('36217','15687').
0.3439::trusts('43778','3506').
0.271::trusts('45692','3506').
0.40951::trusts('3506','43778').
0.19::trusts('36217','43778').
0.3439::trusts('3506','45692').
0.1::trusts('38623','45692').
0.1::trusts('39122','45692').
0.271::trusts('15687','940').
0.1::trusts('31979','940').
0.1::trusts('34907','940').
0.19::trusts('15687','23813').
0.1::trusts('29208','10450').
0.1::trusts('15687','10450').
0.40951::trusts('29208','31977').
0.19::trusts('15687','31977').
0.7458134171671::trusts('15687','31979').
0.901522909781639::trusts('15687','41234').
0.1::trusts('36217','41234').
0.1::trusts('30205','41234').
0.1::trusts('15687','36217').
0.271::trusts('43778','36217').
0.1::trusts('45692','38623').
0.1::trusts('940','34907').
0.271::trusts('41234','30205').
0.1::trusts('39122','47752').

person('30105').
person('15687').
person('3506').
person('43778').
person('45692').
person('29208').
person('940').
person('23813').
person('10450').
person('31977').
person('31979').
person('41234').
person('36217').
person('38623').
person('34907').
person('30205').
person('39122').
person('47752').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30105')).
query(buys('15687')).
query(buys('3506')).
query(buys('43778')).
query(buys('45692')).
query(buys('29208')).
query(buys('940')).
query(buys('23813')).
query(buys('10450')).
query(buys('31977')).
query(buys('31979')).
query(buys('41234')).
query(buys('36217')).
query(buys('38623')).
query(buys('34907')).
query(buys('30205')).
query(buys('39122')).
query(buys('47752')).
