10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('8342','9394').
0.40951::trusts('19316','9394').
0.1::trusts('9771','9394').
0.1::trusts('24389','9394').
0.468559::trusts('9394','8342').
0.1::trusts('3546','8342').
0.271::trusts('9394','19316').
0.19::trusts('37841','19316').
0.19::trusts('9394','9771').
0.1::trusts('9394','24389').
0.19::trusts('24392','24389').
0.1::trusts('19316','6150').
0.1::trusts('6963','6150').
0.271::trusts('8342','3546').
0.19::trusts('19316','37841').
0.1::trusts('18557','37841').
0.1::trusts('24298','37841').
0.19::trusts('24389','24392').
0.1::trusts('63857','24392').
0.1::trusts('37841','18557').
0.19::trusts('37841','24298').
0.1::trusts('6150','6156').
0.1::trusts('9394','24390').

person('9394').
person('8342').
person('19316').
person('9771').
person('24389').
person('6150').
person('6963').
person('3546').
person('37841').
person('24392').
person('18557').
person('24298').
person('63857').
person('6156').
person('24390').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9394')).
query(buys('8342')).
query(buys('19316')).
query(buys('9771')).
query(buys('24389')).
query(buys('6150')).
query(buys('6963')).
query(buys('3546')).
query(buys('37841')).
query(buys('24392')).
query(buys('18557')).
query(buys('24298')).
query(buys('63857')).
query(buys('6156')).
query(buys('24390')).
