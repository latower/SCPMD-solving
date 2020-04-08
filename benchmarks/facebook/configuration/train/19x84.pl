10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('29259','13614').
0.1::trusts('61015','13614').
0.1::trusts('18706','13614').
0.1::trusts('13614','61015').
0.1::trusts('13614','18706').
0.19::trusts('46257','18706').
0.1::trusts('22829','18706').
0.1::trusts('5927','22829').
0.1::trusts('18706','22829').
0.271::trusts('22821','22829').
0.3439::trusts('18710','22829').
0.3439::trusts('57855','22829').
0.19::trusts('57856','22829').
0.1::trusts('5927','22821').
0.1::trusts('18710','22821').
0.271::trusts('22829','22821').
0.1::trusts('22821','18710').
0.271::trusts('22829','18710').
0.3439::trusts('22829','57855').
0.271::trusts('22829','57856').
0.19::trusts('28521','15132').
0.1::trusts('22829','15132').
0.1::trusts('57855','15132').
0.3439::trusts('44362','15132').
0.1::trusts('15132','44362').
0.19::trusts('22829','44651').
0.1::trusts('22829','48452').
0.19::trusts('44362','40892').
0.1::trusts('13614','48124').
0.1::trusts('13614','62194').

person('13614').
person('29259').
person('61015').
person('18706').
person('46257').
person('22829').
person('22821').
person('5927').
person('18710').
person('57855').
person('57856').
person('15132').
person('28521').
person('44362').
person('44651').
person('48452').
person('40892').
person('48124').
person('62194').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13614')).
query(buys('29259')).
query(buys('61015')).
query(buys('18706')).
query(buys('46257')).
query(buys('22829')).
query(buys('22821')).
query(buys('5927')).
query(buys('18710')).
query(buys('57855')).
query(buys('57856')).
query(buys('15132')).
query(buys('28521')).
query(buys('44362')).
query(buys('44651')).
query(buys('48452')).
query(buys('40892')).
query(buys('48124')).
query(buys('62194')).
