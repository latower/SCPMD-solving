10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('26662','21095').
0.1::trusts('4443','21095').
0.56953279::trusts('21095','26662').
0.271::trusts('26046','26662').
0.1::trusts('37373','26662').
0.271::trusts('34287','26662').
0.1::trusts('44314','26662').
0.1::trusts('21095','4443').
0.1::trusts('26662','26046').
0.1::trusts('26662','37373').
0.19::trusts('41911','37373').
0.1::trusts('32015','37373').
0.19::trusts('54020','37373').
0.1::trusts('26046','37373').
0.1::trusts('26662','34287').
0.717570463519::trusts('48500','34287').
0.19::trusts('42477','34287').
0.1::trusts('48499','34287').
0.1::trusts('21095','44314').
0.40951::trusts('32015','41911').
0.1::trusts('37373','41911').
0.271::trusts('37373','54020').
0.7458134171671::trusts('34287','48500').
0.3439::trusts('34287','42477').
0.1::trusts('51533','42477').
0.1::trusts('51532','42477').
0.1::trusts('34287','48499').
0.1::trusts('34287','48497').
0.1::trusts('21095','15513').
0.19::trusts('34287','48496').
0.1::trusts('21095','44747').

person('21095').
person('26662').
person('4443').
person('26046').
person('37373').
person('34287').
person('44314').
person('41911').
person('32015').
person('54020').
person('48500').
person('42477').
person('48499').
person('51533').
person('51532').
person('48497').
person('15513').
person('48496').
person('44747').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21095')).
query(buys('26662')).
query(buys('4443')).
query(buys('26046')).
query(buys('37373')).
query(buys('34287')).
query(buys('44314')).
query(buys('41911')).
query(buys('32015')).
query(buys('54020')).
query(buys('48500')).
query(buys('42477')).
query(buys('48499')).
query(buys('51533')).
query(buys('51532')).
query(buys('48497')).
query(buys('15513')).
query(buys('48496')).
query(buys('44747')).
