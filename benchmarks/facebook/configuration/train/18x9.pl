10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('4555','70').
0.1::trusts('4949','70').
0.1::trusts('13443','70').
0.3439::trusts('70','4555').
0.1::trusts('15024','4555').
0.1::trusts('70','4949').
0.5217031::trusts('8206','4949').
0.19::trusts('70','13443').
0.1::trusts('14514','13443').
0.1::trusts('8347','1798').
0.1::trusts('12766','1798').
0.1::trusts('15024','1798').
0.1::trusts('1798','8347').
0.40951::trusts('15024','8347').
0.19::trusts('23509','8347').
0.1::trusts('1798','12766').
0.19::trusts('39982','12766').
0.612579511::trusts('8347','15024').
0.19::trusts('4555','15024').
0.271::trusts('4949','8206').
0.1::trusts('12766','39982').
0.1::trusts('8347','23509').
0.1::trusts('8206','29224').
0.1::trusts('13443','14514').
0.1::trusts('39982','37993').
0.5217031::trusts('70','32222').
0.1::trusts('4555','32222').
0.1::trusts('39982','39984').
0.1::trusts('4949','52656').
0.1::trusts('8206','10864').

person('70').
person('4555').
person('4949').
person('13443').
person('1798').
person('8347').
person('12766').
person('15024').
person('8206').
person('39982').
person('23509').
person('29224').
person('14514').
person('37993').
person('32222').
person('39984').
person('52656').
person('10864').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('70')).
query(buys('4555')).
query(buys('4949')).
query(buys('13443')).
query(buys('1798')).
query(buys('8347')).
query(buys('12766')).
query(buys('15024')).
query(buys('8206')).
query(buys('39982')).
query(buys('23509')).
query(buys('29224')).
query(buys('14514')).
query(buys('37993')).
query(buys('32222')).
query(buys('39984')).
query(buys('52656')).
query(buys('10864')).
