10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('25794','8720').
0.56953279::trusts('5462','8720').
0.864914828232701::trusts('14895','8720').
0.1::trusts('32585','8720').
0.717570463519::trusts('9894','8720').
0.77123207545039::trusts('34835','8720').
0.612579511::trusts('8720','25794').
0.1::trusts('5462','25794').
0.717570463519::trusts('14895','25794').
0.40951::trusts('32585','25794').
0.1::trusts('34833','25794').
0.3439::trusts('34835','25794').
0.3439::trusts('25229','25794').
0.68618940391::trusts('8720','5462').
0.19::trusts('29929','5462').
0.40951::trusts('9199','5462').
0.40951::trusts('23248','5462').
0.19::trusts('14895','5462').
0.40951::trusts('34831','5462').
0.19::trusts('30605','5462').
0.1::trusts('34830','5462').
0.794108867905351::trusts('8720','14895').
0.468559::trusts('25794','14895').
0.1::trusts('5462','14895').
0.1::trusts('34831','14895').
0.1::trusts('34830','14895').
0.1::trusts('32585','14895').
0.1::trusts('34834','14895').
0.468559::trusts('9894','14895').
0.3439::trusts('34833','14895').
0.612579511::trusts('34835','14895').
0.19::trusts('8720','32585').
0.19::trusts('25794','32585').
0.19::trusts('14895','32585').
0.271::trusts('9894','32585').
0.3439::trusts('34835','32585').
0.77123207545039::trusts('8720','9894').
0.5217031::trusts('14895','9894').
0.271::trusts('32585','9894').
0.1::trusts('34834','9894').
0.40951::trusts('34835','9894').
0.612579511::trusts('8720','34835').
0.5217031::trusts('14895','34835').
0.3439::trusts('9894','34835').
0.1::trusts('8720','34833').
0.1::trusts('25794','34833').
0.5217031::trusts('14895','34833').
0.1::trusts('34835','34833').
0.1::trusts('34838','34833').
0.271::trusts('25794','25229').
0.19::trusts('43030','25229').
0.468559::trusts('5462','29929').
0.1::trusts('9199','29929').
0.1::trusts('5462','9199').
0.19::trusts('5462','23248').
0.3439::trusts('5462','34831').
0.19::trusts('14895','34831').
0.1::trusts('34838','34831').
0.3439::trusts('5462','30605').
0.1::trusts('5462','34830').
0.1::trusts('14895','34830').
0.19::trusts('34838','34830').
0.19::trusts('14895','34834').
0.1::trusts('9894','34834').
0.271::trusts('34831','34838').
0.19::trusts('34830','34838').
0.19::trusts('25229','43030').
0.1::trusts('8720','38662').
0.19::trusts('25794','38662').
0.19::trusts('14895','38662').
0.1::trusts('9894','38662').
0.1::trusts('8720','34832').
0.19::trusts('14895','34832').
0.1::trusts('34835','34832').
0.19::trusts('14895','30652').
0.1::trusts('34835','39302').
0.1::trusts('14895','46845').
0.19::trusts('14895','34837').
0.1::trusts('5462','19580').

person('8720').
person('25794').
person('5462').
person('14895').
person('32585').
person('9894').
person('34835').
person('34833').
person('25229').
person('29929').
person('9199').
person('23248').
person('34831').
person('30605').
person('34830').
person('34834').
person('34838').
person('43030').
person('38662').
person('34832').
person('30652').
person('39302').
person('46845').
person('34837').
person('19580').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8720')).
query(buys('25794')).
query(buys('5462')).
query(buys('14895')).
query(buys('32585')).
query(buys('9894')).
query(buys('34835')).
query(buys('34833')).
query(buys('25229')).
query(buys('29929')).
query(buys('9199')).
query(buys('23248')).
query(buys('34831')).
query(buys('30605')).
query(buys('34830')).
query(buys('34834')).
query(buys('34838')).
query(buys('43030')).
query(buys('38662')).
query(buys('34832')).
query(buys('30652')).
query(buys('39302')).
query(buys('46845')).
query(buys('34837')).
query(buys('19580')).
