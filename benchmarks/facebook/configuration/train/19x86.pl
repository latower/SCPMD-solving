10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('25522','25521').
0.1::trusts('7303','25521').
0.1::trusts('28156','25521').
0.1::trusts('25521','25522').
0.271::trusts('19689','25522').
0.1::trusts('28156','7303').
0.1::trusts('36541','7303').
0.1::trusts('25521','28156').
0.19::trusts('25522','19689').
0.271::trusts('34270','19689').
0.1::trusts('36541','12184').
0.1::trusts('12184','36541').
0.1::trusts('28156','36541').
0.56953279::trusts('38714','36541').
0.1::trusts('38675','36541').
0.19::trusts('33939','20147').
0.19::trusts('20147','33939').
0.1::trusts('38714','33939').
0.1::trusts('38709','33939').
0.271::trusts('36541','38714').
0.19::trusts('38675','38714').
0.1::trusts('38709','38714').
0.1::trusts('36542','38714').
0.271::trusts('36541','38675').
0.40951::trusts('38714','38675').
0.1::trusts('38709','38675').
0.468559::trusts('38714','38709').
0.1::trusts('38675','38709').
0.19::trusts('33939','38709').
0.271::trusts('38714','36542').
0.1::trusts('25522','36687').
0.1::trusts('38714','51153').
0.1::trusts('36542','48051').
0.1::trusts('20147','46125').
0.1::trusts('38675','49539').

person('25521').
person('25522').
person('7303').
person('28156').
person('19689').
person('12184').
person('36541').
person('20147').
person('33939').
person('34270').
person('38714').
person('38675').
person('38709').
person('36542').
person('36687').
person('51153').
person('48051').
person('46125').
person('49539').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25521')).
query(buys('25522')).
query(buys('7303')).
query(buys('28156')).
query(buys('19689')).
query(buys('12184')).
query(buys('36541')).
query(buys('20147')).
query(buys('33939')).
query(buys('34270')).
query(buys('38714')).
query(buys('38675')).
query(buys('38709')).
query(buys('36542')).
query(buys('36687')).
query(buys('51153')).
query(buys('48051')).
query(buys('46125')).
query(buys('49539')).
