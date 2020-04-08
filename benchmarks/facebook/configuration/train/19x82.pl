10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('14624','22030').
0.1::trusts('11479','22030').
0.1::trusts('6479','22030').
0.1::trusts('59081','22030').
0.19::trusts('58635','22030').
0.1::trusts('59080','22030').
0.1::trusts('53582','22030').
0.1::trusts('22030','14624').
0.1::trusts('22030','11479').
0.1::trusts('41839','11479').
0.271::trusts('19258','11479').
0.1::trusts('22030','59081').
0.271::trusts('22030','58635').
0.1::trusts('51277','58635').
0.1::trusts('63397','58635').
0.1::trusts('22030','59080').
0.1::trusts('6479','59080').
0.1::trusts('59081','59080').
0.1::trusts('22030','53582').
0.1::trusts('11479','41839').
0.1::trusts('19258','11206').
0.19::trusts('11479','19258').
0.1::trusts('11353','19258').
0.19::trusts('58635','51277').
0.1::trusts('55863','51277').
0.1::trusts('58635','63397').
0.19::trusts('51277','55863').
0.1::trusts('22030','59082').
0.1::trusts('58635','59082').
0.1::trusts('11479','56617').
0.1::trusts('58635','16881').
0.1::trusts('53582','16881').
0.1::trusts('58635','30033').
0.1::trusts('53582','30033').

person('22030').
person('14624').
person('11479').
person('6479').
person('59081').
person('58635').
person('59080').
person('53582').
person('41839').
person('11206').
person('19258').
person('11353').
person('51277').
person('63397').
person('55863').
person('59082').
person('56617').
person('16881').
person('30033').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22030')).
query(buys('14624')).
query(buys('11479')).
query(buys('6479')).
query(buys('59081')).
query(buys('58635')).
query(buys('59080')).
query(buys('53582')).
query(buys('41839')).
query(buys('11206')).
query(buys('19258')).
query(buys('11353')).
query(buys('51277')).
query(buys('63397')).
query(buys('55863')).
query(buys('59082')).
query(buys('56617')).
query(buys('16881')).
query(buys('30033')).
