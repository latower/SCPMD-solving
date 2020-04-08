10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('11383','21512').
0.19::trusts('21512','11383').
0.56953279::trusts('4871','11383').
0.1::trusts('11393','11383').
0.1::trusts('15688','11383').
0.56953279::trusts('11383','4871').
0.1::trusts('19145','4871').
0.1::trusts('29308','4871').
0.612579511::trusts('29312','4871').
0.271::trusts('4871','19145').
0.1::trusts('46801','19145').
0.19::trusts('36212','19145').
0.1::trusts('4871','29308').
0.612579511::trusts('4871','29312').
0.19::trusts('11383','11393').
0.1::trusts('46377','11393').
0.1::trusts('11383','15688').
0.19::trusts('19145','46801').
0.19::trusts('46799','46801').
0.1::trusts('19145','36212').
0.1::trusts('11393','46377').
0.19::trusts('46801','46799').
0.1::trusts('46798','46799').
0.1::trusts('51482','46799').
0.1::trusts('51436','46799').
0.1::trusts('46799','51436').
0.1::trusts('4871','29309').
0.1::trusts('46801','46800').

person('21512').
person('11383').
person('4871').
person('19145').
person('29308').
person('29312').
person('11393').
person('15688').
person('46801').
person('36212').
person('46377').
person('46799').
person('46798').
person('51482').
person('51436').
person('29309').
person('46800').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21512')).
query(buys('11383')).
query(buys('4871')).
query(buys('19145')).
query(buys('29308')).
query(buys('29312')).
query(buys('11393')).
query(buys('15688')).
query(buys('46801')).
query(buys('36212')).
query(buys('46377')).
query(buys('46799')).
query(buys('46798')).
query(buys('51482')).
query(buys('51436')).
query(buys('29309')).
query(buys('46800')).
