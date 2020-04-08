10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('32489','31532').
0.1::trusts('21692','31532').
0.1::trusts('19056','31532').
0.40951::trusts('31532','32489').
0.19::trusts('30289','32489').
0.1::trusts('32214','32489').
0.468559::trusts('50300','32489').
0.3439::trusts('60316','32489').
0.1::trusts('49142','32489').
0.271::trusts('31532','21692').
0.19::trusts('32489','21692').
0.1::trusts('31532','19056').
0.19::trusts('40069','650').
0.271::trusts('18752','650').
0.468559::trusts('32214','650').
0.1::trusts('650','40069').
0.1::trusts('650','18752').
0.271::trusts('30672','18752').
0.1::trusts('30159','18752').
0.6513215599::trusts('650','32214').
0.19::trusts('32489','32214').
0.19::trusts('18752','30672').
0.40951::trusts('32489','30289').
0.1::trusts('49142','30289').
0.3439::trusts('32489','60316').
0.1::trusts('32489','49142').
0.1::trusts('30289','49142').
0.1::trusts('18752','30159').
0.19::trusts('650','46609').
0.1::trusts('30672','52152').
0.1::trusts('50300','55366').
0.1::trusts('50300','60436').

person('31532').
person('32489').
person('21692').
person('19056').
person('650').
person('40069').
person('18752').
person('32214').
person('30672').
person('30289').
person('50300').
person('60316').
person('49142').
person('30159').
person('46609').
person('52152').
person('55366').
person('60436').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('31532')).
query(buys('32489')).
query(buys('21692')).
query(buys('19056')).
query(buys('650')).
query(buys('40069')).
query(buys('18752')).
query(buys('32214')).
query(buys('30672')).
query(buys('30289')).
query(buys('50300')).
query(buys('60316')).
query(buys('49142')).
query(buys('30159')).
query(buys('46609')).
query(buys('52152')).
query(buys('55366')).
query(buys('60436')).
