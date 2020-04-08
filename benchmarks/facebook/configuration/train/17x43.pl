10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.849905364703001::trusts('6847','6851').
0.1::trusts('2011','6851').
0.5217031::trusts('6778','6851').
0.1::trusts('21173','6851').
0.1::trusts('4832','6851').
0.814697981114816::trusts('8939','6851').
0.77123207545039::trusts('6847','6778').
0.19::trusts('2011','6778').
0.271::trusts('6851','6778').
0.1::trusts('7233','6778').
0.40951::trusts('7243','6778').
0.56953279::trusts('21173','6778').
0.1::trusts('4832','6778').
0.1::trusts('6851','21173').
0.5217031::trusts('6778','21173').
0.1::trusts('4521','4832').
0.1::trusts('6851','8939').
0.271::trusts('2011','7233').
0.1::trusts('6778','7233').
0.1::trusts('7243','7233').
0.5217031::trusts('6778','7243').
0.1::trusts('7233','7243').
0.19::trusts('41712','7243').
0.271::trusts('7243','41712').
0.19::trusts('2011','4814').
0.1::trusts('4832','4521').
0.878423345409431::trusts('2011','2007').
0.1::trusts('2011','22694').
0.1::trusts('7233','12717').
0.1::trusts('6851','29879').
0.1::trusts('6778','29879').
0.1::trusts('2011','5924').

person('6851').
person('6847').
person('2011').
person('6778').
person('21173').
person('4832').
person('8939').
person('7233').
person('7243').
person('41712').
person('4814').
person('4521').
person('2007').
person('22694').
person('12717').
person('29879').
person('5924').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6851')).
query(buys('6847')).
query(buys('2011')).
query(buys('6778')).
query(buys('21173')).
query(buys('4832')).
query(buys('8939')).
query(buys('7233')).
query(buys('7243')).
query(buys('41712')).
query(buys('4814')).
query(buys('4521')).
query(buys('2007')).
query(buys('22694')).
query(buys('12717')).
query(buys('29879')).
query(buys('5924')).
