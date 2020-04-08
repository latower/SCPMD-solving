10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('975','6774').
0.1::trusts('9389','6774').
0.19::trusts('6774','975').
0.468559::trusts('4827','975').
0.468559::trusts('1383','975').
0.19::trusts('6784','975').
0.5217031::trusts('6770','975').
0.3439::trusts('6776','975').
0.271::trusts('6774','9389').
0.612579511::trusts('9388','9389').
0.68618940391::trusts('21990','9389').
0.271::trusts('2659','9389').
0.3439::trusts('975','1383').
0.5217031::trusts('6770','1383').
0.468559::trusts('1383','6770').
0.271::trusts('975','6770').
0.1::trusts('6774','6784').
0.271::trusts('975','6784').
0.3439::trusts('975','6776').
0.1::trusts('2711','24841').
0.19::trusts('24841','2711').
0.19::trusts('6856','2711').
0.1::trusts('21990','2711').
0.3439::trusts('53185','2711').
0.1::trusts('2711','6856').
0.40951::trusts('18103','6856').
0.271::trusts('6856','18103').
0.612579511::trusts('9389','21990').
0.1::trusts('2711','21990').
0.1::trusts('9388','2659').
0.1::trusts('9389','2659').
0.1::trusts('975','2713').
0.1::trusts('6774','22266').
0.1::trusts('1383','6781').

person('6774').
person('975').
person('9389').
person('1383').
person('6770').
person('4827').
person('6784').
person('6776').
person('24841').
person('2711').
person('6856').
person('18103').
person('9388').
person('21990').
person('2659').
person('53185').
person('2713').
person('22266').
person('6781').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6774')).
query(buys('975')).
query(buys('9389')).
query(buys('1383')).
query(buys('6770')).
query(buys('4827')).
query(buys('6784')).
query(buys('6776')).
query(buys('24841')).
query(buys('2711')).
query(buys('6856')).
query(buys('18103')).
query(buys('9388')).
query(buys('21990')).
query(buys('2659')).
query(buys('53185')).
query(buys('2713')).
query(buys('22266')).
query(buys('6781')).
