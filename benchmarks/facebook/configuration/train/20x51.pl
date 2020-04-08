10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('38282','50371').
0.468559::trusts('45787','50371').
0.19::trusts('50372','50371').
0.19::trusts('50371','38282').
0.19::trusts('50371','45787').
0.1::trusts('50372','45787').
0.1::trusts('37422','45787').
0.19::trusts('50371','50372').
0.40951::trusts('45787','50372').
0.814697981114816::trusts('26264','26263').
0.1::trusts('45788','26263').
0.794108867905351::trusts('26263','26264').
0.1::trusts('45788','26264').
0.1::trusts('26263','45788').
0.1::trusts('26264','45788').
0.1::trusts('37422','45788').
0.1::trusts('45791','45788').
0.1::trusts('45788','37422').
0.271::trusts('33612','37422').
0.271::trusts('45787','37422').
0.19::trusts('37424','37422').
0.1::trusts('26263','45791').
0.19::trusts('45788','45791').
0.3439::trusts('37422','33612').
0.1::trusts('37422','37424').
0.1::trusts('33612','44296').
0.271::trusts('26264','34636').
0.271::trusts('45787','35641').
0.1::trusts('33612','37423').
0.1::trusts('37422','37423').
0.1::trusts('45787','45790').
0.1::trusts('58413','49866').
0.1::trusts('38282','58413').
0.1::trusts('49866','58413').
0.1::trusts('45787','50375').
0.1::trusts('37422','50375').
0.1::trusts('50371','60783').

person('50371').
person('38282').
person('45787').
person('50372').
person('26263').
person('26264').
person('45788').
person('37422').
person('45791').
person('33612').
person('37424').
person('44296').
person('34636').
person('35641').
person('37423').
person('45790').
person('49866').
person('58413').
person('50375').
person('60783').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('50371')).
query(buys('38282')).
query(buys('45787')).
query(buys('50372')).
query(buys('26263')).
query(buys('26264')).
query(buys('45788')).
query(buys('37422')).
query(buys('45791')).
query(buys('33612')).
query(buys('37424')).
query(buys('44296')).
query(buys('34636')).
query(buys('35641')).
query(buys('37423')).
query(buys('45790')).
query(buys('49866')).
query(buys('58413')).
query(buys('50375')).
query(buys('60783')).
