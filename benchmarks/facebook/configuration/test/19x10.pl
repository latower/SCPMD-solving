10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21888','35290').
0.1::trusts('32265','35290').
0.1::trusts('35290','32265').
0.1::trusts('3969','32265').
0.1::trusts('6294','470').
0.1::trusts('453','470').
0.1::trusts('44994','470').
0.1::trusts('470','6294').
0.1::trusts('470','453').
0.1::trusts('466','453').
0.1::trusts('464','453').
0.1::trusts('453','466').
0.1::trusts('3969','466').
0.271::trusts('698','466').
0.612579511::trusts('455','466').
0.19::trusts('458','466').
0.19::trusts('464','466').
0.19::trusts('3970','3969').
0.271::trusts('466','3969').
0.19::trusts('12211','3969').
0.1::trusts('32265','3969').
0.1::trusts('3966','3969').
0.468559::trusts('466','698').
0.1::trusts('455','698').
0.3439::trusts('466','455').
0.40951::trusts('2177','455').
0.1::trusts('466','458').
0.1::trusts('466','464').
0.1::trusts('453','464').
0.1::trusts('3969','12211').
0.271::trusts('3970','3966').
0.1::trusts('466','2177').
0.468559::trusts('455','2177').
0.1::trusts('35290','11045').
0.271::trusts('3970','27998').

person('35290').
person('21888').
person('32265').
person('470').
person('6294').
person('453').
person('44994').
person('466').
person('3969').
person('698').
person('455').
person('458').
person('464').
person('12211').
person('3970').
person('3966').
person('2177').
person('11045').
person('27998').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35290')).
query(buys('21888')).
query(buys('32265')).
query(buys('470')).
query(buys('6294')).
query(buys('453')).
query(buys('44994')).
query(buys('466')).
query(buys('3969')).
query(buys('698')).
query(buys('455')).
query(buys('458')).
query(buys('464')).
query(buys('12211')).
query(buys('3970')).
query(buys('3966')).
query(buys('2177')).
query(buys('11045')).
query(buys('27998')).
