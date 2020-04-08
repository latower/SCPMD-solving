10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('3967','4284').
0.1::trusts('31013','4284').
0.1::trusts('25405','4284').
0.40951::trusts('4284','3967').
0.3439::trusts('4285','3967').
0.1::trusts('4284','25405').
0.1::trusts('22103','25405').
0.1::trusts('22573','25405').
0.7458134171671::trusts('3967','4285').
0.1::trusts('8365','4285').
0.271::trusts('43419','4285').
0.1::trusts('48364','4285').
0.1::trusts('25405','22103').
0.1::trusts('23362','26326').
0.1::trusts('26326','23362').
0.1::trusts('31782','23362').
0.1::trusts('26326','31782').
0.19::trusts('23362','31782').
0.3439::trusts('50998','31782').
0.271::trusts('4285','43419').
0.19::trusts('50998','43419').
0.1::trusts('9002','43419').
0.271::trusts('43419','50998').
0.271::trusts('31782','50998').
0.1::trusts('43419','9002').
0.1::trusts('4285','48364').
0.19::trusts('23362','51893').
0.1::trusts('52870','51893').
0.1::trusts('22103','28900').
0.1::trusts('50998','55434').
0.1::trusts('25405','43363').

person('4284').
person('3967').
person('31013').
person('25405').
person('4285').
person('22103').
person('22573').
person('26326').
person('23362').
person('31782').
person('43419').
person('50998').
person('9002').
person('8365').
person('48364').
person('51893').
person('52870').
person('28900').
person('55434').
person('43363').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4284')).
query(buys('3967')).
query(buys('31013')).
query(buys('25405')).
query(buys('4285')).
query(buys('22103')).
query(buys('22573')).
query(buys('26326')).
query(buys('23362')).
query(buys('31782')).
query(buys('43419')).
query(buys('50998')).
query(buys('9002')).
query(buys('8365')).
query(buys('48364')).
query(buys('51893')).
query(buys('52870')).
query(buys('28900')).
query(buys('55434')).
query(buys('43363')).
