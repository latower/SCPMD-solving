10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('7128','7116').
0.1::trusts('7116','7128').
0.19::trusts('33517','7128').
0.1::trusts('56453','7128').
0.1::trusts('7128','33517').
0.1::trusts('10189','33517').
0.1::trusts('13337','33517').
0.19::trusts('51069','33517').
0.1::trusts('7128','56453').
0.1::trusts('60414','56453').
0.19::trusts('30587','56453').
0.19::trusts('33517','10189').
0.19::trusts('33517','13337').
0.40951::trusts('18745','13337').
0.271::trusts('33517','51069').
0.40951::trusts('13337','18745').
0.468559::trusts('13337','17774').
0.1::trusts('56453','60414').
0.1::trusts('40842','60414').
0.1::trusts('56453','30587').
0.1::trusts('13337','45032').
0.1::trusts('33517','53560').
0.1::trusts('30587','43863').

person('7116').
person('7128').
person('33517').
person('56453').
person('10189').
person('13337').
person('51069').
person('18745').
person('17774').
person('60414').
person('40842').
person('30587').
person('45032').
person('53560').
person('43863').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7116')).
query(buys('7128')).
query(buys('33517')).
query(buys('56453')).
query(buys('10189')).
query(buys('13337')).
query(buys('51069')).
query(buys('18745')).
query(buys('17774')).
query(buys('60414')).
query(buys('40842')).
query(buys('30587')).
query(buys('45032')).
query(buys('53560')).
query(buys('43863')).
