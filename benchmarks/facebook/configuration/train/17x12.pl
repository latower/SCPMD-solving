10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('142','207').
0.1::trusts('5196','207').
0.19::trusts('30975','207').
0.1::trusts('34460','207').
0.1::trusts('31347','207').
0.1::trusts('8295','207').
0.19::trusts('21955','142').
0.1::trusts('207','142').
0.1::trusts('20243','142').
0.1::trusts('43913','142').
0.1::trusts('207','5196').
0.19::trusts('207','34460').
0.1::trusts('24445','34460').
0.1::trusts('45620','34460').
0.1::trusts('27552','34460').
0.19::trusts('207','31347').
0.1::trusts('207','8295').
0.19::trusts('21955','20243').
0.1::trusts('142','20243').
0.1::trusts('142','43913').
0.1::trusts('34460','45620').
0.1::trusts('34460','27552').
0.1::trusts('23326','27552').
0.1::trusts('27552','23326').
0.1::trusts('207','53427').
0.1::trusts('21955','20356').
0.1::trusts('207','13881').

person('207').
person('142').
person('5196').
person('30975').
person('34460').
person('31347').
person('8295').
person('21955').
person('20243').
person('43913').
person('24445').
person('45620').
person('27552').
person('23326').
person('53427').
person('20356').
person('13881').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('207')).
query(buys('142')).
query(buys('5196')).
query(buys('30975')).
query(buys('34460')).
query(buys('31347')).
query(buys('8295')).
query(buys('21955')).
query(buys('20243')).
query(buys('43913')).
query(buys('24445')).
query(buys('45620')).
query(buys('27552')).
query(buys('23326')).
query(buys('53427')).
query(buys('20356')).
query(buys('13881')).
