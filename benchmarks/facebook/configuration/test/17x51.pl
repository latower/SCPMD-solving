10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('45200','13696').
0.999140495544283::trusts('45514','13696').
0.1::trusts('39544','13696').
0.1::trusts('42708','13696').
0.40951::trusts('32477','13696').
0.999967208149521::trusts('13696','45514').
0.1::trusts('40043','45514').
0.271::trusts('13696','39544').
0.19::trusts('13696','42708').
0.19::trusts('13696','32477').
0.40951::trusts('45200','32477').
0.19::trusts('33395','32477').
0.3439::trusts('51882','32477').
0.271::trusts('46188','10845').
0.3439::trusts('10845','46188').
0.271::trusts('33395','46188').
0.1::trusts('13696','40043').
0.1::trusts('45514','40043').
0.3439::trusts('32477','33395').
0.3439::trusts('46188','33395').
0.5217031::trusts('32477','51882').
0.1::trusts('13696','30229').
0.1::trusts('45200','32971').
0.1::trusts('40043','32971').
0.1::trusts('51882','27887').
0.1::trusts('32477','58106').
0.271::trusts('32477','63298').
0.1::trusts('45200','45199').

person('13696').
person('45200').
person('45514').
person('39544').
person('42708').
person('32477').
person('10845').
person('46188').
person('40043').
person('33395').
person('51882').
person('30229').
person('32971').
person('27887').
person('58106').
person('63298').
person('45199').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13696')).
query(buys('45200')).
query(buys('45514')).
query(buys('39544')).
query(buys('42708')).
query(buys('32477')).
query(buys('10845')).
query(buys('46188')).
query(buys('40043')).
query(buys('33395')).
query(buys('51882')).
query(buys('30229')).
query(buys('32971')).
query(buys('27887')).
query(buys('58106')).
query(buys('63298')).
query(buys('45199')).
