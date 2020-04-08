10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('1473','12060').
0.19::trusts('3257','12060').
0.271::trusts('15545','12060').
0.1::trusts('12077','12060').
0.468559::trusts('12060','3257').
0.19::trusts('12060','15545').
0.612579511::trusts('1473','15545').
0.40951::trusts('15549','15545').
0.19::trusts('7873','15545').
0.19::trusts('1473','15549').
0.271::trusts('15545','15549').
0.1::trusts('18737','15549').
0.1::trusts('15547','15549').
0.271::trusts('15545','7873').
0.1::trusts('56554','7873').
0.19::trusts('18737','17711').
0.1::trusts('17711','18737').
0.271::trusts('15549','18737').
0.1::trusts('32140','18737').
0.1::trusts('32143','18737').
0.1::trusts('18911','18737').
0.1::trusts('1473','15547').
0.1::trusts('15545','15547').
0.1::trusts('31312','15547').
0.1::trusts('18737','32140').
0.19::trusts('32143','32140').
0.1::trusts('32140','32143').
0.40951::trusts('32142','32143').
0.1::trusts('7873','56554').
0.3439::trusts('32143','32142').
0.1::trusts('18737','13567').
0.19::trusts('32142','32141').
0.1::trusts('32143','32139').

person('12060').
person('1473').
person('3257').
person('15545').
person('12077').
person('15549').
person('7873').
person('17711').
person('18737').
person('15547').
person('32140').
person('32143').
person('18911').
person('56554').
person('31312').
person('32142').
person('13567').
person('32141').
person('32139').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12060')).
query(buys('1473')).
query(buys('3257')).
query(buys('15545')).
query(buys('12077')).
query(buys('15549')).
query(buys('7873')).
query(buys('17711')).
query(buys('18737')).
query(buys('15547')).
query(buys('32140')).
query(buys('32143')).
query(buys('18911')).
query(buys('56554')).
query(buys('31312')).
query(buys('32142')).
query(buys('13567')).
query(buys('32141')).
query(buys('32139')).
