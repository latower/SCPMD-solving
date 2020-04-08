10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('6076','6275').
0.5217031::trusts('2514','6275').
0.19::trusts('8267','6275').
0.19::trusts('6278','6275').
0.40951::trusts('6275','2514').
0.1::trusts('5295','2514').
0.40951::trusts('2826','2514').
0.271::trusts('6275','8267').
0.1::trusts('4998','8267').
0.40951::trusts('6275','6278').
0.19::trusts('6076','6278').
0.717570463519::trusts('8281','4998').
0.1::trusts('8267','4998').
0.3439::trusts('4522','4998').
0.68618940391::trusts('4998','8281').
0.1::trusts('27542','8281').
0.3439::trusts('4998','4522').
0.1::trusts('5000','4522').
0.19::trusts('5005','4522').
0.1::trusts('2514','6637').
0.1::trusts('8360','6637').
0.1::trusts('6637','8360').
0.19::trusts('18857','8360').
0.19::trusts('5295','2723').
0.19::trusts('2723','5295').
0.19::trusts('2514','5295').
0.1::trusts('9074','5295').
0.19::trusts('2514','2826').
0.3439::trusts('2825','2826').
0.1::trusts('4522','5000').
0.19::trusts('4522','5005').
0.1::trusts('8360','18857').
0.5217031::trusts('2826','2825').

person('6275').
person('6076').
person('2514').
person('8267').
person('6278').
person('4998').
person('8281').
person('4522').
person('6637').
person('8360').
person('2723').
person('5295').
person('2826').
person('27542').
person('5000').
person('5005').
person('18857').
person('9074').
person('2825').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6275')).
query(buys('6076')).
query(buys('2514')).
query(buys('8267')).
query(buys('6278')).
query(buys('4998')).
query(buys('8281')).
query(buys('4522')).
query(buys('6637')).
query(buys('8360')).
query(buys('2723')).
query(buys('5295')).
query(buys('2826')).
query(buys('27542')).
query(buys('5000')).
query(buys('5005')).
query(buys('18857')).
query(buys('9074')).
query(buys('2825')).
