10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.612579511::trusts('5735','2523').
0.901522909781639::trusts('17816','2523').
0.3439::trusts('18129','2523').
0.271::trusts('2418','2523').
0.1::trusts('18136','2523').
0.1::trusts('869','2523').
0.19::trusts('18142','2523').
0.612579511::trusts('18132','2523').
0.1::trusts('18137','2523').
0.3439::trusts('18140','2523').
0.19::trusts('9029','2523').
0.612579511::trusts('18143','2523').
0.19::trusts('10590','2523').
0.1::trusts('18133','2523').
0.947665236697264::trusts('2523','17816').
0.3439::trusts('5735','17816').
0.612579511::trusts('2418','17816').
0.468559::trusts('2523','18129').
0.271::trusts('18142','18129').
0.814697981114816::trusts('2523','2418').
0.5217031::trusts('5735','2418').
0.5217031::trusts('17816','2418').
0.468559::trusts('44064','2418').
0.19::trusts('15992','2418').
0.1::trusts('1678','2418').
0.1::trusts('18136','2418').
0.19::trusts('2523','18136').
0.1::trusts('5735','18136').
0.3439::trusts('2523','869').
0.468559::trusts('2523','18142').
0.271::trusts('18129','18142').
0.40951::trusts('2523','18132').
0.19::trusts('5910','18132').
0.1::trusts('2523','18137').
0.468559::trusts('2523','18140').
0.468559::trusts('9029','18140').
0.56953279::trusts('2523','18143').
0.1::trusts('18140','18143').
0.19::trusts('2523','10590').
0.1::trusts('2523','18133').
0.19::trusts('2418','44064').
0.271::trusts('2418','15992').
0.1::trusts('22746','15992').
0.1::trusts('2418','1678').
0.1::trusts('18132','5910').
0.19::trusts('19752','5910').
0.271::trusts('5910','19752').
0.19::trusts('18129','22274').
0.1::trusts('869','1249').
0.1::trusts('2418','43091').
0.1::trusts('44064','43091').

person('2523').
person('5735').
person('17816').
person('18129').
person('2418').
person('18136').
person('869').
person('18142').
person('18132').
person('18137').
person('18140').
person('9029').
person('18143').
person('10590').
person('18133').
person('44064').
person('15992').
person('1678').
person('22746').
person('5910').
person('19752').
person('22274').
person('1249').
person('43091').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2523')).
query(buys('5735')).
query(buys('17816')).
query(buys('18129')).
query(buys('2418')).
query(buys('18136')).
query(buys('869')).
query(buys('18142')).
query(buys('18132')).
query(buys('18137')).
query(buys('18140')).
query(buys('9029')).
query(buys('18143')).
query(buys('10590')).
query(buys('18133')).
query(buys('44064')).
query(buys('15992')).
query(buys('1678')).
query(buys('22746')).
query(buys('5910')).
query(buys('19752')).
query(buys('22274')).
query(buys('1249')).
query(buys('43091')).
