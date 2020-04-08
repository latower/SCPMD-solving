10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('15175','22308').
0.1::trusts('22308','15175').
0.468559::trusts('32476','15175').
0.19::trusts('37360','15175').
0.1::trusts('26187','15175').
0.1::trusts('34152','15175').
0.68618940391::trusts('37357','15175').
0.271::trusts('37363','15175').
0.468559::trusts('15175','32476').
0.1::trusts('54458','32476').
0.1::trusts('15175','37360').
0.19::trusts('15175','34152').
0.1::trusts('33527','34152').
0.19::trusts('27356','34152').
0.3439::trusts('33346','34152').
0.920233556923127::trusts('15175','37357').
0.271::trusts('37358','37357').
0.1::trusts('15175','37363').
0.19::trusts('32476','54458').
0.1::trusts('27356','33527').
0.1::trusts('34152','27356').
0.1::trusts('33346','27356').
0.19::trusts('34152','33346').
0.1::trusts('27356','33346').
0.1::trusts('33345','33346').
0.271::trusts('37357','37358').
0.19::trusts('33346','33345').
0.271::trusts('19409','33345').
0.1::trusts('19409','42662').
0.19::trusts('33345','19409').
0.1::trusts('15175','29863').
0.1::trusts('19409','19029').
0.1::trusts('19409','33522').
0.1::trusts('15175','28868').

person('22308').
person('15175').
person('32476').
person('37360').
person('26187').
person('34152').
person('37357').
person('37363').
person('54458').
person('33527').
person('27356').
person('33346').
person('37358').
person('33345').
person('42662').
person('19409').
person('29863').
person('19029').
person('33522').
person('28868').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22308')).
query(buys('15175')).
query(buys('32476')).
query(buys('37360')).
query(buys('26187')).
query(buys('34152')).
query(buys('37357')).
query(buys('37363')).
query(buys('54458')).
query(buys('33527')).
query(buys('27356')).
query(buys('33346')).
query(buys('37358')).
query(buys('33345')).
query(buys('42662')).
query(buys('19409')).
query(buys('29863')).
query(buys('19029')).
query(buys('33522')).
query(buys('28868')).
