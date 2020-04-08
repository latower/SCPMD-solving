10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.612579511::trusts('13920','8756').
0.1::trusts('11749','8756').
0.1::trusts('27268','8756').
0.1::trusts('13935','8756').
0.1::trusts('4785','13920').
0.1::trusts('5557','13920').
0.1::trusts('11749','13920').
0.19::trusts('33238','13920').
0.1::trusts('27269','13920').
0.40951::trusts('26825','13920').
0.56953279::trusts('33692','13920').
0.1::trusts('4785','11749').
0.40951::trusts('13920','11749').
0.19::trusts('26825','11749').
0.1::trusts('27268','11749').
0.1::trusts('11749','27268').
0.19::trusts('4785','13935').
0.271::trusts('5557','13935').
0.1::trusts('13920','13935').
0.271::trusts('13920','33238').
0.1::trusts('13927','33238').
0.1::trusts('13935','33238').
0.19::trusts('13920','27269').
0.19::trusts('13928','27269').
0.3439::trusts('13920','26825').
0.271::trusts('11749','26825').
0.77123207545039::trusts('13920','33692').
0.1::trusts('40814','33692').
0.1::trusts('33238','13927').
0.1::trusts('27269','13928').
0.1::trusts('33692','40814').
0.1::trusts('4785','17644').
0.56953279::trusts('4785','7060').
0.19::trusts('11749','16696').
0.1::trusts('5557','21730').
0.19::trusts('17644','45910').

person('8756').
person('13920').
person('11749').
person('27268').
person('13935').
person('4785').
person('5557').
person('33238').
person('27269').
person('26825').
person('33692').
person('13927').
person('13928').
person('40814').
person('17644').
person('7060').
person('16696').
person('21730').
person('45910').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8756')).
query(buys('13920')).
query(buys('11749')).
query(buys('27268')).
query(buys('13935')).
query(buys('4785')).
query(buys('5557')).
query(buys('33238')).
query(buys('27269')).
query(buys('26825')).
query(buys('33692')).
query(buys('13927')).
query(buys('13928')).
query(buys('40814')).
query(buys('17644')).
query(buys('7060')).
query(buys('16696')).
query(buys('21730')).
query(buys('45910')).
