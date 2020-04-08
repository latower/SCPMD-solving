10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6182','8330').
0.1::trusts('22128','8330').
0.1::trusts('8330','6182').
0.1::trusts('45109','6182').
0.271::trusts('34804','6182').
0.1::trusts('9605','6182').
0.271::trusts('8330','22128').
0.3439::trusts('38108','22128').
0.19::trusts('49436','22128').
0.1::trusts('6182','45109').
0.271::trusts('41055','34804').
0.19::trusts('6182','34804').
0.1::trusts('9605','34804').
0.1::trusts('38362','34804').
0.1::trusts('62697','34804').
0.271::trusts('34804','41055').
0.1::trusts('46090','41055').
0.1::trusts('51966','41055').
0.1::trusts('22418','41055').
0.1::trusts('45109','9605').
0.19::trusts('34804','9605').
0.19::trusts('6182','9605').
0.1::trusts('53978','9605').
0.1::trusts('34804','38362').
0.1::trusts('6182','38362').
0.1::trusts('45109','51966').
0.1::trusts('41055','51966').
0.40951::trusts('22128','38108').
0.1::trusts('22128','49436').
0.19::trusts('45109','55647').
0.19::trusts('53978','51730').
0.1::trusts('9605','9645').
0.1::trusts('41055','56018').

person('8330').
person('6182').
person('22128').
person('45109').
person('34804').
person('41055').
person('9605').
person('38362').
person('62697').
person('46090').
person('51966').
person('22418').
person('38108').
person('53978').
person('49436').
person('55647').
person('51730').
person('9645').
person('56018').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8330')).
query(buys('6182')).
query(buys('22128')).
query(buys('45109')).
query(buys('34804')).
query(buys('41055')).
query(buys('9605')).
query(buys('38362')).
query(buys('62697')).
query(buys('46090')).
query(buys('51966')).
query(buys('22418')).
query(buys('38108')).
query(buys('53978')).
query(buys('49436')).
query(buys('55647')).
query(buys('51730')).
query(buys('9645')).
query(buys('56018')).
