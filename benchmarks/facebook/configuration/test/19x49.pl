10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('32867','32531').
0.56953279::trusts('29795','32531').
0.1::trusts('29558','32531').
0.3439::trusts('32531','32867').
0.19::trusts('32870','32867').
0.612579511::trusts('32531','29795').
0.3439::trusts('29242','29795').
0.19::trusts('11599','29795').
0.271::trusts('8241','29795').
0.1::trusts('49560','29795').
0.19::trusts('32531','29558').
0.19::trusts('29559','29558').
0.1::trusts('8241','24832').
0.1::trusts('44918','24832').
0.1::trusts('31542','24832').
0.3439::trusts('32864','24832').
0.3439::trusts('42674','24832').
0.271::trusts('24832','8241').
0.19::trusts('29242','8241').
0.271::trusts('29795','8241').
0.1::trusts('24832','44918').
0.1::trusts('24832','31542').
0.3439::trusts('24832','32864').
0.3439::trusts('24832','42674').
0.3439::trusts('29795','29242').
0.271::trusts('8241','29242').
0.19::trusts('29795','11599').
0.1::trusts('46874','11599').
0.19::trusts('11599','46874').
0.1::trusts('29795','49560').
0.1::trusts('29558','29559').
0.1::trusts('32531','45169').
0.1::trusts('29558','46956').
0.1::trusts('32870','16484').

person('32531').
person('32867').
person('29795').
person('29558').
person('32870').
person('24832').
person('8241').
person('44918').
person('31542').
person('32864').
person('42674').
person('29242').
person('11599').
person('46874').
person('49560').
person('29559').
person('45169').
person('46956').
person('16484').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('32531')).
query(buys('32867')).
query(buys('29795')).
query(buys('29558')).
query(buys('32870')).
query(buys('24832')).
query(buys('8241')).
query(buys('44918')).
query(buys('31542')).
query(buys('32864')).
query(buys('42674')).
query(buys('29242')).
query(buys('11599')).
query(buys('46874')).
query(buys('49560')).
query(buys('29559')).
query(buys('45169')).
query(buys('46956')).
query(buys('16484')).
