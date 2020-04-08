10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('1775','993').
0.1::trusts('1407','1775').
0.271::trusts('993','1775').
0.1::trusts('1773','1775').
0.56953279::trusts('1407','1773').
0.19::trusts('1775','1773').
0.1::trusts('45120','1773').
0.1::trusts('1238','1773').
0.1::trusts('1773','45120').
0.1::trusts('1407','1238').
0.19::trusts('1773','1238').
0.1::trusts('8194','1238').
0.1::trusts('1238','8194').
0.19::trusts('1407','1768').
0.1::trusts('3325','1768').
0.3439::trusts('10016','1768').
0.1::trusts('4143','1768').
0.5217031::trusts('10016','3325').
0.1::trusts('63868','3325').
0.19::trusts('1768','10016').
0.1::trusts('3325','10016').
0.468559::trusts('1769','10016').
0.1::trusts('1768','4143').
0.271::trusts('1769','4143').
0.1::trusts('1407','1769').
0.1::trusts('1768','1769').
0.1::trusts('3325','1769').
0.3439::trusts('10016','1769').
0.1::trusts('4143','1769').
0.1::trusts('1238','16468').
0.1::trusts('1238','31994').
0.1::trusts('1775','37853').

person('993').
person('1775').
person('1773').
person('1407').
person('45120').
person('1238').
person('8194').
person('1768').
person('3325').
person('10016').
person('4143').
person('63868').
person('1769').
person('16468').
person('31994').
person('37853').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('993')).
query(buys('1775')).
query(buys('1773')).
query(buys('1407')).
query(buys('45120')).
query(buys('1238')).
query(buys('8194')).
query(buys('1768')).
query(buys('3325')).
query(buys('10016')).
query(buys('4143')).
query(buys('63868')).
query(buys('1769')).
query(buys('16468')).
query(buys('31994')).
query(buys('37853')).
