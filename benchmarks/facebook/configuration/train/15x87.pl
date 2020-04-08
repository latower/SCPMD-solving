10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('11459','3295').
0.19::trusts('3294','3295').
0.1::trusts('3289','3295').
0.1::trusts('3295','11459').
0.5217031::trusts('54824','11459').
0.1::trusts('11223','11459').
0.3439::trusts('3295','3289').
0.1::trusts('3294','3289').
0.40951::trusts('11459','54824').
0.19::trusts('11459','11223').
0.19::trusts('11454','11223').
0.1::trusts('11223','11454').
0.19::trusts('31489','11454').
0.19::trusts('11454','31489').
0.1::trusts('3294','41692').
0.1::trusts('3294','52802').
0.1::trusts('11454','11457').
0.1::trusts('11223','11460').
0.1::trusts('3289','1049').
0.1::trusts('11459','56701').
0.1::trusts('54824','56701').
0.1::trusts('11459','44879').

person('3295').
person('11459').
person('3294').
person('3289').
person('54824').
person('11223').
person('11454').
person('31489').
person('41692').
person('52802').
person('11457').
person('11460').
person('1049').
person('56701').
person('44879').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3295')).
query(buys('11459')).
query(buys('3294')).
query(buys('3289')).
query(buys('54824')).
query(buys('11223')).
query(buys('11454')).
query(buys('31489')).
query(buys('41692')).
query(buys('52802')).
query(buys('11457')).
query(buys('11460')).
query(buys('1049')).
query(buys('56701')).
query(buys('44879')).
