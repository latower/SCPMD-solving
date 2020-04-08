10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.612579511::trusts('2990','2112').
0.19::trusts('29281','2112').
0.3439::trusts('288','2112').
0.1::trusts('3001','2112').
0.5217031::trusts('2112','288').
0.1::trusts('11669','288').
0.1::trusts('6037','288').
0.1::trusts('4528','288').
0.271::trusts('2112','3001').
0.1::trusts('2990','3001').
0.1::trusts('288','11669').
0.1::trusts('45067','11669').
0.19::trusts('56037','11669').
0.1::trusts('56516','11669').
0.1::trusts('6037','11669').
0.1::trusts('45893','11669').
0.1::trusts('56515','11669').
0.19::trusts('11669','45067').
0.19::trusts('11669','56037').
0.271::trusts('11669','56516').
0.1::trusts('11669','6037').
0.19::trusts('288','6037').
0.19::trusts('2990','4531').
0.271::trusts('2990','4528').
0.1::trusts('2112','2989').

person('2112').
person('2990').
person('29281').
person('288').
person('3001').
person('11669').
person('45067').
person('56037').
person('56516').
person('6037').
person('45893').
person('56515').
person('4531').
person('4528').
person('2989').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2112')).
query(buys('2990')).
query(buys('29281')).
query(buys('288')).
query(buys('3001')).
query(buys('11669')).
query(buys('45067')).
query(buys('56037')).
query(buys('56516')).
query(buys('6037')).
query(buys('45893')).
query(buys('56515')).
query(buys('4531')).
query(buys('4528')).
query(buys('2989')).
