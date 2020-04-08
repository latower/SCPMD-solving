10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('24184','8312').
0.1::trusts('13801','8312').
0.19::trusts('8312','24184').
0.1::trusts('37384','24184').
0.19::trusts('8312','13801').
0.271::trusts('13805','13801').
0.271::trusts('46333','13801').
0.1::trusts('42889','13801').
0.3439::trusts('46339','13801').
0.1::trusts('46337','13801').
0.1::trusts('6008','13801').
0.40951::trusts('13801','13805').
0.5217031::trusts('13801','46333').
0.1::trusts('13801','42889').
0.1::trusts('10488','42889').
0.40951::trusts('13801','46339').
0.1::trusts('52762','46339').
0.3439::trusts('13801','46337').
0.19::trusts('13801','6008').
0.1::trusts('6012','6008').
0.1::trusts('42889','10488').
0.1::trusts('46339','52762').
0.1::trusts('17907','52762').
0.1::trusts('6008','6012').
0.19::trusts('53117','6012').
0.19::trusts('52762','17907').
0.1::trusts('24351','17907').
0.1::trusts('6012','53117').
0.19::trusts('13801','46334').
0.1::trusts('17907','34884').
0.1::trusts('6008','48957').
0.1::trusts('6012','22603').
0.1::trusts('53117','37862').

person('8312').
person('24184').
person('13801').
person('13805').
person('37384').
person('46333').
person('42889').
person('46339').
person('46337').
person('6008').
person('10488').
person('52762').
person('6012').
person('17907').
person('24351').
person('53117').
person('46334').
person('34884').
person('48957').
person('22603').
person('37862').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8312')).
query(buys('24184')).
query(buys('13801')).
query(buys('13805')).
query(buys('37384')).
query(buys('46333')).
query(buys('42889')).
query(buys('46339')).
query(buys('46337')).
query(buys('6008')).
query(buys('10488')).
query(buys('52762')).
query(buys('6012')).
query(buys('17907')).
query(buys('24351')).
query(buys('53117')).
query(buys('46334')).
query(buys('34884')).
query(buys('48957')).
query(buys('22603')).
query(buys('37862')).
