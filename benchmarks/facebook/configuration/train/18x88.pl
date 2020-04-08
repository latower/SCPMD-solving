10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.7458134171671::trusts('50201','5861').
0.3439::trusts('49069','5861').
0.1::trusts('49069','50201').
0.1::trusts('5861','49069').
0.3439::trusts('50201','49069').
0.3439::trusts('19277','49069').
0.7458134171671::trusts('52626','52624').
0.19::trusts('19277','52624').
0.19::trusts('140','52624').
0.271::trusts('12732','52624').
0.1::trusts('52625','52624').
0.6513215599::trusts('52624','52626').
0.271::trusts('52624','19277').
0.19::trusts('50201','19277').
0.1::trusts('49069','19277').
0.1::trusts('52625','19277').
0.1::trusts('52662','19277').
0.271::trusts('52624','140').
0.1::trusts('12732','140').
0.271::trusts('52624','52625').
0.1::trusts('19277','52625').
0.1::trusts('52624','11245').
0.1::trusts('33316','11245').
0.3439::trusts('19277','52662').
0.1::trusts('52624','52621').
0.1::trusts('11245','52621').
0.1::trusts('5861','26779').
0.19::trusts('49069','26779').
0.19::trusts('49065','26779').
0.271::trusts('52624','52622').
0.1::trusts('19277','28186').
0.1::trusts('52624','56481').

person('5861').
person('50201').
person('49069').
person('52624').
person('52626').
person('19277').
person('140').
person('12732').
person('52625').
person('11245').
person('33316').
person('52662').
person('52621').
person('26779').
person('49065').
person('52622').
person('28186').
person('56481').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5861')).
query(buys('50201')).
query(buys('49069')).
query(buys('52624')).
query(buys('52626')).
query(buys('19277')).
query(buys('140')).
query(buys('12732')).
query(buys('52625')).
query(buys('11245')).
query(buys('33316')).
query(buys('52662')).
query(buys('52621')).
query(buys('26779')).
query(buys('49065')).
query(buys('52622')).
query(buys('28186')).
query(buys('56481')).
