10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('3049','346').
0.19::trusts('346','3049').
0.271::trusts('8063','3049').
0.271::trusts('7455','3049').
0.271::trusts('8063','22999').
0.1::trusts('45524','22999').
0.19::trusts('22999','8063').
0.271::trusts('3049','8063').
0.68618940391::trusts('20510','8063').
0.271::trusts('45524','8063').
0.1::trusts('39055','8063').
0.1::trusts('22999','45524').
0.271::trusts('8063','45524').
0.1::trusts('3049','7455').
0.3439::trusts('8063','20510').
0.3439::trusts('13536','20510').
0.1::trusts('24869','20510').
0.1::trusts('8063','39055').
0.1::trusts('25984','39055').
0.3439::trusts('20510','13536').
0.19::trusts('12102','13536').
0.1::trusts('13536','12102').
0.1::trusts('12101','12102').
0.1::trusts('39055','25984').
0.1::trusts('8063','24869').
0.19::trusts('20510','24869').
0.1::trusts('39055','24869').
0.1::trusts('39055','42917').
0.1::trusts('3049','46386').
0.1::trusts('22999','31661').

person('346').
person('3049').
person('22999').
person('8063').
person('45524').
person('7455').
person('20510').
person('39055').
person('13536').
person('12102').
person('25984').
person('24869').
person('12101').
person('42917').
person('46386').
person('31661').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('346')).
query(buys('3049')).
query(buys('22999')).
query(buys('8063')).
query(buys('45524')).
query(buys('7455')).
query(buys('20510')).
query(buys('39055')).
query(buys('13536')).
query(buys('12102')).
query(buys('25984')).
query(buys('24869')).
query(buys('12101')).
query(buys('42917')).
query(buys('46386')).
query(buys('31661')).
