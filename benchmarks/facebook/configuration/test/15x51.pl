10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19558','30757').
0.1::trusts('30757','19558').
0.19::trusts('33143','27946').
0.271::trusts('27946','33143').
0.468559::trusts('36839','33143').
0.271::trusts('36012','33143').
0.1::trusts('25826','21360').
0.271::trusts('19974','21360').
0.1::trusts('54013','21360').
0.271::trusts('21360','25826').
0.19::trusts('21360','19974').
0.19::trusts('21360','54013').
0.1::trusts('30757','36839').
0.40951::trusts('33143','36839').
0.19::trusts('38643','36839').
0.1::trusts('36839','38643').
0.271::trusts('37259','38643').
0.19::trusts('63859','38643').
0.271::trusts('33143','36012').
0.19::trusts('38643','37259').
0.1::trusts('21360','29649').
0.1::trusts('33143','29649').
0.1::trusts('38643','27936').

person('30757').
person('19558').
person('27946').
person('33143').
person('21360').
person('25826').
person('19974').
person('54013').
person('36839').
person('38643').
person('36012').
person('37259').
person('63859').
person('29649').
person('27936').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30757')).
query(buys('19558')).
query(buys('27946')).
query(buys('33143')).
query(buys('21360')).
query(buys('25826')).
query(buys('19974')).
query(buys('54013')).
query(buys('36839')).
query(buys('38643')).
query(buys('36012')).
query(buys('37259')).
query(buys('63859')).
query(buys('29649')).
query(buys('27936')).
