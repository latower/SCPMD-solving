10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('41402','19236').
0.19::trusts('19236','41402').
0.1::trusts('41046','41402').
0.271::trusts('26455','41402').
0.1::trusts('48538','41402').
0.1::trusts('41403','41402').
0.19::trusts('47248','41402').
0.1::trusts('63887','41402').
0.3439::trusts('41402','41046').
0.1::trusts('25145','41046').
0.1::trusts('41405','41046').
0.1::trusts('41403','41046').
0.5217031::trusts('41046','25145').
0.19::trusts('41046','41405').
0.1::trusts('47248','41405').
0.1::trusts('41046','41403').
0.1::trusts('41402','26455').
0.271::trusts('34503','26455').
0.5217031::trusts('48978','26455').
0.1::trusts('62847','26455').
0.19::trusts('48538','26455').
0.1::trusts('41402','48538').
0.19::trusts('26455','48538').
0.19::trusts('48978','48538').
0.19::trusts('41402','47248').
0.3439::trusts('26455','34503').
0.3439::trusts('26455','48978').
0.1::trusts('48538','48978').
0.1::trusts('46411','48978').
0.1::trusts('49959','48978').
0.271::trusts('26455','62847').
0.1::trusts('48978','46411').
0.1::trusts('26455','49959').
0.1::trusts('48978','49959').
0.19::trusts('26455','62846').
0.1::trusts('34503','63290').
0.1::trusts('41046','24189').
0.19::trusts('41402','28487').

person('19236').
person('41402').
person('41046').
person('25145').
person('41405').
person('41403').
person('26455').
person('48538').
person('47248').
person('63887').
person('34503').
person('48978').
person('62847').
person('46411').
person('49959').
person('62846').
person('63290').
person('24189').
person('28487').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19236')).
query(buys('41402')).
query(buys('41046')).
query(buys('25145')).
query(buys('41405')).
query(buys('41403')).
query(buys('26455')).
query(buys('48538')).
query(buys('47248')).
query(buys('63887')).
query(buys('34503')).
query(buys('48978')).
query(buys('62847')).
query(buys('46411')).
query(buys('49959')).
query(buys('62846')).
query(buys('63290')).
query(buys('24189')).
query(buys('28487')).
