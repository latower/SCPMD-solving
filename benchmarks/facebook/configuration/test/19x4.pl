10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('26765','17514').
0.1::trusts('33501','17514').
0.1::trusts('30447','17514').
0.1::trusts('33235','17514').
0.1::trusts('17514','26765').
0.1::trusts('16066','26765').
0.1::trusts('23592','26765').
0.1::trusts('17514','33501').
0.468559::trusts('25715','33501').
0.271::trusts('17514','30447').
0.1::trusts('17514','33235').
0.19::trusts('32820','21570').
0.19::trusts('26095','21570').
0.612579511::trusts('25715','21570').
0.1::trusts('21570','32820').
0.271::trusts('1131','32820').
0.3439::trusts('26095','32820').
0.19::trusts('21570','26095').
0.1::trusts('1131','26095').
0.77123207545039::trusts('32820','26095').
0.6513215599::trusts('21570','25715').
0.40951::trusts('33501','25715').
0.1::trusts('1131','662').
0.19::trusts('662','1131').
0.271::trusts('32820','1131').
0.7458134171671::trusts('32891','1131').
0.68618940391::trusts('1131','32891').
0.1::trusts('23592','28951').
0.1::trusts('28951','23592').
0.1::trusts('26765','23592').
0.19::trusts('30311','23592').
0.1::trusts('26765','16066').
0.1::trusts('17514','18577').
0.1::trusts('26765','28490').
0.1::trusts('30447','39405').

person('17514').
person('26765').
person('33501').
person('30447').
person('33235').
person('21570').
person('32820').
person('26095').
person('25715').
person('662').
person('1131').
person('32891').
person('28951').
person('23592').
person('16066').
person('18577').
person('30311').
person('28490').
person('39405').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17514')).
query(buys('26765')).
query(buys('33501')).
query(buys('30447')).
query(buys('33235')).
query(buys('21570')).
query(buys('32820')).
query(buys('26095')).
query(buys('25715')).
query(buys('662')).
query(buys('1131')).
query(buys('32891')).
query(buys('28951')).
query(buys('23592')).
query(buys('16066')).
query(buys('18577')).
query(buys('30311')).
query(buys('28490')).
query(buys('39405')).
