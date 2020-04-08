10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2285','4353').
0.1::trusts('3486','4353').
0.1::trusts('30407','4353').
0.3439::trusts('4353','2285').
0.3439::trusts('3486','2285').
0.920233556923127::trusts('1267','2285').
0.1::trusts('15105','2285').
0.40951::trusts('4353','3486').
0.1::trusts('8514','3486').
0.271::trusts('6854','3486').
0.19::trusts('4353','30407').
0.19::trusts('3486','8514').
0.1::trusts('6854','8514').
0.19::trusts('3486','6854').
0.1::trusts('3486','23465').
0.1::trusts('25456','23465').
0.271::trusts('31109','23465').
0.3439::trusts('4353','25456').
0.1::trusts('23465','25456').
0.1::trusts('3486','25456').
0.3439::trusts('5976','25456').
0.271::trusts('23465','31109').
0.947665236697264::trusts('2285','1267').
0.19::trusts('2285','15105').
0.19::trusts('43794','15105').
0.271::trusts('25456','5976').
0.19::trusts('15105','43794').
0.1::trusts('36568','43794').
0.1::trusts('43794','36568').
0.1::trusts('20656','36568').
0.19::trusts('36568','20656').
0.1::trusts('44313','20656').
0.19::trusts('20656','44313').
0.271::trusts('4353','18048').
0.1::trusts('44313','61670').
0.19::trusts('4353','23134').

person('4353').
person('2285').
person('3486').
person('30407').
person('8514').
person('6854').
person('23465').
person('25456').
person('31109').
person('1267').
person('15105').
person('5976').
person('43794').
person('36568').
person('20656').
person('44313').
person('18048').
person('61670').
person('23134').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4353')).
query(buys('2285')).
query(buys('3486')).
query(buys('30407')).
query(buys('8514')).
query(buys('6854')).
query(buys('23465')).
query(buys('25456')).
query(buys('31109')).
query(buys('1267')).
query(buys('15105')).
query(buys('5976')).
query(buys('43794')).
query(buys('36568')).
query(buys('20656')).
query(buys('44313')).
query(buys('18048')).
query(buys('61670')).
query(buys('23134')).
