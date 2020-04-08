10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('2131','11463').
0.5217031::trusts('8025','11463').
0.1::trusts('8021','11463').
0.1::trusts('40101','11463').
0.40951::trusts('11463','2131').
0.1::trusts('2266','2131').
0.1::trusts('12392','2131').
0.1::trusts('9328','2131').
0.890581010868488::trusts('11463','8025').
0.1::trusts('8021','8025').
0.1::trusts('11686','8025').
0.3439::trusts('11463','8021').
0.271::trusts('8025','8021').
0.40951::trusts('11686','8021').
0.1::trusts('11463','40101').
0.1::trusts('2131','2266').
0.19::trusts('19425','2266').
0.56953279::trusts('2374','2266').
0.19::trusts('2131','9328').
0.1::trusts('9327','9328').
0.1::trusts('11463','2649').
0.19::trusts('2131','2649').
0.1::trusts('2266','19425').
0.271::trusts('2266','2374').
0.19::trusts('2376','2374').
0.1::trusts('1603','2374').
0.1::trusts('1696','2374').
0.56953279::trusts('2374','2376').
0.1::trusts('14504','2376').
0.1::trusts('2374','1603').
0.1::trusts('2374','1696').
0.19::trusts('9329','9327').
0.19::trusts('9327','9329').

person('11463').
person('2131').
person('8025').
person('8021').
person('40101').
person('2266').
person('12392').
person('9328').
person('2649').
person('19425').
person('2374').
person('2376').
person('14504').
person('11686').
person('1603').
person('1696').
person('9327').
person('9329').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11463')).
query(buys('2131')).
query(buys('8025')).
query(buys('8021')).
query(buys('40101')).
query(buys('2266')).
query(buys('12392')).
query(buys('9328')).
query(buys('2649')).
query(buys('19425')).
query(buys('2374')).
query(buys('2376')).
query(buys('14504')).
query(buys('11686')).
query(buys('1603')).
query(buys('1696')).
query(buys('9327')).
query(buys('9329')).
