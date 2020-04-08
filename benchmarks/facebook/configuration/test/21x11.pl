10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('19932','13363').
0.19::trusts('31528','13363').
0.1::trusts('4709','13363').
0.1::trusts('37948','13363').
0.3439::trusts('37951','13363').
0.3439::trusts('37950','13363').
0.468559::trusts('37945','13363').
0.1::trusts('18193','13363').
0.19::trusts('13363','19932').
0.1::trusts('24070','19932').
0.19::trusts('19303','19932').
0.19::trusts('13363','31528').
0.1::trusts('41429','31528').
0.1::trusts('13363','4709').
0.19::trusts('4695','4709').
0.19::trusts('49665','4709').
0.19::trusts('13363','37948').
0.1::trusts('37945','37948').
0.271::trusts('13363','37951').
0.3439::trusts('37950','37951').
0.1::trusts('13363','37950').
0.3439::trusts('37951','37950').
0.40951::trusts('13363','37945').
0.1::trusts('13363','18193').
0.271::trusts('24070','27565').
0.3439::trusts('27565','24070').
0.1::trusts('19932','24070').
0.271::trusts('4709','4695').
0.1::trusts('19932','19303').
0.3439::trusts('4709','49665').
0.1::trusts('13363','13860').
0.1::trusts('13363','30276').
0.19::trusts('46960','47547').
0.1::trusts('37951','46960').
0.1::trusts('37950','46960').
0.1::trusts('47547','46960').
0.1::trusts('19932','24069').
0.1::trusts('19303','59341').

person('13363').
person('19932').
person('31528').
person('4709').
person('37948').
person('37951').
person('37950').
person('37945').
person('18193').
person('27565').
person('24070').
person('4695').
person('19303').
person('41429').
person('49665').
person('13860').
person('30276').
person('47547').
person('46960').
person('24069').
person('59341').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13363')).
query(buys('19932')).
query(buys('31528')).
query(buys('4709')).
query(buys('37948')).
query(buys('37951')).
query(buys('37950')).
query(buys('37945')).
query(buys('18193')).
query(buys('27565')).
query(buys('24070')).
query(buys('4695')).
query(buys('19303')).
query(buys('41429')).
query(buys('49665')).
query(buys('13860')).
query(buys('30276')).
query(buys('47547')).
query(buys('46960')).
query(buys('24069')).
query(buys('59341')).
