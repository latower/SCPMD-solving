10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('11604','56373').
0.1::trusts('41489','56373').
0.1::trusts('27879','56373').
0.1::trusts('48072','56373').
0.271::trusts('56373','11604').
0.1::trusts('18932','11604').
0.19::trusts('37504','11604').
0.19::trusts('48072','11604').
0.56953279::trusts('30433','11604').
0.1::trusts('56373','41489').
0.1::trusts('27879','41489').
0.1::trusts('48072','41489').
0.271::trusts('56373','27879').
0.1::trusts('41489','27879').
0.1::trusts('56373','48072').
0.1::trusts('11604','48072').
0.19::trusts('11604','18932').
0.1::trusts('29976','18932').
0.1::trusts('26235','18932').
0.1::trusts('37504','18932').
0.717570463519::trusts('30433','18932').
0.1::trusts('11604','37504').
0.1::trusts('47167','37504').
0.468559::trusts('11604','30433').
0.468559::trusts('18932','30433').
0.1::trusts('37504','30433').
0.1::trusts('15512','30433').
0.1::trusts('18932','29976').
0.1::trusts('18932','26235').
0.1::trusts('29976','26235').
0.1::trusts('44773','26235').
0.1::trusts('37504','47167').
0.1::trusts('39855','47167').
0.1::trusts('30433','15512').
0.1::trusts('47167','39855').
0.1::trusts('41489','56555').
0.1::trusts('39855','54003').
0.19::trusts('27879','59903').
0.271::trusts('48072','41279').

person('56373').
person('11604').
person('41489').
person('27879').
person('48072').
person('18932').
person('37504').
person('30433').
person('29976').
person('26235').
person('44773').
person('47167').
person('15512').
person('39855').
person('56555').
person('54003').
person('59903').
person('41279').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('56373')).
query(buys('11604')).
query(buys('41489')).
query(buys('27879')).
query(buys('48072')).
query(buys('18932')).
query(buys('37504')).
query(buys('30433')).
query(buys('29976')).
query(buys('26235')).
query(buys('44773')).
query(buys('47167')).
query(buys('15512')).
query(buys('39855')).
query(buys('56555')).
query(buys('54003')).
query(buys('59903')).
query(buys('41279')).