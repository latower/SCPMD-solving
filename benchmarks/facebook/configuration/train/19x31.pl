10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12666','9278').
0.1::trusts('12769','9278').
0.1::trusts('9278','12666').
0.68618940391::trusts('12769','12666').
0.19::trusts('7247','12769').
0.19::trusts('14296','12769').
0.5217031::trusts('12666','12769').
0.1::trusts('14296','19788').
0.56953279::trusts('51921','19788').
0.3439::trusts('7247','14296').
0.1::trusts('19788','14296').
0.68618940391::trusts('22421','14296').
0.19::trusts('36494','14296').
0.19::trusts('18231','14296').
0.1::trusts('36162','14296').
0.19::trusts('19788','51921').
0.3439::trusts('7247','22421').
0.77123207545039::trusts('14296','22421').
0.1::trusts('14296','18231').
0.19::trusts('29760','18231').
0.40951::trusts('9933','18231').
0.1::trusts('14296','36162').
0.1::trusts('18231','29760').
0.1::trusts('14296','9933').
0.271::trusts('18231','9933').
0.1::trusts('16229','9933').
0.3439::trusts('51921','55735').
0.1::trusts('14296','8788').
0.1::trusts('16229','8788').
0.1::trusts('36162','23857').
0.1::trusts('14296','23225').
0.1::trusts('51921','42960').

person('9278').
person('12666').
person('12769').
person('19788').
person('14296').
person('51921').
person('7247').
person('22421').
person('36494').
person('18231').
person('36162').
person('29760').
person('9933').
person('16229').
person('55735').
person('8788').
person('23857').
person('23225').
person('42960').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9278')).
query(buys('12666')).
query(buys('12769')).
query(buys('19788')).
query(buys('14296')).
query(buys('51921')).
query(buys('7247')).
query(buys('22421')).
query(buys('36494')).
query(buys('18231')).
query(buys('36162')).
query(buys('29760')).
query(buys('9933')).
query(buys('16229')).
query(buys('55735')).
query(buys('8788')).
query(buys('23857')).
query(buys('23225')).
query(buys('42960')).
