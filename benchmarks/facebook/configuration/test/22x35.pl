10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('9101','8336').
0.19::trusts('9102','8336').
0.19::trusts('9112','8336').
0.1::trusts('9107','8336').
0.1::trusts('24715','8336').
0.271::trusts('9110','8336').
0.1::trusts('9111','8336').
0.19::trusts('8336','9101').
0.814697981114816::trusts('9102','9101').
0.19::trusts('9110','9101').
0.864914828232701::trusts('9103','9101').
0.1::trusts('8336','9102').
0.833228183003334::trusts('9101','9102').
0.1::trusts('9937','9102').
0.1::trusts('38834','9102').
0.271::trusts('8336','9112').
0.19::trusts('9101','9112').
0.1::trusts('7483','9112').
0.271::trusts('8336','24715').
0.1::trusts('9111','24715').
0.1::trusts('43845','24715').
0.1::trusts('43846','24715').
0.40951::trusts('8336','9110').
0.19::trusts('9101','9110').
0.1::trusts('9112','9110').
0.1::trusts('9107','9110').
0.1::trusts('8336','9111').
0.1::trusts('24715','9111').
0.19::trusts('8336','9103').
0.920233556923127::trusts('9101','9103').
0.1::trusts('50497','9103').
0.1::trusts('9102','9937').
0.1::trusts('9102','38834').
0.1::trusts('24715','43846').
0.1::trusts('31871','3755').
0.1::trusts('9103','31871').
0.19::trusts('9106','31871').
0.1::trusts('9108','31871').
0.1::trusts('8336','9106').
0.1::trusts('9108','9106').
0.1::trusts('8336','9108').
0.1::trusts('9106','9108').
0.1::trusts('31871','47101').
0.19::trusts('47104','47101').
0.1::trusts('47101','47104').
0.1::trusts('9103','5822').

person('8336').
person('9101').
person('9102').
person('9112').
person('9107').
person('24715').
person('9110').
person('9111').
person('9103').
person('9937').
person('38834').
person('7483').
person('43845').
person('43846').
person('50497').
person('3755').
person('31871').
person('9106').
person('9108').
person('47101').
person('47104').
person('5822').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8336')).
query(buys('9101')).
query(buys('9102')).
query(buys('9112')).
query(buys('9107')).
query(buys('24715')).
query(buys('9110')).
query(buys('9111')).
query(buys('9103')).
query(buys('9937')).
query(buys('38834')).
query(buys('7483')).
query(buys('43845')).
query(buys('43846')).
query(buys('50497')).
query(buys('3755')).
query(buys('31871')).
query(buys('9106')).
query(buys('9108')).
query(buys('47101')).
query(buys('47104')).
query(buys('5822')).
