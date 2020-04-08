10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('23906','20939').
0.271::trusts('11423','20939').
0.1::trusts('19654','20939').
0.1::trusts('50802','20939').
0.1::trusts('58088','20939').
0.271::trusts('50464','20939').
0.1::trusts('11443','20939').
0.1::trusts('20939','23906').
0.271::trusts('20939','11423').
0.1::trusts('50480','11423').
0.1::trusts('20939','19654').
0.1::trusts('46747','19654').
0.19::trusts('54779','19654').
0.1::trusts('20939','50802').
0.19::trusts('20939','58088').
0.3439::trusts('20939','50464').
0.1::trusts('42966','50464').
0.1::trusts('54850','50464').
0.1::trusts('20939','11443').
0.1::trusts('19654','54779').
0.1::trusts('58244','54779').
0.40951::trusts('59882','54779').
0.1::trusts('50464','42966').
0.19::trusts('50464','54850').
0.1::trusts('54779','58244').
0.3439::trusts('54779','59882').
0.1::trusts('20939','63316').
0.1::trusts('54779','47073').
0.1::trusts('54782','47073').
0.1::trusts('39738','54782').
0.1::trusts('54782','39738').
0.1::trusts('19654','60080').

person('20939').
person('23906').
person('11423').
person('19654').
person('50802').
person('58088').
person('50464').
person('11443').
person('50480').
person('46747').
person('54779').
person('42966').
person('54850').
person('58244').
person('59882').
person('63316').
person('47073').
person('54782').
person('39738').
person('60080').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20939')).
query(buys('23906')).
query(buys('11423')).
query(buys('19654')).
query(buys('50802')).
query(buys('58088')).
query(buys('50464')).
query(buys('11443')).
query(buys('50480')).
query(buys('46747')).
query(buys('54779')).
query(buys('42966')).
query(buys('54850')).
query(buys('58244')).
query(buys('59882')).
query(buys('63316')).
query(buys('47073')).
query(buys('54782')).
query(buys('39738')).
query(buys('60080')).
