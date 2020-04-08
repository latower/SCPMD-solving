10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.920233556923127::trusts('21443','15616').
0.3439::trusts('21700','15616').
0.1::trusts('9736','15616').
0.935389181107733::trusts('15616','21443').
0.1::trusts('44489','21443').
0.3439::trusts('15616','21700').
0.1::trusts('6878','21700').
0.19::trusts('46669','21700').
0.1::trusts('15616','9736').
0.19::trusts('21700','46669').
0.271::trusts('28292','46669').
0.1::trusts('46987','46669').
0.271::trusts('46669','28292').
0.1::trusts('39297','28292').
0.19::trusts('45916','28292').
0.19::trusts('46669','46987').
0.1::trusts('36636','17248').
0.1::trusts('17248','36636').
0.1::trusts('9736','24315').
0.19::trusts('17248','24315').
0.19::trusts('28292','45916').
0.271::trusts('62649','45916').
0.1::trusts('19818','45916').
0.1::trusts('45916','19818').
0.1::trusts('62649','19818').
0.19::trusts('46669','62859').

person('15616').
person('21443').
person('21700').
person('9736').
person('44489').
person('6878').
person('46669').
person('28292').
person('46987').
person('17248').
person('36636').
person('24315').
person('39297').
person('45916').
person('62649').
person('19818').
person('62859').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15616')).
query(buys('21443')).
query(buys('21700')).
query(buys('9736')).
query(buys('44489')).
query(buys('6878')).
query(buys('46669')).
query(buys('28292')).
query(buys('46987')).
query(buys('17248')).
query(buys('36636')).
query(buys('24315')).
query(buys('39297')).
query(buys('45916')).
query(buys('62649')).
query(buys('19818')).
query(buys('62859')).
