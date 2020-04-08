10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('13397','1726').
0.1::trusts('9178','1726').
0.1::trusts('17827','1726').
0.1::trusts('12674','1726').
0.1::trusts('13405','1726').
0.1::trusts('1726','13397').
0.1::trusts('1726','9178').
0.1::trusts('44363','9178').
0.1::trusts('33487','9178').
0.1::trusts('1726','17827').
0.5217031::trusts('13403','17827').
0.1::trusts('1726','12674').
0.1::trusts('18057','12674').
0.1::trusts('1726','13405').
0.56953279::trusts('17827','13403').
0.1::trusts('12674','18057').
0.1::trusts('44363','45598').
0.1::trusts('45598','44363').
0.19::trusts('9178','44363').
0.1::trusts('9178','33487').
0.1::trusts('33603','33487').
0.1::trusts('33603','13372').
0.1::trusts('44363','33603').
0.1::trusts('13372','33603').
0.1::trusts('33487','33603').
0.1::trusts('50024','33603').
0.19::trusts('9178','50080').
0.1::trusts('33603','50024').
0.1::trusts('17827','23795').
0.1::trusts('34826','23795').
0.19::trusts('23795','34826').
0.1::trusts('1726','31971').
0.1::trusts('50080','36835').
0.1::trusts('1726','31967').

person('1726').
person('13397').
person('9178').
person('17827').
person('12674').
person('13405').
person('13403').
person('18057').
person('45598').
person('44363').
person('33487').
person('13372').
person('33603').
person('50080').
person('50024').
person('23795').
person('34826').
person('31971').
person('36835').
person('31967').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1726')).
query(buys('13397')).
query(buys('9178')).
query(buys('17827')).
query(buys('12674')).
query(buys('13405')).
query(buys('13403')).
query(buys('18057')).
query(buys('45598')).
query(buys('44363')).
query(buys('33487')).
query(buys('13372')).
query(buys('33603')).
query(buys('50080')).
query(buys('50024')).
query(buys('23795')).
query(buys('34826')).
query(buys('31971')).
query(buys('36835')).
query(buys('31967')).
