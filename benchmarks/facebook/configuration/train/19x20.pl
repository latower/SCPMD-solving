10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12085','4455').
0.468559::trusts('32607','4455').
0.928210201230815::trusts('31892','4455').
0.56953279::trusts('4455','32607').
0.1::trusts('12085','32607').
0.1::trusts('28918','32607').
0.19::trusts('31165','32607').
0.935389181107733::trusts('4455','31892').
0.1::trusts('31895','31892').
0.1::trusts('39178','31892').
0.928210201230815::trusts('12085','12076').
0.1::trusts('28850','12076').
0.1::trusts('31895','12076').
0.1::trusts('12076','28850').
0.1::trusts('4455','31895').
0.19::trusts('12076','31895').
0.19::trusts('31892','31895').
0.1::trusts('15001','31895').
0.1::trusts('4455','28918').
0.271::trusts('32607','28918').
0.19::trusts('27812','28918').
0.19::trusts('35268','28918').
0.3439::trusts('32607','31165').
0.1::trusts('28918','27812').
0.1::trusts('28918','35268').
0.1::trusts('33525','35268').
0.19::trusts('12085','15001').
0.1::trusts('12085','33104').
0.1::trusts('35268','34545').
0.1::trusts('12085','39768').
0.19::trusts('39178','63329').
0.1::trusts('63328','63329').
0.1::trusts('63329','63328').

person('4455').
person('12085').
person('32607').
person('31892').
person('12076').
person('28850').
person('31895').
person('28918').
person('31165').
person('27812').
person('35268').
person('15001').
person('33525').
person('39178').
person('33104').
person('34545').
person('39768').
person('63329').
person('63328').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4455')).
query(buys('12085')).
query(buys('32607')).
query(buys('31892')).
query(buys('12076')).
query(buys('28850')).
query(buys('31895')).
query(buys('28918')).
query(buys('31165')).
query(buys('27812')).
query(buys('35268')).
query(buys('15001')).
query(buys('33525')).
query(buys('39178')).
query(buys('33104')).
query(buys('34545')).
query(buys('39768')).
query(buys('63329')).
query(buys('63328')).
