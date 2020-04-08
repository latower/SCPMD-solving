10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('10567','18787').
0.3439::trusts('18787','10567').
0.1::trusts('14623','10567').
0.271::trusts('8813','10567').
0.271::trusts('54265','10567').
0.1::trusts('22658','10567').
0.1::trusts('55299','46519').
0.1::trusts('46519','55299').
0.1::trusts('54265','55299').
0.1::trusts('27986','19445').
0.1::trusts('19445','27986').
0.1::trusts('53262','27986').
0.1::trusts('7324','14623').
0.1::trusts('10567','14623').
0.19::trusts('48399','14623').
0.3439::trusts('24593','14623').
0.1::trusts('14623','7324').
0.19::trusts('14623','48399').
0.271::trusts('14623','24593').
0.1::trusts('54265','54264').
0.1::trusts('54264','54265').
0.19::trusts('10567','54265').
0.1::trusts('53262','54265').
0.1::trusts('55299','54265').
0.271::trusts('10567','8813').
0.1::trusts('20020','8813').
0.1::trusts('61486','8813').
0.1::trusts('10567','22658').
0.1::trusts('27986','53262').
0.271::trusts('54265','53262').
0.1::trusts('18787','20020').
0.1::trusts('8813','20020').
0.19::trusts('8813','61486').

person('18787').
person('10567').
person('46519').
person('55299').
person('19445').
person('27986').
person('14623').
person('7324').
person('48399').
person('24593').
person('54264').
person('54265').
person('8813').
person('22658').
person('53262').
person('20020').
person('61486').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18787')).
query(buys('10567')).
query(buys('46519')).
query(buys('55299')).
query(buys('19445')).
query(buys('27986')).
query(buys('14623')).
query(buys('7324')).
query(buys('48399')).
query(buys('24593')).
query(buys('54264')).
query(buys('54265')).
query(buys('8813')).
query(buys('22658')).
query(buys('53262')).
query(buys('20020')).
query(buys('61486')).
