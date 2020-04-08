10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4641','9753').
0.271::trusts('5559','9753').
0.19::trusts('17075','9753').
0.1::trusts('9763','9753').
0.271::trusts('23809','9753').
0.19::trusts('9753','4641').
0.3439::trusts('9753','5559').
0.1::trusts('10798','5559').
0.1::trusts('23809','5559').
0.271::trusts('9753','17075').
0.1::trusts('5559','17075').
0.1::trusts('9753','9763').
0.1::trusts('17075','9763').
0.19::trusts('17818','9763').
0.19::trusts('18301','9763').
0.271::trusts('9753','23809').
0.1::trusts('5559','23809').
0.1::trusts('5559','10798').
0.1::trusts('5001','10798').
0.271::trusts('24273','10798').
0.19::trusts('17818','16293').
0.19::trusts('16293','17818').
0.19::trusts('9763','17818').
0.1::trusts('18301','17818').
0.1::trusts('10798','5001').
0.1::trusts('9763','18301').
0.1::trusts('17818','18301').
0.1::trusts('32335','18301').
0.1::trusts('18301','32335').
0.1::trusts('15370','32335').
0.1::trusts('32335','15370').
0.1::trusts('17818','17837').
0.1::trusts('9753','24127').
0.1::trusts('17075','23132').
0.271::trusts('15370','23794').

person('9753').
person('4641').
person('5559').
person('17075').
person('9763').
person('23809').
person('10798').
person('16293').
person('17818').
person('5001').
person('24273').
person('18301').
person('32335').
person('15370').
person('17837').
person('24127').
person('23132').
person('23794').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9753')).
query(buys('4641')).
query(buys('5559')).
query(buys('17075')).
query(buys('9763')).
query(buys('23809')).
query(buys('10798')).
query(buys('16293')).
query(buys('17818')).
query(buys('5001')).
query(buys('24273')).
query(buys('18301')).
query(buys('32335')).
query(buys('15370')).
query(buys('17837')).
query(buys('24127')).
query(buys('23132')).
query(buys('23794')).
