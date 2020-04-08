10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('21590','6786').
0.1::trusts('43224','6786').
0.19::trusts('6786','21590').
0.1::trusts('6786','43224').
0.19::trusts('8015','43224').
0.3439::trusts('7734','1221').
0.271::trusts('17324','1221').
0.1::trusts('1221','7734').
0.56953279::trusts('12199','7734').
0.3439::trusts('15067','7734').
0.1::trusts('14398','7734').
0.1::trusts('8015','7734').
0.271::trusts('1221','17324').
0.1::trusts('22135','17324').
0.468559::trusts('7734','12199').
0.5217031::trusts('7734','15067').
0.1::trusts('7734','8015').
0.19::trusts('43224','8015').
0.1::trusts('45046','8015').
0.1::trusts('21590','30475').
0.1::trusts('45046','44070').
0.1::trusts('7734','20901').
0.1::trusts('6786','7725').

person('6786').
person('21590').
person('43224').
person('1221').
person('7734').
person('17324').
person('12199').
person('15067').
person('14398').
person('8015').
person('45046').
person('22135').
person('30475').
person('44070').
person('20901').
person('7725').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6786')).
query(buys('21590')).
query(buys('43224')).
query(buys('1221')).
query(buys('7734')).
query(buys('17324')).
query(buys('12199')).
query(buys('15067')).
query(buys('14398')).
query(buys('8015')).
query(buys('45046')).
query(buys('22135')).
query(buys('30475')).
query(buys('44070')).
query(buys('20901')).
query(buys('7725')).
