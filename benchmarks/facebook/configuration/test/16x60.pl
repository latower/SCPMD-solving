10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('19690','19167').
0.19::trusts('29098','19167').
0.1::trusts('19167','19690').
0.19::trusts('16735','19690').
0.1::trusts('29098','19690').
0.1::trusts('36682','19690').
0.40951::trusts('36686','19690').
0.1::trusts('19167','29098').
0.1::trusts('19690','29098').
0.1::trusts('46448','29098').
0.19::trusts('19690','16735').
0.19::trusts('19690','36682').
0.468559::trusts('19690','36686').
0.1::trusts('56187','36686').
0.1::trusts('29098','46448').
0.1::trusts('36686','56187').
0.1::trusts('57301','56187').
0.1::trusts('48222','56187').
0.1::trusts('56187','57301').
0.19::trusts('59796','57301').
0.1::trusts('56187','48222').
0.19::trusts('19690','18023').
0.1::trusts('7103','18023').
0.19::trusts('30118','7103').
0.1::trusts('53863','7103').
0.271::trusts('7103','30118').
0.19::trusts('53863','30118').
0.1::trusts('7103','53863').
0.19::trusts('30118','53863').
0.19::trusts('57301','59796').
0.1::trusts('46448','37030').

person('19167').
person('19690').
person('29098').
person('16735').
person('36682').
person('36686').
person('46448').
person('56187').
person('57301').
person('48222').
person('18023').
person('7103').
person('30118').
person('53863').
person('59796').
person('37030').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19167')).
query(buys('19690')).
query(buys('29098')).
query(buys('16735')).
query(buys('36682')).
query(buys('36686')).
query(buys('46448')).
query(buys('56187')).
query(buys('57301')).
query(buys('48222')).
query(buys('18023')).
query(buys('7103')).
query(buys('30118')).
query(buys('53863')).
query(buys('59796')).
query(buys('37030')).
