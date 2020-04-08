10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('10214','1102').
0.19::trusts('31601','1102').
0.1::trusts('25612','1102').
0.1::trusts('1102','10214').
0.19::trusts('1102','31601').
0.19::trusts('30141','31601').
0.1::trusts('24048','31601').
0.1::trusts('1102','25612').
0.271::trusts('10214','25612').
0.19::trusts('31601','30141').
0.19::trusts('32351','30141').
0.1::trusts('10214','24048').
0.19::trusts('31601','24048').
0.271::trusts('30141','32351').
0.1::trusts('24048','49106').
0.1::trusts('1102','23676').
0.271::trusts('10214','23676').
0.1::trusts('1102','32745').
0.19::trusts('42718','32745').
0.1::trusts('1102','42718').
0.1::trusts('31601','42718').
0.1::trusts('32745','42718').
0.1::trusts('1102','38075').
0.1::trusts('1102','43591').
0.19::trusts('10214','33256').
0.1::trusts('10214','27957').
0.1::trusts('47225','27957').
0.271::trusts('31614','27957').
0.19::trusts('27957','31614').

person('1102').
person('10214').
person('31601').
person('25612').
person('30141').
person('24048').
person('32351').
person('49106').
person('23676').
person('32745').
person('42718').
person('38075').
person('43591').
person('33256').
person('27957').
person('47225').
person('31614').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1102')).
query(buys('10214')).
query(buys('31601')).
query(buys('25612')).
query(buys('30141')).
query(buys('24048')).
query(buys('32351')).
query(buys('49106')).
query(buys('23676')).
query(buys('32745')).
query(buys('42718')).
query(buys('38075')).
query(buys('43591')).
query(buys('33256')).
query(buys('27957')).
query(buys('47225')).
query(buys('31614')).
