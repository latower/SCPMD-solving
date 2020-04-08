10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('38929','29356').
0.1::trusts('2981','29356').
0.1::trusts('29356','38929').
0.1::trusts('38939','38929').
0.1::trusts('2981','38929').
0.3439::trusts('38939','1572').
0.5217031::trusts('42403','1572').
0.19::trusts('1572','38939').
0.271::trusts('42403','38939').
0.1::trusts('48401','38939').
0.1::trusts('38929','38939').
0.19::trusts('2981','38939').
0.1::trusts('1572','42403').
0.1::trusts('38939','42403').
0.19::trusts('2981','42403').
0.271::trusts('59651','42403').
0.19::trusts('27783','42403').
0.1::trusts('59186','42403').
0.1::trusts('45581','42403').
0.271::trusts('42403','59651').
0.40951::trusts('42403','27783').
0.271::trusts('42403','59186').
0.19::trusts('42403','45581').
0.1::trusts('19596','45581').
0.1::trusts('60243','45581').
0.1::trusts('51694','58183').
0.19::trusts('19596','51694').
0.1::trusts('38939','48009').
0.1::trusts('48401','48009').

person('29356').
person('38929').
person('2981').
person('1572').
person('38939').
person('42403').
person('48401').
person('59651').
person('27783').
person('59186').
person('45581').
person('19596').
person('60243').
person('58183').
person('51694').
person('48009').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29356')).
query(buys('38929')).
query(buys('2981')).
query(buys('1572')).
query(buys('38939')).
query(buys('42403')).
query(buys('48401')).
query(buys('59651')).
query(buys('27783')).
query(buys('59186')).
query(buys('45581')).
query(buys('19596')).
query(buys('60243')).
query(buys('58183')).
query(buys('51694')).
query(buys('48009')).
