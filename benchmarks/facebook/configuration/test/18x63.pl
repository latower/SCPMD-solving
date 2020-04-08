10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7363','5324').
0.1::trusts('17681','5324').
0.1::trusts('3121','5324').
0.1::trusts('5376','5324').
0.19::trusts('5324','7363').
0.40951::trusts('9467','7363').
0.19::trusts('18923','7363').
0.1::trusts('5324','17681').
0.271::trusts('1257','17681').
0.1::trusts('19454','17681').
0.1::trusts('19455','17681').
0.271::trusts('5324','3121').
0.1::trusts('5324','5376').
0.468559::trusts('7363','9467').
0.271::trusts('45801','9467').
0.1::trusts('50359','9467').
0.3439::trusts('7363','18923').
0.40951::trusts('17681','1257').
0.19::trusts('19454','1257').
0.40951::trusts('21565','1257').
0.1::trusts('1257','19454').
0.40951::trusts('17681','19454').
0.3439::trusts('1257','21565').
0.19::trusts('17681','19455').
0.271::trusts('9467','45801').
0.19::trusts('54958','45801').
0.19::trusts('9467','50359').
0.19::trusts('20442','50359').
0.271::trusts('45801','54958').
0.1::trusts('58877','54958').
0.1::trusts('54958','58877').
0.1::trusts('1257','1254').
0.1::trusts('54958','53249').

person('5324').
person('7363').
person('17681').
person('3121').
person('5376').
person('9467').
person('18923').
person('1257').
person('19454').
person('21565').
person('19455').
person('45801').
person('50359').
person('54958').
person('58877').
person('20442').
person('1254').
person('53249').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5324')).
query(buys('7363')).
query(buys('17681')).
query(buys('3121')).
query(buys('5376')).
query(buys('9467')).
query(buys('18923')).
query(buys('1257')).
query(buys('19454')).
query(buys('21565')).
query(buys('19455')).
query(buys('45801')).
query(buys('50359')).
query(buys('54958')).
query(buys('58877')).
query(buys('20442')).
query(buys('1254')).
query(buys('53249')).
