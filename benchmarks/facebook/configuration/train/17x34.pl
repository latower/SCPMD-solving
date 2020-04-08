10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4701','1977').
0.77123207545039::trusts('18808','1977').
0.1::trusts('469','1977').
0.1::trusts('14193','1977').
0.1::trusts('1977','4701').
0.1::trusts('14193','4701').
0.1::trusts('6052','4701').
0.1::trusts('6539','4701').
0.468559::trusts('1977','18808').
0.3439::trusts('42667','18808').
0.1::trusts('14055','18808').
0.1::trusts('50050','18808').
0.1::trusts('1977','469').
0.1::trusts('1977','14193').
0.19::trusts('4701','14193').
0.1::trusts('4701','6052').
0.890581010868488::trusts('4840','6052').
0.19::trusts('5299','6052').
0.1::trusts('4701','6539').
0.1::trusts('1977','42667').
0.5217031::trusts('18808','42667').
0.1::trusts('18808','14055').
0.1::trusts('42667','50050').
0.920233556923127::trusts('6052','4840').
0.1::trusts('7296','5299').
0.3439::trusts('6052','5299').
0.1::trusts('4701','9097').
0.271::trusts('6052','17389').
0.1::trusts('1977','760').
0.1::trusts('18808','760').
0.468559::trusts('26328','760').
0.1::trusts('760','26328').

person('1977').
person('4701').
person('18808').
person('469').
person('14193').
person('6052').
person('6539').
person('42667').
person('14055').
person('50050').
person('4840').
person('5299').
person('7296').
person('9097').
person('17389').
person('760').
person('26328').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1977')).
query(buys('4701')).
query(buys('18808')).
query(buys('469')).
query(buys('14193')).
query(buys('6052')).
query(buys('6539')).
query(buys('42667')).
query(buys('14055')).
query(buys('50050')).
query(buys('4840')).
query(buys('5299')).
query(buys('7296')).
query(buys('9097')).
query(buys('17389')).
query(buys('760')).
query(buys('26328')).
