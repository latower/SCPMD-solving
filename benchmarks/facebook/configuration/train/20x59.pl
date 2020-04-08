10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('27391','2786').
0.1::trusts('2786','27391').
0.19::trusts('19523','27391').
0.1::trusts('31675','27391').
0.1::trusts('33297','27391').
0.19::trusts('27391','19523').
0.19::trusts('37006','19523').
0.271::trusts('36201','19523').
0.1::trusts('32494','37006').
0.1::trusts('25257','37006').
0.1::trusts('19523','36201').
0.19::trusts('42837','36201').
0.3439::trusts('36200','36201').
0.1::trusts('31675','15262').
0.1::trusts('15262','31675').
0.1::trusts('32494','31675').
0.271::trusts('25257','31675').
0.1::trusts('37006','32494').
0.1::trusts('31675','32494').
0.1::trusts('25257','32494').
0.1::trusts('19523','25257').
0.1::trusts('15262','25257').
0.271::trusts('32494','25257').
0.271::trusts('31675','25257').
0.1::trusts('7136','25257').
0.1::trusts('2786','5098').
0.1::trusts('36201','42837').
0.6513215599::trusts('36201','36200').
0.1::trusts('2786','45071').
0.1::trusts('56608','7136').
0.1::trusts('27391','33304').
0.1::trusts('27391','37007').
0.1::trusts('2786','45073').
0.1::trusts('2786','23151').

person('2786').
person('27391').
person('19523').
person('37006').
person('36201').
person('15262').
person('31675').
person('33297').
person('32494').
person('25257').
person('5098').
person('42837').
person('36200').
person('45071').
person('7136').
person('33304').
person('56608').
person('37007').
person('45073').
person('23151').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2786')).
query(buys('27391')).
query(buys('19523')).
query(buys('37006')).
query(buys('36201')).
query(buys('15262')).
query(buys('31675')).
query(buys('33297')).
query(buys('32494')).
query(buys('25257')).
query(buys('5098')).
query(buys('42837')).
query(buys('36200')).
query(buys('45071')).
query(buys('7136')).
query(buys('33304')).
query(buys('56608')).
query(buys('37007')).
query(buys('45073')).
query(buys('23151')).
