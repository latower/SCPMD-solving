10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('26469','22623').
0.1::trusts('22623','26469').
0.1::trusts('35105','26469').
0.1::trusts('35737','26469').
0.1::trusts('26469','35105').
0.271::trusts('19143','35105').
0.1::trusts('26469','35737').
0.19::trusts('19143','33484').
0.19::trusts('33484','19143').
0.1::trusts('35105','19143').
0.1::trusts('33727','19143').
0.1::trusts('33484','33727').
0.1::trusts('19143','33727').
0.19::trusts('32722','33727').
0.271::trusts('33727','32722').
0.1::trusts('17989','32722').
0.1::trusts('31318','32722').
0.1::trusts('32722','31318').
0.1::trusts('31318','33412').
0.1::trusts('52316','33412').
0.1::trusts('19143','33728').
0.1::trusts('52316','47468').
0.1::trusts('52316','56033').

person('22623').
person('26469').
person('35105').
person('35737').
person('33484').
person('19143').
person('33727').
person('32722').
person('31318').
person('17989').
person('33412').
person('52316').
person('33728').
person('47468').
person('56033').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22623')).
query(buys('26469')).
query(buys('35105')).
query(buys('35737')).
query(buys('33484')).
query(buys('19143')).
query(buys('33727')).
query(buys('32722')).
query(buys('31318')).
query(buys('17989')).
query(buys('33412')).
query(buys('52316')).
query(buys('33728')).
query(buys('47468')).
query(buys('56033')).
