10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('13348','7780').
0.1::trusts('16913','13348').
0.1::trusts('13347','13348').
0.1::trusts('2686','13348').
0.1::trusts('2686','13347').
0.271::trusts('13350','13347').
0.1::trusts('13347','2686').
0.271::trusts('13347','13350').
0.19::trusts('54811','13350').
0.1::trusts('13348','2552').
0.19::trusts('2686','2552').
0.1::trusts('16130','2552').
0.1::trusts('1651','2552').
0.1::trusts('2552','16130').
0.1::trusts('16131','16130').
0.271::trusts('2552','1651').
0.1::trusts('16130','16131').
0.271::trusts('16135','16131').
0.19::trusts('7804','16131').
0.1::trusts('16131','16135').
0.1::trusts('7804','16135').
0.7458134171671::trusts('13350','54811').
0.271::trusts('13350','13352').
0.1::trusts('1651','10719').

person('7780').
person('13348').
person('16913').
person('13347').
person('2686').
person('13350').
person('2552').
person('16130').
person('1651').
person('16131').
person('16135').
person('7804').
person('54811').
person('13352').
person('10719').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7780')).
query(buys('13348')).
query(buys('16913')).
query(buys('13347')).
query(buys('2686')).
query(buys('13350')).
query(buys('2552')).
query(buys('16130')).
query(buys('1651')).
query(buys('16131')).
query(buys('16135')).
query(buys('7804')).
query(buys('54811')).
query(buys('13352')).
query(buys('10719')).
