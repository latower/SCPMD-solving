10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('5433','5464').
0.999588901683294::trusts('16436','5464').
0.1::trusts('5496','5464').
0.1::trusts('31573','5464').
0.1::trusts('35957','5464').
0.1::trusts('27643','5464').
0.271::trusts('35056','5464').
0.1::trusts('38870','5464').
0.19::trusts('5464','31573').
0.1::trusts('16436','35957').
0.1::trusts('5464','35957').
0.1::trusts('5464','27643').
0.7458134171671::trusts('16436','35056').
0.271::trusts('5464','35056').
0.19::trusts('42240','17056').
0.1::trusts('5476','17056').
0.271::trusts('17056','42240').
0.19::trusts('5433','5476').
0.271::trusts('5464','5476').
0.1::trusts('17056','5476').
0.1::trusts('16436','27904').
0.56953279::trusts('5433','23359').
0.1::trusts('5464','19700').
0.1::trusts('42240','34001').
0.1::trusts('31573','5466').

person('5464').
person('5433').
person('16436').
person('5496').
person('31573').
person('35957').
person('27643').
person('35056').
person('38870').
person('17056').
person('42240').
person('5476').
person('27904').
person('23359').
person('19700').
person('34001').
person('5466').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5464')).
query(buys('5433')).
query(buys('16436')).
query(buys('5496')).
query(buys('31573')).
query(buys('35957')).
query(buys('27643')).
query(buys('35056')).
query(buys('38870')).
query(buys('17056')).
query(buys('42240')).
query(buys('5476')).
query(buys('27904')).
query(buys('23359')).
query(buys('19700')).
query(buys('34001')).
query(buys('5466')).
