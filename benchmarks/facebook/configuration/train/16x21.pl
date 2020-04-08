10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('53707','17622').
0.1::trusts('61518','17622').
0.1::trusts('46916','17622').
0.1::trusts('56098','17622').
0.19::trusts('17622','53707').
0.19::trusts('59374','53707').
0.19::trusts('17622','61518').
0.19::trusts('17622','46916').
0.271::trusts('38644','46916').
0.1::trusts('49766','46916').
0.1::trusts('17622','56098').
0.19::trusts('53707','59374').
0.271::trusts('46916','38644').
0.19::trusts('57073','38644').
0.1::trusts('34134','38644').
0.1::trusts('38155','38644').
0.19::trusts('46916','49766').
0.3439::trusts('57072','57073').
0.19::trusts('38644','57073').
0.40951::trusts('57073','57072').
0.1::trusts('34134','57072').
0.1::trusts('57072','34134').
0.1::trusts('17622','13963').
0.1::trusts('38644','32245').
0.1::trusts('38155','54121').
0.1::trusts('17622','63196').

person('17622').
person('53707').
person('61518').
person('46916').
person('56098').
person('59374').
person('38644').
person('49766').
person('57073').
person('57072').
person('34134').
person('38155').
person('13963').
person('32245').
person('54121').
person('63196').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17622')).
query(buys('53707')).
query(buys('61518')).
query(buys('46916')).
query(buys('56098')).
query(buys('59374')).
query(buys('38644')).
query(buys('49766')).
query(buys('57073')).
query(buys('57072')).
query(buys('34134')).
query(buys('38155')).
query(buys('13963')).
query(buys('32245')).
query(buys('54121')).
query(buys('63196')).
