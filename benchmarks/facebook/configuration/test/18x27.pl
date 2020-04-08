10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('30016','4034').
0.19::trusts('4034','30016').
0.1::trusts('32362','30016').
0.1::trusts('31261','30014').
0.19::trusts('26936','30014').
0.19::trusts('27490','30014').
0.19::trusts('30014','26936').
0.1::trusts('47014','26936').
0.1::trusts('30014','27490').
0.56953279::trusts('22344','27490').
0.19::trusts('32089','27490').
0.1::trusts('30128','27490').
0.271::trusts('32089','22344').
0.40951::trusts('27490','22344').
0.1::trusts('61557','22344').
0.1::trusts('29578','22344').
0.271::trusts('31260','32089').
0.271::trusts('27490','32089').
0.1::trusts('32376','32089').
0.1::trusts('22344','29578').
0.1::trusts('30016','32362').
0.19::trusts('32376','32362').
0.1::trusts('22344','32376').
0.1::trusts('32362','32376').
0.1::trusts('32089','31260').
0.1::trusts('50054','31260').
0.1::trusts('31260','50054').
0.19::trusts('26936','47014').
0.271::trusts('26932','47014').
0.1::trusts('22344','30128').
0.1::trusts('26936','30128').
0.3439::trusts('47014','26932').
0.1::trusts('26936','36390').

person('4034').
person('30016').
person('30014').
person('31261').
person('26936').
person('27490').
person('22344').
person('32089').
person('61557').
person('29578').
person('32362').
person('32376').
person('31260').
person('50054').
person('47014').
person('30128').
person('26932').
person('36390').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4034')).
query(buys('30016')).
query(buys('30014')).
query(buys('31261')).
query(buys('26936')).
query(buys('27490')).
query(buys('22344')).
query(buys('32089')).
query(buys('61557')).
query(buys('29578')).
query(buys('32362')).
query(buys('32376')).
query(buys('31260')).
query(buys('50054')).
query(buys('47014')).
query(buys('30128')).
query(buys('26932')).
query(buys('36390')).
