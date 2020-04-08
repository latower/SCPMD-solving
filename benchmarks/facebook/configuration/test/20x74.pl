10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('43872','33098').
0.1::trusts('43871','33098').
0.56953279::trusts('28680','43872').
0.1::trusts('41915','43872').
0.1::trusts('38156','43872').
0.1::trusts('43871','43872').
0.6513215599::trusts('49989','43872').
0.40951::trusts('51163','43872').
0.1::trusts('33325','43872').
0.1::trusts('41912','43872').
0.1::trusts('33810','43872').
0.1::trusts('28680','43871').
0.1::trusts('41915','43871').
0.1::trusts('38156','43871').
0.1::trusts('43872','43871').
0.878423345409431::trusts('49989','43871').
0.1::trusts('51163','43871').
0.1::trusts('33325','43871').
0.1::trusts('41912','43871').
0.1::trusts('33810','43871').
0.1::trusts('38156','28680').
0.468559::trusts('43872','28680').
0.271::trusts('43861','28680').
0.19::trusts('43871','28680').
0.1::trusts('28680','38156').
0.19::trusts('43872','38156').
0.19::trusts('43871','38156').
0.19::trusts('45130','38156').
0.19::trusts('10201','38156').
0.3439::trusts('28680','43861').
0.1::trusts('43872','41915').
0.1::trusts('43871','41915').
0.271::trusts('38156','45130').
0.6513215599::trusts('43872','49989').
0.901522909781639::trusts('43871','49989').
0.5217031::trusts('43872','51163').
0.19::trusts('43871','51163').
0.1::trusts('49989','51163').
0.19::trusts('53019','51163').
0.19::trusts('43872','33325').
0.271::trusts('43871','33325').
0.1::trusts('33810','33325').
0.19::trusts('43872','41912').
0.1::trusts('43871','41912').
0.1::trusts('43872','33810').
0.1::trusts('43871','33810').
0.1::trusts('33325','33810').
0.989224736335694::trusts('51163','53019').
0.1::trusts('43872','23312').
0.19::trusts('43871','23312').
0.19::trusts('51163','23312').
0.1::trusts('49989','52778').
0.1::trusts('10201','40319').
0.1::trusts('43872','43654').
0.1::trusts('28680','47189').

person('33098').
person('43872').
person('43871').
person('28680').
person('38156').
person('43861').
person('41915').
person('45130').
person('10201').
person('49989').
person('51163').
person('33325').
person('41912').
person('33810').
person('53019').
person('23312').
person('52778').
person('40319').
person('43654').
person('47189').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('33098')).
query(buys('43872')).
query(buys('43871')).
query(buys('28680')).
query(buys('38156')).
query(buys('43861')).
query(buys('41915')).
query(buys('45130')).
query(buys('10201')).
query(buys('49989')).
query(buys('51163')).
query(buys('33325')).
query(buys('41912')).
query(buys('33810')).
query(buys('53019')).
query(buys('23312')).
query(buys('52778')).
query(buys('40319')).
query(buys('43654')).
query(buys('47189')).
