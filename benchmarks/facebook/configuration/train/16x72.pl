10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('812','820').
0.19::trusts('619','820').
0.1::trusts('10373','820').
0.1::trusts('820','812').
0.1::trusts('820','619').
0.19::trusts('37201','619').
0.999823035654572::trusts('10373','619').
0.19::trusts('37200','619').
0.1::trusts('820','10373').
0.999980636740211::trusts('619','10373').
0.271::trusts('37200','10373').
0.1::trusts('7811','10373').
0.19::trusts('619','37201').
0.1::trusts('44167','37201').
0.1::trusts('56884','37201').
0.1::trusts('37201','44167').
0.1::trusts('50334','44167').
0.19::trusts('50333','44167').
0.1::trusts('37201','56884').
0.1::trusts('619','37200').
0.3439::trusts('10373','37200').
0.40951::trusts('10373','7811').
0.1::trusts('44167','50334').
0.19::trusts('59898','50334').
0.468559::trusts('44167','50333').
0.271::trusts('50334','59898').
0.1::trusts('59897','59898').
0.1::trusts('619','10699').
0.1::trusts('37200','10699').
0.1::trusts('37201','6279').
0.1::trusts('37201','12683').

person('820').
person('812').
person('619').
person('10373').
person('37201').
person('44167').
person('56884').
person('37200').
person('7811').
person('50334').
person('50333').
person('59898').
person('59897').
person('10699').
person('6279').
person('12683').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('820')).
query(buys('812')).
query(buys('619')).
query(buys('10373')).
query(buys('37201')).
query(buys('44167')).
query(buys('56884')).
query(buys('37200')).
query(buys('7811')).
query(buys('50334')).
query(buys('50333')).
query(buys('59898')).
query(buys('59897')).
query(buys('10699')).
query(buys('6279')).
query(buys('12683')).
