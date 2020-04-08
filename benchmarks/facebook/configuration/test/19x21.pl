10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3968','7300').
0.1::trusts('24926','7300').
0.1::trusts('7300','24926').
0.19::trusts('3968','13358').
0.1::trusts('1321','13358').
0.3439::trusts('9983','13358').
0.1::trusts('4405','13358').
0.271::trusts('19845','13358').
0.1::trusts('1345','13358').
0.19::trusts('14533','13358').
0.40951::trusts('13358','1321').
0.271::trusts('1345','1321').
0.1::trusts('14533','1321').
0.1::trusts('53313','1321').
0.19::trusts('3968','9983').
0.1::trusts('13358','9983').
0.19::trusts('6097','9983').
0.1::trusts('13358','1345').
0.1::trusts('1321','1345').
0.40951::trusts('1321','14533').
0.1::trusts('1321','53313').
0.19::trusts('6097','16359').
0.19::trusts('3968','6097').
0.3439::trusts('13358','6097').
0.19::trusts('16359','6097').
0.849905364703001::trusts('9983','6097').
0.1::trusts('3968','33155').
0.1::trusts('3968','23051').
0.1::trusts('3968','17829').
0.1::trusts('60038','17829').
0.1::trusts('17829','60038').
0.1::trusts('1321','54216').
0.1::trusts('53313','61654').

person('7300').
person('3968').
person('24926').
person('13358').
person('1321').
person('9983').
person('4405').
person('19845').
person('1345').
person('14533').
person('53313').
person('16359').
person('6097').
person('33155').
person('23051').
person('17829').
person('60038').
person('54216').
person('61654').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7300')).
query(buys('3968')).
query(buys('24926')).
query(buys('13358')).
query(buys('1321')).
query(buys('9983')).
query(buys('4405')).
query(buys('19845')).
query(buys('1345')).
query(buys('14533')).
query(buys('53313')).
query(buys('16359')).
query(buys('6097')).
query(buys('33155')).
query(buys('23051')).
query(buys('17829')).
query(buys('60038')).
query(buys('54216')).
query(buys('61654')).
