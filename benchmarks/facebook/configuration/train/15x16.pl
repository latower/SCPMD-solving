10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21308','18291').
0.1::trusts('18291','21308').
0.271::trusts('19609','21308').
0.1::trusts('21308','19609').
0.3439::trusts('949','19609').
0.1::trusts('36056','19609').
0.271::trusts('19609','949').
0.1::trusts('19609','36056').
0.1::trusts('62758','36056').
0.1::trusts('34032','36056').
0.1::trusts('18291','21299').
0.1::trusts('36056','34032').
0.1::trusts('34033','34032').
0.1::trusts('34032','34033').
0.1::trusts('21308','55343').
0.1::trusts('36056','38112').
0.1::trusts('34464','38112').
0.1::trusts('19609','14503').
0.19::trusts('23555','14503').
0.1::trusts('18291','21311').

person('18291').
person('21308').
person('19609').
person('949').
person('36056').
person('21299').
person('62758').
person('34032').
person('34033').
person('55343').
person('38112').
person('34464').
person('14503').
person('23555').
person('21311').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18291')).
query(buys('21308')).
query(buys('19609')).
query(buys('949')).
query(buys('36056')).
query(buys('21299')).
query(buys('62758')).
query(buys('34032')).
query(buys('34033')).
query(buys('55343')).
query(buys('38112')).
query(buys('34464')).
query(buys('14503')).
query(buys('23555')).
query(buys('21311')).
