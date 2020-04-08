10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('9312','3741').
0.1::trusts('11296','3741').
0.1::trusts('3741','9312').
0.1::trusts('4015','9312').
0.19::trusts('27967','9312').
0.1::trusts('3741','11296').
0.19::trusts('9584','11296').
0.68618940391::trusts('51157','11296').
0.1::trusts('11297','11296').
0.1::trusts('27967','4015').
0.1::trusts('9312','4015').
0.19::trusts('4016','4015').
0.1::trusts('11296','9584').
0.1::trusts('11308','9584').
0.5217031::trusts('11296','51157').
0.19::trusts('20447','11297').
0.1::trusts('43360','11297').
0.19::trusts('9584','11308').
0.1::trusts('23215','11308').
0.19::trusts('20447','11308').
0.1::trusts('23222','11308').
0.1::trusts('3741','23215').
0.1::trusts('11296','23215').
0.1::trusts('11308','20447').
0.1::trusts('11297','43360').
0.1::trusts('3741','11293').
0.1::trusts('23215','11293').
0.1::trusts('49640','11293').
0.1::trusts('27967','27968').
0.271::trusts('4016','27968').
0.1::trusts('49640','52679').

person('3741').
person('9312').
person('11296').
person('4015').
person('27967').
person('4016').
person('9584').
person('51157').
person('11297').
person('11308').
person('23215').
person('20447').
person('23222').
person('43360').
person('11293').
person('49640').
person('27968').
person('52679').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3741')).
query(buys('9312')).
query(buys('11296')).
query(buys('4015')).
query(buys('27967')).
query(buys('4016')).
query(buys('9584')).
query(buys('51157')).
query(buys('11297')).
query(buys('11308')).
query(buys('23215')).
query(buys('20447')).
query(buys('23222')).
query(buys('43360')).
query(buys('11293')).
query(buys('49640')).
query(buys('27968')).
query(buys('52679')).
