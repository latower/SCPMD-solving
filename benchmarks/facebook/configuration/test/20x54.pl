10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8733','15982').
0.1::trusts('13040','15982').
0.717570463519::trusts('16253','15982').
0.40951::trusts('19922','15982').
0.19::trusts('8318','15982').
0.1::trusts('19924','15982').
0.1::trusts('20249','8733').
0.1::trusts('15982','8733').
0.271::trusts('6771','8733').
0.1::trusts('20250','8733').
0.19::trusts('15982','13040').
0.19::trusts('277','13040').
0.19::trusts('15982','19922').
0.1::trusts('15982','8318').
0.1::trusts('18882','8318').
0.1::trusts('8319','8318').
0.1::trusts('3857','8318').
0.1::trusts('15982','19924').
0.271::trusts('8733','6771').
0.1::trusts('13040','6771').
0.19::trusts('8318','18882').
0.1::trusts('8733','20250').
0.1::trusts('13040','277').
0.1::trusts('13053','277').
0.19::trusts('13052','277').
0.271::trusts('277','13053').
0.19::trusts('277','13052').
0.1::trusts('8318','8319').
0.19::trusts('8318','3857').
0.40951::trusts('50635','3857').
0.612579511::trusts('3857','50635').
0.1::trusts('15982','16255').
0.1::trusts('15982','16256').
0.1::trusts('18882','23127').

person('15982').
person('8733').
person('13040').
person('16253').
person('19922').
person('8318').
person('19924').
person('6771').
person('18882').
person('20249').
person('20250').
person('277').
person('13053').
person('13052').
person('8319').
person('3857').
person('50635').
person('16255').
person('16256').
person('23127').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15982')).
query(buys('8733')).
query(buys('13040')).
query(buys('16253')).
query(buys('19922')).
query(buys('8318')).
query(buys('19924')).
query(buys('6771')).
query(buys('18882')).
query(buys('20249')).
query(buys('20250')).
query(buys('277')).
query(buys('13053')).
query(buys('13052')).
query(buys('8319')).
query(buys('3857')).
query(buys('50635')).
query(buys('16255')).
query(buys('16256')).
query(buys('23127')).
