10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6011','23806').
0.1::trusts('6967','23806').
0.1::trusts('21097','23806').
0.19::trusts('47300','23806').
0.1::trusts('28095','23806').
0.19::trusts('21524','23806').
0.19::trusts('47302','23806').
0.40951::trusts('23806','6011').
0.19::trusts('26359','6011').
0.19::trusts('51678','6011').
0.271::trusts('6967','6011').
0.1::trusts('46142','6011').
0.271::trusts('6011','6967').
0.468559::trusts('23806','21097').
0.19::trusts('23806','47300').
0.1::trusts('32877','28095').
0.19::trusts('23806','21524').
0.1::trusts('6967','21524').
0.1::trusts('6011','47302').
0.1::trusts('6967','47302').
0.19::trusts('23806','26359').
0.1::trusts('6011','26359').
0.1::trusts('6011','51678').
0.271::trusts('51679','51678').
0.1::trusts('6011','46142').
0.1::trusts('6011','51679').
0.1::trusts('51678','51679').
0.19::trusts('23806','32877').
0.1::trusts('23806','47301').
0.1::trusts('6011','47301').
0.1::trusts('6967','42524').
0.1::trusts('6967','17992').

person('23806').
person('6011').
person('6967').
person('21097').
person('47300').
person('28095').
person('21524').
person('47302').
person('26359').
person('51678').
person('46142').
person('51679').
person('32877').
person('47301').
person('42524').
person('17992').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23806')).
query(buys('6011')).
query(buys('6967')).
query(buys('21097')).
query(buys('47300')).
query(buys('28095')).
query(buys('21524')).
query(buys('47302')).
query(buys('26359')).
query(buys('51678')).
query(buys('46142')).
query(buys('51679')).
query(buys('32877')).
query(buys('47301')).
query(buys('42524')).
query(buys('17992')).
