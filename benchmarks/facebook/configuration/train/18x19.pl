10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('20139','12661').
0.1::trusts('21204','12661').
0.1::trusts('32014','12661').
0.19::trusts('32227','12661').
0.40951::trusts('12661','20139').
0.1::trusts('5150','20139').
0.1::trusts('30522','20139').
0.1::trusts('12661','32227').
0.1::trusts('26599','32227').
0.1::trusts('46398','32227').
0.1::trusts('12661','5150').
0.68618940391::trusts('20139','5150').
0.19::trusts('20139','30522').
0.271::trusts('36034','30522').
0.1::trusts('28662','13926').
0.1::trusts('37341','13926').
0.1::trusts('37343','13926').
0.271::trusts('13926','28662').
0.271::trusts('36034','28662').
0.19::trusts('13926','37341').
0.1::trusts('13926','37343').
0.1::trusts('28662','36034').
0.1::trusts('30522','36034').
0.1::trusts('17192','36034').
0.271::trusts('36034','17192').
0.19::trusts('32227','26599').
0.19::trusts('32227','46398').
0.1::trusts('28662','58258').
0.1::trusts('20139','29471').
0.1::trusts('32014','43424').

person('12661').
person('20139').
person('21204').
person('32014').
person('32227').
person('5150').
person('30522').
person('13926').
person('28662').
person('37341').
person('37343').
person('36034').
person('17192').
person('26599').
person('46398').
person('58258').
person('29471').
person('43424').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12661')).
query(buys('20139')).
query(buys('21204')).
query(buys('32014')).
query(buys('32227')).
query(buys('5150')).
query(buys('30522')).
query(buys('13926')).
query(buys('28662')).
query(buys('37341')).
query(buys('37343')).
query(buys('36034')).
query(buys('17192')).
query(buys('26599')).
query(buys('46398')).
query(buys('58258')).
query(buys('29471')).
query(buys('43424')).
