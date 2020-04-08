10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('47865','22050').
0.1::trusts('20537','22050').
0.19::trusts('20538','22050').
0.19::trusts('22050','47865').
0.271::trusts('60720','47865').
0.271::trusts('22050','20537').
0.1::trusts('42183','20537').
0.3439::trusts('20538','20537').
0.271::trusts('43296','20537').
0.1::trusts('20535','20537').
0.271::trusts('54861','22005').
0.19::trusts('45264','22005').
0.19::trusts('42728','22005').
0.1::trusts('38488','22005').
0.1::trusts('22005','54861').
0.1::trusts('42183','54861').
0.19::trusts('22005','45264').
0.1::trusts('22005','42728').
0.1::trusts('13349','42728').
0.19::trusts('22005','38488').
0.19::trusts('54861','42183').
0.1::trusts('20537','42183').
0.1::trusts('42728','13349').
0.271::trusts('47865','60720').
0.1::trusts('22050','43296').
0.19::trusts('20537','43296').
0.1::trusts('47865','54236').
0.1::trusts('24798','18809').
0.1::trusts('13349','18809').
0.1::trusts('22050','25902').

person('22050').
person('47865').
person('20537').
person('20538').
person('22005').
person('54861').
person('45264').
person('42728').
person('38488').
person('42183').
person('13349').
person('60720').
person('43296').
person('20535').
person('54236').
person('18809').
person('24798').
person('25902').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22050')).
query(buys('47865')).
query(buys('20537')).
query(buys('20538')).
query(buys('22005')).
query(buys('54861')).
query(buys('45264')).
query(buys('42728')).
query(buys('38488')).
query(buys('42183')).
query(buys('13349')).
query(buys('60720')).
query(buys('43296')).
query(buys('20535')).
query(buys('54236')).
query(buys('18809')).
query(buys('24798')).
query(buys('25902')).
