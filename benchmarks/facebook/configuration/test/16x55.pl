10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('17240','15340').
0.19::trusts('15340','17240').
0.1::trusts('23599','26939').
0.40951::trusts('33401','23599').
0.1::trusts('37541','23599').
0.68618940391::trusts('23599','33401').
0.1::trusts('34017','33401').
0.1::trusts('23599','37541').
0.40951::trusts('13487','37541').
0.1::trusts('33030','37541').
0.1::trusts('33030','40424').
0.1::trusts('40424','33030').
0.1::trusts('37541','33030').
0.1::trusts('12998','33030').
0.19::trusts('44270','38776').
0.1::trusts('38776','44270').
0.271::trusts('37541','13487').
0.1::trusts('33030','12998').
0.1::trusts('13487','34997').
0.1::trusts('34017','44131').
0.1::trusts('23599','43463').

person('15340').
person('17240').
person('26939').
person('23599').
person('33401').
person('37541').
person('34017').
person('40424').
person('33030').
person('38776').
person('44270').
person('13487').
person('12998').
person('34997').
person('44131').
person('43463').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15340')).
query(buys('17240')).
query(buys('26939')).
query(buys('23599')).
query(buys('33401')).
query(buys('37541')).
query(buys('34017')).
query(buys('40424')).
query(buys('33030')).
query(buys('38776')).
query(buys('44270')).
query(buys('13487')).
query(buys('12998')).
query(buys('34997')).
query(buys('44131')).
query(buys('43463')).
