10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('50803','45533').
0.19::trusts('37906','45533').
0.1::trusts('45041','45533').
0.1::trusts('31429','45533').
0.1::trusts('45533','50803').
0.1::trusts('45533','37906').
0.271::trusts('63226','37906').
0.3439::trusts('38840','37906').
0.19::trusts('51919','37906').
0.1::trusts('48703','37906').
0.1::trusts('43333','37906').
0.1::trusts('59512','37906').
0.271::trusts('45533','45041').
0.6513215599::trusts('37906','63226').
0.271::trusts('37906','38840').
0.271::trusts('38839','38840').
0.3439::trusts('37906','51919').
0.19::trusts('37906','48703').
0.19::trusts('37906','43333').
0.1::trusts('37906','59512').
0.271::trusts('60747','59512').
0.271::trusts('38840','38839').
0.19::trusts('59512','60747').
0.1::trusts('37906','34368').
0.1::trusts('37906','29297').
0.1::trusts('62406','29297').
0.1::trusts('37906','16890').
0.1::trusts('37906','43331').
0.1::trusts('45533','59909').
0.1::trusts('45533','50358').
0.1::trusts('37906','63891').
0.1::trusts('34368','63891').

person('45533').
person('50803').
person('37906').
person('45041').
person('31429').
person('63226').
person('38840').
person('51919').
person('48703').
person('43333').
person('59512').
person('38839').
person('60747').
person('34368').
person('29297').
person('62406').
person('16890').
person('43331').
person('59909').
person('50358').
person('63891').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('45533')).
query(buys('50803')).
query(buys('37906')).
query(buys('45041')).
query(buys('31429')).
query(buys('63226')).
query(buys('38840')).
query(buys('51919')).
query(buys('48703')).
query(buys('43333')).
query(buys('59512')).
query(buys('38839')).
query(buys('60747')).
query(buys('34368')).
query(buys('29297')).
query(buys('62406')).
query(buys('16890')).
query(buys('43331')).
query(buys('59909')).
query(buys('50358')).
query(buys('63891')).
