10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.7458134171671::trusts('2497','5555').
0.19::trusts('13321','5555').
0.19::trusts('16185','5555').
0.3439::trusts('4349','5555').
0.1::trusts('5555','13321').
0.3439::trusts('16185','13321').
0.1::trusts('16189','13321').
0.1::trusts('5555','16185').
0.40951::trusts('13321','16185').
0.1::trusts('13122','16185').
0.271::trusts('5555','4349').
0.271::trusts('13122','4349').
0.1::trusts('16889','4349').
0.1::trusts('13321','16189').
0.1::trusts('47032','16189').
0.271::trusts('4349','13122').
0.1::trusts('16889','13122').
0.1::trusts('15903','13122').
0.3439::trusts('4349','16889').
0.19::trusts('13122','16889').
0.1::trusts('13122','15903').
0.271::trusts('37688','15903').
0.19::trusts('34289','15903').
0.19::trusts('15903','37688').
0.271::trusts('15903','34289').
0.1::trusts('37189','34289').
0.271::trusts('18062','34289').
0.19::trusts('48574','34289').
0.1::trusts('41132','34289').
0.271::trusts('18058','4344').
0.271::trusts('18062','4344').
0.19::trusts('4344','18058').
0.271::trusts('4344','18062').
0.271::trusts('34289','18062').
0.3439::trusts('34289','37189').
0.271::trusts('16189','47032').
0.1::trusts('34289','48574').
0.271::trusts('34289','41132').
0.1::trusts('4349','21115').
0.19::trusts('13122','21115').
0.1::trusts('34289','21115').
0.19::trusts('10367','21115').
0.1::trusts('16889','5595').
0.19::trusts('37189','32845').
0.1::trusts('34289','32845').
0.19::trusts('16189','17687').
0.1::trusts('18062','51072').

person('5555').
person('2497').
person('13321').
person('16185').
person('4349').
person('16189').
person('13122').
person('16889').
person('15903').
person('37688').
person('34289').
person('4344').
person('18058').
person('18062').
person('37189').
person('47032').
person('48574').
person('41132').
person('21115').
person('10367').
person('5595').
person('32845').
person('17687').
person('51072').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5555')).
query(buys('2497')).
query(buys('13321')).
query(buys('16185')).
query(buys('4349')).
query(buys('16189')).
query(buys('13122')).
query(buys('16889')).
query(buys('15903')).
query(buys('37688')).
query(buys('34289')).
query(buys('4344')).
query(buys('18058')).
query(buys('18062')).
query(buys('37189')).
query(buys('47032')).
query(buys('48574')).
query(buys('41132')).
query(buys('21115')).
query(buys('10367')).
query(buys('5595')).
query(buys('32845')).
query(buys('17687')).
query(buys('51072')).
