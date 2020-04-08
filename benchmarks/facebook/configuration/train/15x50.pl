10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('9222','8452').
0.1::trusts('9221','8452').
0.3439::trusts('8452','9222').
0.1::trusts('16539','9222').
0.1::trusts('8452','9221').
0.1::trusts('11782','23479').
0.1::trusts('60399','23479').
0.271::trusts('23479','11782').
0.40951::trusts('16539','11782').
0.271::trusts('40021','11782').
0.1::trusts('23479','60399').
0.1::trusts('23479','15750').
0.19::trusts('23479','16539').
0.56953279::trusts('11782','16539').
0.271::trusts('9222','16539').
0.1::trusts('28886','16539').
0.1::trusts('16539','28886').
0.1::trusts('23479','40389').
0.1::trusts('40390','40389').
0.1::trusts('23479','18756').
0.1::trusts('54435','18756').
0.1::trusts('9222','50040').

person('8452').
person('9222').
person('9221').
person('23479').
person('11782').
person('60399').
person('15750').
person('16539').
person('40021').
person('28886').
person('40389').
person('40390').
person('18756').
person('54435').
person('50040').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8452')).
query(buys('9222')).
query(buys('9221')).
query(buys('23479')).
query(buys('11782')).
query(buys('60399')).
query(buys('15750')).
query(buys('16539')).
query(buys('40021')).
query(buys('28886')).
query(buys('40389')).
query(buys('40390')).
query(buys('18756')).
query(buys('54435')).
query(buys('50040')).
