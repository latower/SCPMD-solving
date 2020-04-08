10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('31984','20317').
0.468559::trusts('35839','20317').
0.3439::trusts('31984','35824').
0.19::trusts('35839','41809').
0.1::trusts('35839','6521').
0.1::trusts('36099','6521').
0.1::trusts('6521','36099').
0.1::trusts('35839','45296').
0.5217031::trusts('35839','35765').
0.1::trusts('20317','55045').
0.911370618803475::trusts('35839','41811').
0.271::trusts('41809','41811').
0.19::trusts('35839','40129').
0.19::trusts('31984','35840').
0.19::trusts('35839','38952').
0.1::trusts('36099','47499').

person('20317').
person('31984').
person('35839').
person('35824').
person('41809').
person('6521').
person('36099').
person('45296').
person('35765').
person('55045').
person('41811').
person('40129').
person('35840').
person('38952').
person('47499').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20317')).
query(buys('31984')).
query(buys('35839')).
query(buys('35824')).
query(buys('41809')).
query(buys('6521')).
query(buys('36099')).
query(buys('45296')).
query(buys('35765')).
query(buys('55045')).
query(buys('41811')).
query(buys('40129')).
query(buys('35840')).
query(buys('38952')).
query(buys('47499')).
