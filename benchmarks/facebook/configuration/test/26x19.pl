10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('21319','2501').
0.1::trusts('21878','2501').
0.19::trusts('2501','21319').
0.19::trusts('13253','21319').
0.1::trusts('2501','21878').
0.40951::trusts('3141','21878').
0.271::trusts('3140','21878').
0.468559::trusts('3141','3142').
0.1::trusts('3142','3141').
0.3439::trusts('3140','3141').
0.1::trusts('21878','3141').
0.814697981114816::trusts('3141','3140').
0.19::trusts('21878','3140').
0.1::trusts('3128','3140').
0.3439::trusts('49532','3140').
0.5217031::trusts('29300','3140').
0.3439::trusts('60198','3140').
0.271::trusts('3141','3128').
0.1::trusts('3140','3128').
0.19::trusts('3147','3128').
0.40951::trusts('3140','49532').
0.68618940391::trusts('29300','49532').
0.3439::trusts('60198','49532').
0.1::trusts('49531','49532').
0.3439::trusts('56632','49532').
0.468559::trusts('3140','29300').
0.5217031::trusts('49532','29300').
0.5217031::trusts('60198','29300').
0.1::trusts('56632','29300').
0.1::trusts('60387','29300').
0.19::trusts('3140','60198').
0.1::trusts('49532','60198').
0.7458134171671::trusts('29300','60198').
0.19::trusts('21319','13253').
0.1::trusts('33282','3147').
0.19::trusts('19094','3147').
0.1::trusts('3128','3147').
0.5217031::trusts('6276','3147').
0.1::trusts('53583','3147').
0.40951::trusts('7939','3147').
0.19::trusts('3147','33282').
0.19::trusts('3147','6276').
0.271::trusts('19094','6276').
0.40951::trusts('3147','7939').
0.271::trusts('49532','56632').
0.1::trusts('29300','56632').
0.271::trusts('48963','56632').
0.271::trusts('29300','60387').
0.1::trusts('48963','60387').
0.1::trusts('56632','60387').
0.1::trusts('3141','22816').
0.1::trusts('29300','29257').
0.1::trusts('3140','59044').
0.1::trusts('56709','59044').
0.1::trusts('59044','56709').
0.1::trusts('3147','53605').

person('2501').
person('21319').
person('21878').
person('3142').
person('3141').
person('3140').
person('3128').
person('49532').
person('29300').
person('60198').
person('13253').
person('3147').
person('33282').
person('19094').
person('6276').
person('53583').
person('7939').
person('49531').
person('56632').
person('60387').
person('48963').
person('22816').
person('29257').
person('59044').
person('56709').
person('53605').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2501')).
query(buys('21319')).
query(buys('21878')).
query(buys('3142')).
query(buys('3141')).
query(buys('3140')).
query(buys('3128')).
query(buys('49532')).
query(buys('29300')).
query(buys('60198')).
query(buys('13253')).
query(buys('3147')).
query(buys('33282')).
query(buys('19094')).
query(buys('6276')).
query(buys('53583')).
query(buys('7939')).
query(buys('49531')).
query(buys('56632')).
query(buys('60387')).
query(buys('48963')).
query(buys('22816')).
query(buys('29257')).
query(buys('59044')).
query(buys('56709')).
query(buys('53605')).
