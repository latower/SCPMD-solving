10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('22075','21281').
0.1::trusts('45117','21281').
0.19::trusts('21281','22075').
0.468559::trusts('45117','22075').
0.1::trusts('21281','45117').
0.468559::trusts('22075','45117').
0.19::trusts('9418','45117').
0.468559::trusts('11765','45117').
0.1::trusts('47594','45117').
0.19::trusts('19699','21800').
0.1::trusts('21800','19699').
0.271::trusts('1933','19699').
0.1::trusts('11765','19699').
0.1::trusts('56371','19699').
0.1::trusts('11765','42696').
0.1::trusts('42696','11765').
0.3439::trusts('45117','11765').
0.1::trusts('19699','11765').
0.271::trusts('6306','11765').
0.271::trusts('25971','11765').
0.19::trusts('19699','1933').
0.271::trusts('45117','9418').
0.1::trusts('45117','47594').
0.1::trusts('19699','56371').
0.1::trusts('11765','6306').
0.1::trusts('49054','6306').
0.3439::trusts('11765','25971').
0.1::trusts('61854','25971').
0.1::trusts('56371','57080').

person('21281').
person('22075').
person('45117').
person('21800').
person('19699').
person('42696').
person('11765').
person('1933').
person('9418').
person('47594').
person('56371').
person('6306').
person('25971').
person('49054').
person('61854').
person('57080').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21281')).
query(buys('22075')).
query(buys('45117')).
query(buys('21800')).
query(buys('19699')).
query(buys('42696')).
query(buys('11765')).
query(buys('1933')).
query(buys('9418')).
query(buys('47594')).
query(buys('56371')).
query(buys('6306')).
query(buys('25971')).
query(buys('49054')).
query(buys('61854')).
query(buys('57080')).
