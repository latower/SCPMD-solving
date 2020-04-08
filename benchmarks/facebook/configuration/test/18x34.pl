10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('48381','61787').
0.1::trusts('61787','48381').
0.271::trusts('33106','48381').
0.271::trusts('33442','33106').
0.1::trusts('48381','33106').
0.3439::trusts('33106','33442').
0.271::trusts('10128','33442').
0.1::trusts('33442','10128').
0.19::trusts('10121','10128').
0.1::trusts('45086','10128').
0.1::trusts('10129','10128').
0.271::trusts('10128','10121').
0.1::trusts('10129','10121').
0.5217031::trusts('34363','10121').
0.19::trusts('4898','10121').
0.1::trusts('55505','10121').
0.271::trusts('10128','45086').
0.19::trusts('10128','10129').
0.1::trusts('10121','10129').
0.19::trusts('34696','10129').
0.468559::trusts('10121','34363').
0.77123207545039::trusts('4898','34363').
0.612579511::trusts('34367','34363').
0.19::trusts('10121','55505').
0.1::trusts('33442','34771').
0.1::trusts('10128','34771').
0.833228183003334::trusts('34363','34367').
0.1::trusts('10128','53892').
0.1::trusts('55505','40984').
0.1::trusts('45809','40984').
0.1::trusts('61721','45809').
0.1::trusts('45809','61721').

person('61787').
person('48381').
person('33106').
person('33442').
person('10128').
person('10121').
person('45086').
person('10129').
person('34363').
person('4898').
person('55505').
person('34696').
person('34771').
person('34367').
person('53892').
person('40984').
person('45809').
person('61721').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('61787')).
query(buys('48381')).
query(buys('33106')).
query(buys('33442')).
query(buys('10128')).
query(buys('10121')).
query(buys('45086')).
query(buys('10129')).
query(buys('34363')).
query(buys('4898')).
query(buys('55505')).
query(buys('34696')).
query(buys('34771')).
query(buys('34367')).
query(buys('53892')).
query(buys('40984')).
query(buys('45809')).
query(buys('61721')).
