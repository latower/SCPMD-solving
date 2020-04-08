10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19353','12172').
0.3439::trusts('12172','19353').
0.271::trusts('9200','19353').
0.1::trusts('32499','19353').
0.19::trusts('47842','21759').
0.3439::trusts('32499','21759').
0.1::trusts('31363','21759').
0.3439::trusts('21759','47842').
0.19::trusts('1053','47842').
0.1::trusts('11103','47842').
0.19::trusts('53554','47842').
0.1::trusts('52332','47842').
0.19::trusts('32319','47842').
0.56953279::trusts('21759','32499').
0.1::trusts('19353','32499').
0.1::trusts('54175','32499').
0.271::trusts('21759','31363').
0.1::trusts('32499','31363').
0.271::trusts('47842','1053').
0.1::trusts('21759','11103').
0.1::trusts('1053','11103').
0.1::trusts('47842','11103').
0.1::trusts('52332','11103').
0.1::trusts('47842','32319').
0.1::trusts('32499','54175').
0.1::trusts('59618','54175').
0.271::trusts('54174','54175').
0.271::trusts('54175','54174').
0.1::trusts('12172','25245').
0.19::trusts('21759','21762').
0.1::trusts('21759','52875').
0.1::trusts('21762','41321').
0.1::trusts('52332','22108').
0.1::trusts('53554','53551').

person('12172').
person('19353').
person('21759').
person('47842').
person('32499').
person('31363').
person('1053').
person('9200').
person('11103').
person('53554').
person('52332').
person('32319').
person('54175').
person('59618').
person('54174').
person('25245').
person('21762').
person('52875').
person('41321').
person('22108').
person('53551').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12172')).
query(buys('19353')).
query(buys('21759')).
query(buys('47842')).
query(buys('32499')).
query(buys('31363')).
query(buys('1053')).
query(buys('9200')).
query(buys('11103')).
query(buys('53554')).
query(buys('52332')).
query(buys('32319')).
query(buys('54175')).
query(buys('59618')).
query(buys('54174')).
query(buys('25245')).
query(buys('21762')).
query(buys('52875')).
query(buys('41321')).
query(buys('22108')).
query(buys('53551')).
