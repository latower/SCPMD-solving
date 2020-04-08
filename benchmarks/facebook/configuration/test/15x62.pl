10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('15241','22696').
0.1::trusts('34659','22696').
0.271::trusts('22696','15241').
0.1::trusts('28646','15241').
0.1::trusts('22696','34659').
0.1::trusts('29055','16043').
0.1::trusts('13193','16043').
0.1::trusts('15241','16043').
0.271::trusts('37561','29055').
0.717570463519::trusts('4042','29055').
0.1::trusts('38769','29055').
0.271::trusts('15241','28646').
0.1::trusts('16043','37561').
0.19::trusts('29055','37561').
0.1::trusts('13193','37561').
0.1::trusts('15241','37561').
0.717570463519::trusts('29055','4042').
0.1::trusts('29055','38769').
0.1::trusts('29055','24981').
0.1::trusts('13193','24981').
0.271::trusts('35257','35256').
0.1::trusts('37562','35256').
0.19::trusts('35256','35257').
0.1::trusts('15241','37562').
0.1::trusts('13193','43445').

person('22696').
person('15241').
person('34659').
person('16043').
person('29055').
person('13193').
person('28646').
person('37561').
person('4042').
person('38769').
person('24981').
person('35256').
person('35257').
person('37562').
person('43445').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22696')).
query(buys('15241')).
query(buys('34659')).
query(buys('16043')).
query(buys('29055')).
query(buys('13193')).
query(buys('28646')).
query(buys('37561')).
query(buys('4042')).
query(buys('38769')).
query(buys('24981')).
query(buys('35256')).
query(buys('35257')).
query(buys('37562')).
query(buys('43445')).
