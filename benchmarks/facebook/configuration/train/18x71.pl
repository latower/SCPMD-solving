10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18179','29702').
0.19::trusts('33925','29702').
0.19::trusts('16241','29702').
0.1::trusts('51341','29702').
0.1::trusts('29702','18179').
0.1::trusts('29702','33925').
0.19::trusts('44439','33925').
0.1::trusts('63042','33925').
0.3439::trusts('29702','16241').
0.19::trusts('57120','16241').
0.1::trusts('47678','16241').
0.19::trusts('29702','51341').
0.1::trusts('33925','44439').
0.1::trusts('33925','63042').
0.19::trusts('32435','63042').
0.271::trusts('29702','31387').
0.1::trusts('16241','57120').
0.1::trusts('16241','47678').
0.19::trusts('63042','32435').
0.1::trusts('44439','38922').
0.1::trusts('18179','60151').
0.3439::trusts('47785','55479').
0.1::trusts('29702','47785').
0.271::trusts('55479','47785').
0.1::trusts('44439','54842').
0.1::trusts('33925','60363').
0.19::trusts('44439','47968').

person('29702').
person('18179').
person('33925').
person('16241').
person('51341').
person('44439').
person('63042').
person('31387').
person('57120').
person('47678').
person('32435').
person('38922').
person('60151').
person('55479').
person('47785').
person('54842').
person('60363').
person('47968').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29702')).
query(buys('18179')).
query(buys('33925')).
query(buys('16241')).
query(buys('51341')).
query(buys('44439')).
query(buys('63042')).
query(buys('31387')).
query(buys('57120')).
query(buys('47678')).
query(buys('32435')).
query(buys('38922')).
query(buys('60151')).
query(buys('55479')).
query(buys('47785')).
query(buys('54842')).
query(buys('60363')).
query(buys('47968')).
