10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9368','7192').
0.19::trusts('3431','7192').
0.19::trusts('17120','7192').
0.1::trusts('3431','9368').
0.19::trusts('7192','3431').
0.1::trusts('9368','3431').
0.612579511::trusts('18516','3431').
0.833228183003334::trusts('10437','3431').
0.1::trusts('18176','3431').
0.1::trusts('30635','3431').
0.1::trusts('29773','3431').
0.19::trusts('31836','3431').
0.19::trusts('7192','17120').
0.1::trusts('7182','17120').
0.1::trusts('12724','17120').
0.19::trusts('17270','7182').
0.1::trusts('17120','7182').
0.1::trusts('39844','7182').
0.19::trusts('7182','17270').
0.3439::trusts('37900','17270').
0.19::trusts('3431','18516').
0.1::trusts('7235','18516').
0.1::trusts('7192','18176').
0.1::trusts('9368','18176').
0.1::trusts('3431','18176').
0.1::trusts('3431','30635').
0.1::trusts('57752','30635').
0.1::trusts('3431','29773').
0.1::trusts('31837','31836').
0.5217031::trusts('17270','37900').
0.271::trusts('17120','12724').
0.1::trusts('31836','31837').
0.19::trusts('10437','31748').
0.1::trusts('7192','18368').
0.1::trusts('7235','63833').

person('7192').
person('9368').
person('3431').
person('17120').
person('7182').
person('17270').
person('39844').
person('18516').
person('10437').
person('18176').
person('30635').
person('29773').
person('31836').
person('37900').
person('12724').
person('7235').
person('57752').
person('31837').
person('31748').
person('18368').
person('63833').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7192')).
query(buys('9368')).
query(buys('3431')).
query(buys('17120')).
query(buys('7182')).
query(buys('17270')).
query(buys('39844')).
query(buys('18516')).
query(buys('10437')).
query(buys('18176')).
query(buys('30635')).
query(buys('29773')).
query(buys('31836')).
query(buys('37900')).
query(buys('12724')).
query(buys('7235')).
query(buys('57752')).
query(buys('31837')).
query(buys('31748')).
query(buys('18368')).
query(buys('63833')).
