10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('13713','4662').
0.19::trusts('4268','4662').
0.19::trusts('4051','4662').
0.271::trusts('5812','4662').
0.3439::trusts('4662','13713').
0.19::trusts('4662','4268').
0.468559::trusts('4271','4268').
0.1::trusts('4270','4268').
0.1::trusts('21713','4268').
0.19::trusts('4662','4051').
0.19::trusts('4048','4051').
0.19::trusts('4662','5812').
0.1::trusts('45822','5812').
0.1::trusts('50237','5812').
0.19::trusts('63866','5812').
0.40951::trusts('4268','4271').
0.19::trusts('4270','4271').
0.271::trusts('21713','4271').
0.1::trusts('4268','4270').
0.468559::trusts('4271','4270').
0.19::trusts('4268','21713').
0.833228183003334::trusts('4271','21713').
0.1::trusts('4051','4048').
0.19::trusts('5812','45822').
0.1::trusts('5812','50237').
0.1::trusts('4051','14920').
0.1::trusts('13713','15560').
0.1::trusts('4662','12501').

person('4662').
person('13713').
person('4268').
person('4051').
person('5812').
person('4271').
person('4270').
person('21713').
person('4048').
person('45822').
person('50237').
person('63866').
person('14920').
person('15560').
person('12501').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4662')).
query(buys('13713')).
query(buys('4268')).
query(buys('4051')).
query(buys('5812')).
query(buys('4271')).
query(buys('4270')).
query(buys('21713')).
query(buys('4048')).
query(buys('45822')).
query(buys('50237')).
query(buys('63866')).
query(buys('14920')).
query(buys('15560')).
query(buys('12501')).
