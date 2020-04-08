10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18874','23124').
0.1::trusts('51529','23124').
0.1::trusts('23124','18874').
0.1::trusts('37739','18874').
0.1::trusts('28963','18874').
0.1::trusts('18874','37739').
0.794108867905351::trusts('8768','37739').
0.1::trusts('32400','37739').
0.5217031::trusts('18874','28963').
0.864914828232701::trusts('37739','8768').
0.1::trusts('37739','32400').
0.271::trusts('15938','32400').
0.1::trusts('32999','32400').
0.271::trusts('32400','15938').
0.19::trusts('32400','32999').
0.271::trusts('37739','31563').
0.1::trusts('15938','29037').
0.19::trusts('23124','51528').
0.1::trusts('32400','26091').
0.1::trusts('23124','51530').
0.1::trusts('23124','35635').

person('23124').
person('18874').
person('51529').
person('37739').
person('28963').
person('8768').
person('32400').
person('15938').
person('32999').
person('31563').
person('29037').
person('51528').
person('26091').
person('51530').
person('35635').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23124')).
query(buys('18874')).
query(buys('51529')).
query(buys('37739')).
query(buys('28963')).
query(buys('8768')).
query(buys('32400')).
query(buys('15938')).
query(buys('32999')).
query(buys('31563')).
query(buys('29037')).
query(buys('51528')).
query(buys('26091')).
query(buys('51530')).
query(buys('35635')).
