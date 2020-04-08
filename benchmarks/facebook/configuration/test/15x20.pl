10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('10600','6549').
0.19::trusts('6550','6549').
0.1::trusts('29610','6549').
0.19::trusts('6549','10600').
0.19::trusts('1397','10600').
0.271::trusts('15911','10600').
0.1::trusts('29603','10600').
0.19::trusts('6558','10600').
0.19::trusts('6549','6550').
0.1::trusts('10600','6550').
0.1::trusts('6558','6550').
0.1::trusts('21169','6550').
0.1::trusts('6549','29610').
0.1::trusts('6549','1397').
0.3439::trusts('10600','1397').
0.468559::trusts('21371','1397').
0.5217031::trusts('24840','1397').
0.271::trusts('10600','15911').
0.1::trusts('10600','29603').
0.1::trusts('6554','6558').
0.271::trusts('6550','21169').
0.271::trusts('1397','21371').
0.3439::trusts('24840','21371').
0.717570463519::trusts('1397','24840').
0.911370618803475::trusts('21371','24840').
0.3439::trusts('11528','24840').
0.271::trusts('24840','11528').
0.1::trusts('6558','6554').
0.1::trusts('6549','38444').
0.1::trusts('6549','29609').

person('6549').
person('10600').
person('6550').
person('29610').
person('1397').
person('15911').
person('29603').
person('6558').
person('21169').
person('21371').
person('24840').
person('11528').
person('6554').
person('38444').
person('29609').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6549')).
query(buys('10600')).
query(buys('6550')).
query(buys('29610')).
query(buys('1397')).
query(buys('15911')).
query(buys('29603')).
query(buys('6558')).
query(buys('21169')).
query(buys('21371')).
query(buys('24840')).
query(buys('11528')).
query(buys('6554')).
query(buys('38444')).
query(buys('29609')).
