10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('10685','22282').
0.1::trusts('20470','22282').
0.19::trusts('2353','22282').
0.19::trusts('32343','22282').
0.1::trusts('22282','10685').
0.271::trusts('20470','10685').
0.271::trusts('10718','10685').
0.1::trusts('10685','20470').
0.1::trusts('23143','20470').
0.1::trusts('22282','2353').
0.1::trusts('29136','2353').
0.1::trusts('16543','2353').
0.1::trusts('10687','2353').
0.1::trusts('41123','2353').
0.1::trusts('57442','2353').
0.271::trusts('22282','32343').
0.271::trusts('10685','10718').
0.1::trusts('2353','29136').
0.1::trusts('36680','29136').
0.1::trusts('20470','23143').
0.1::trusts('2353','16543').
0.1::trusts('51611','16543').
0.1::trusts('2353','10687').
0.19::trusts('2353','41123').
0.1::trusts('2353','57442').
0.1::trusts('36685','57442').
0.1::trusts('2353','36685').
0.1::trusts('36685','62889').
0.1::trusts('20470','20483').
0.1::trusts('10718','3947').
0.1::trusts('10718','16544').
0.1::trusts('20470','20489').
0.1::trusts('10687','20489').
0.1::trusts('2353','58572').

person('22282').
person('10685').
person('20470').
person('2353').
person('32343').
person('10718').
person('29136').
person('36680').
person('23143').
person('16543').
person('10687').
person('41123').
person('57442').
person('51611').
person('36685').
person('62889').
person('20483').
person('3947').
person('16544').
person('20489').
person('58572').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22282')).
query(buys('10685')).
query(buys('20470')).
query(buys('2353')).
query(buys('32343')).
query(buys('10718')).
query(buys('29136')).
query(buys('36680')).
query(buys('23143')).
query(buys('16543')).
query(buys('10687')).
query(buys('41123')).
query(buys('57442')).
query(buys('51611')).
query(buys('36685')).
query(buys('62889')).
query(buys('20483')).
query(buys('3947')).
query(buys('16544')).
query(buys('20489')).
query(buys('58572')).
