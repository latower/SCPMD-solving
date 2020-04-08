10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('22466','19293').
0.1::trusts('22143','19293').
0.1::trusts('30362','19293').
0.271::trusts('19293','22466').
0.1::trusts('25924','22466').
0.19::trusts('21316','22466').
0.1::trusts('35028','22466').
0.19::trusts('17250','22466').
0.19::trusts('30011','22466').
0.468559::trusts('28809','22466').
0.271::trusts('19293','22143').
0.19::trusts('25924','22143').
0.19::trusts('22144','22143').
0.1::trusts('24075','22143').
0.1::trusts('19293','30362').
0.1::trusts('19293','25924').
0.19::trusts('22466','25924').
0.19::trusts('22143','25924').
0.3439::trusts('22466','21316').
0.1::trusts('28809','21316').
0.19::trusts('22466','35028').
0.1::trusts('22466','17250').
0.271::trusts('22466','30011').
0.1::trusts('22466','22144').
0.1::trusts('22143','22144').
0.1::trusts('28305','22144').
0.19::trusts('30362','36698').
0.1::trusts('22144','28305').
0.1::trusts('47091','28305').
0.1::trusts('59881','59880').
0.1::trusts('21316','59881').
0.1::trusts('59880','59881').
0.1::trusts('30362','52288').
0.1::trusts('30362','52289').

person('19293').
person('22466').
person('22143').
person('30362').
person('25924').
person('21316').
person('35028').
person('17250').
person('30011').
person('28809').
person('22144').
person('24075').
person('36698').
person('28305').
person('47091').
person('59880').
person('59881').
person('52288').
person('52289').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19293')).
query(buys('22466')).
query(buys('22143')).
query(buys('30362')).
query(buys('25924')).
query(buys('21316')).
query(buys('35028')).
query(buys('17250')).
query(buys('30011')).
query(buys('28809')).
query(buys('22144')).
query(buys('24075')).
query(buys('36698')).
query(buys('28305')).
query(buys('47091')).
query(buys('59880')).
query(buys('59881')).
query(buys('52288')).
query(buys('52289')).
