10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('33857','14422').
0.833228183003334::trusts('139','14422').
0.19::trusts('35095','14422').
0.271::trusts('48282','14422').
0.1::trusts('14422','33857').
0.19::trusts('33854','33857').
0.1::trusts('53915','33857').
0.814697981114816::trusts('14422','139').
0.40951::trusts('14422','35095').
0.271::trusts('14422','48282').
0.1::trusts('33857','48282').
0.1::trusts('33854','48282').
0.1::trusts('29009','48282').
0.1::trusts('33857','33854').
0.19::trusts('33857','53915').
0.1::trusts('48282','29009').
0.1::trusts('61807','29009').
0.1::trusts('29008','29009').
0.1::trusts('35578','29009').
0.1::trusts('33857','52477').
0.1::trusts('46495','52477').
0.19::trusts('33857','46495').
0.1::trusts('52477','46495').
0.1::trusts('53601','46495').
0.1::trusts('33857','53601').
0.1::trusts('52477','53601').
0.1::trusts('46495','53601').
0.1::trusts('33857','61549').

person('14422').
person('33857').
person('139').
person('35095').
person('48282').
person('33854').
person('53915').
person('29009').
person('61807').
person('29008').
person('35578').
person('52477').
person('46495').
person('53601').
person('61549').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('14422')).
query(buys('33857')).
query(buys('139')).
query(buys('35095')).
query(buys('48282')).
query(buys('33854')).
query(buys('53915')).
query(buys('29009')).
query(buys('61807')).
query(buys('29008')).
query(buys('35578')).
query(buys('52477')).
query(buys('46495')).
query(buys('53601')).
query(buys('61549')).
