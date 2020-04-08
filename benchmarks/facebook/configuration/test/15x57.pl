10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('47075','26522').
0.1::trusts('18343','26522').
0.19::trusts('47077','26522').
0.40951::trusts('26522','47075').
0.1::trusts('26522','18343').
0.1::trusts('9543','18343').
0.271::trusts('26522','47077').
0.1::trusts('18343','9543').
0.1::trusts('33392','9543').
0.1::trusts('12100','33392').
0.19::trusts('33392','12100').
0.1::trusts('12100','28541').
0.1::trusts('31987','28541').
0.1::trusts('9543','12781').
0.1::trusts('33392','12781').
0.1::trusts('9543','14420').
0.1::trusts('28116','14420').
0.19::trusts('33392','33262').
0.1::trusts('26522','41691').
0.1::trusts('26522','53818').

person('26522').
person('47075').
person('18343').
person('47077').
person('9543').
person('33392').
person('12100').
person('28541').
person('31987').
person('12781').
person('14420').
person('28116').
person('33262').
person('41691').
person('53818').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('26522')).
query(buys('47075')).
query(buys('18343')).
query(buys('47077')).
query(buys('9543')).
query(buys('33392')).
query(buys('12100')).
query(buys('28541')).
query(buys('31987')).
query(buys('12781')).
query(buys('14420')).
query(buys('28116')).
query(buys('33262')).
query(buys('41691')).
query(buys('53818')).
