10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('31104','13953').
0.271::trusts('13953','31104').
0.271::trusts('20283','31104').
0.19::trusts('38664','31104').
0.1::trusts('40658','32676').
0.19::trusts('53350','32676').
0.1::trusts('32676','40658').
0.1::trusts('32959','40658').
0.19::trusts('32676','53350').
0.271::trusts('53456','53350').
0.56953279::trusts('20283','40437').
0.5217031::trusts('6356','40437').
0.19::trusts('30962','40437').
0.1::trusts('12551','40437').
0.19::trusts('60826','40437').
0.56953279::trusts('40437','20283').
0.271::trusts('31104','20283').
0.5217031::trusts('6356','20283').
0.1::trusts('32676','6356').
0.468559::trusts('40437','6356').
0.468559::trusts('20283','6356').
0.1::trusts('34409','6356').
0.271::trusts('6354','6356').
0.1::trusts('40658','6356').
0.40951::trusts('40437','30962').
0.19::trusts('32959','30962').
0.19::trusts('40437','12551').
0.1::trusts('40437','60826').
0.1::trusts('31104','25952').
0.19::trusts('31104','38664').
0.19::trusts('34409','22352').
0.1::trusts('22352','34409').
0.19::trusts('6356','34409').
0.271::trusts('6356','6354').
0.19::trusts('58872','6354').
0.1::trusts('30962','32959').
0.1::trusts('40658','32959').
0.19::trusts('6354','58872').
0.19::trusts('53350','53456').
0.1::trusts('40437','30822').

person('13953').
person('31104').
person('32676').
person('40658').
person('53350').
person('40437').
person('20283').
person('6356').
person('30962').
person('12551').
person('60826').
person('25952').
person('38664').
person('22352').
person('34409').
person('6354').
person('32959').
person('58872').
person('53456').
person('30822').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13953')).
query(buys('31104')).
query(buys('32676')).
query(buys('40658')).
query(buys('53350')).
query(buys('40437')).
query(buys('20283')).
query(buys('6356')).
query(buys('30962')).
query(buys('12551')).
query(buys('60826')).
query(buys('25952')).
query(buys('38664')).
query(buys('22352')).
query(buys('34409')).
query(buys('6354')).
query(buys('32959')).
query(buys('58872')).
query(buys('53456')).
query(buys('30822')).
