10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6946','9654').
0.19::trusts('75','9654').
0.1::trusts('9662','9654').
0.1::trusts('9655','9654').
0.1::trusts('9656','9654').
0.1::trusts('6946','75').
0.271::trusts('9654','75').
0.271::trusts('9662','75').
0.19::trusts('9655','75').
0.271::trusts('9656','75').
0.271::trusts('75','9662').
0.19::trusts('9655','9662').
0.271::trusts('9654','9655').
0.271::trusts('9662','9655').
0.19::trusts('9656','9655').
0.1::trusts('6946','9656').
0.1::trusts('9654','9656').
0.19::trusts('75','9656').
0.3439::trusts('9655','9656').
0.1::trusts('30769','9656').
0.1::trusts('26898','6947').
0.1::trusts('6947','26898').
0.19::trusts('6946','6140').
0.1::trusts('6142','6140').
0.1::trusts('6946','6142').
0.271::trusts('6947','6142').
0.19::trusts('6140','6142').
0.1::trusts('6937','6142').
0.19::trusts('6946','37933').
0.1::trusts('75','9658').
0.1::trusts('9654','28020').
0.19::trusts('6946','12480').

person('9654').
person('6946').
person('75').
person('9662').
person('9655').
person('9656').
person('6947').
person('26898').
person('30769').
person('6140').
person('6142').
person('6937').
person('37933').
person('9658').
person('28020').
person('12480').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9654')).
query(buys('6946')).
query(buys('75')).
query(buys('9662')).
query(buys('9655')).
query(buys('9656')).
query(buys('6947')).
query(buys('26898')).
query(buys('30769')).
query(buys('6140')).
query(buys('6142')).
query(buys('6937')).
query(buys('37933')).
query(buys('9658')).
query(buys('28020')).
query(buys('12480')).
