10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('11600','6576').
0.1::trusts('11602','6576').
0.1::trusts('2847','6576').
0.1::trusts('6576','11600').
0.1::trusts('11602','11600').
0.1::trusts('6576','11602').
0.19::trusts('18174','11602').
0.1::trusts('18180','11602').
0.271::trusts('7383','11602').
0.19::trusts('5297','11602').
0.1::trusts('9633','11602').
0.1::trusts('6576','2847').
0.271::trusts('11602','18174').
0.1::trusts('22203','18174').
0.19::trusts('18180','18174').
0.1::trusts('18174','22203').
0.19::trusts('18174','18180').
0.612579511::trusts('16350','18180').
0.19::trusts('11602','18180').
0.19::trusts('11602','7383').
0.1::trusts('9384','7383').
0.1::trusts('52848','7383').
0.1::trusts('31117','7383').
0.271::trusts('11602','5297').
0.3439::trusts('7383','9384').
0.19::trusts('7650','9384').
0.1::trusts('7383','52848').
0.271::trusts('7383','31117').
0.1::trusts('2800','31117').
0.1::trusts('9384','7650').
0.271::trusts('16350','52736').
0.40951::trusts('16350','38128').
0.271::trusts('31117','2800').

person('6576').
person('11600').
person('11602').
person('2847').
person('18174').
person('22203').
person('18180').
person('7383').
person('5297').
person('9633').
person('16350').
person('9384').
person('52848').
person('31117').
person('7650').
person('52736').
person('38128').
person('2800').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6576')).
query(buys('11600')).
query(buys('11602')).
query(buys('2847')).
query(buys('18174')).
query(buys('22203')).
query(buys('18180')).
query(buys('7383')).
query(buys('5297')).
query(buys('9633')).
query(buys('16350')).
query(buys('9384')).
query(buys('52848')).
query(buys('31117')).
query(buys('7650')).
query(buys('52736')).
query(buys('38128')).
query(buys('2800')).
