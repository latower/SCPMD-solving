10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5624','6710').
0.271::trusts('2380','6710').
0.1::trusts('12755','6710').
0.1::trusts('26706','6710').
0.1::trusts('12340','6710').
0.1::trusts('19370','6710').
0.1::trusts('6710','5624').
0.612579511::trusts('26706','5624').
0.271::trusts('43073','5624').
0.271::trusts('6710','2380').
0.3439::trusts('12755','2380').
0.19::trusts('6710','12755').
0.1::trusts('5624','12755').
0.612579511::trusts('2380','12755').
0.1::trusts('26706','12755').
0.19::trusts('12756','12755').
0.68618940391::trusts('5624','26706').
0.19::trusts('25499','26706').
0.1::trusts('6710','12340').
0.849905364703001::trusts('12339','12340').
0.1::trusts('6710','19370').
0.271::trusts('5624','43073').
0.19::trusts('2380','12756').
0.271::trusts('12755','12756').
0.1::trusts('8332','12756').
0.1::trusts('8332','3241').
0.1::trusts('61986','3241').
0.1::trusts('12755','8332').
0.1::trusts('3241','8332').
0.1::trusts('12756','8332').
0.19::trusts('56100','8332').
0.3439::trusts('26706','25499').
0.1::trusts('5624','38337').

person('6710').
person('5624').
person('2380').
person('12755').
person('26706').
person('12340').
person('19370').
person('43073').
person('12756').
person('3241').
person('8332').
person('61986').
person('25499').
person('12339').
person('56100').
person('38337').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6710')).
query(buys('5624')).
query(buys('2380')).
query(buys('12755')).
query(buys('26706')).
query(buys('12340')).
query(buys('19370')).
query(buys('43073')).
query(buys('12756')).
query(buys('3241')).
query(buys('8332')).
query(buys('61986')).
query(buys('25499')).
query(buys('12339')).
query(buys('56100')).
query(buys('38337')).
