10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6252','17460').
0.1::trusts('17463','15618').
0.1::trusts('14839','15618').
0.1::trusts('18661','15618').
0.19::trusts('17730','15618').
0.271::trusts('29804','15618').
0.271::trusts('15618','17463').
0.19::trusts('4603','17463').
0.1::trusts('7744','17463').
0.1::trusts('17730','17463').
0.1::trusts('15618','14839').
0.1::trusts('7038','14839').
0.271::trusts('15618','18661').
0.1::trusts('37970','18661').
0.5217031::trusts('15618','29804').
0.19::trusts('7744','29804').
0.3439::trusts('17730','29804').
0.1::trusts('6252','4603').
0.3439::trusts('17463','4603').
0.271::trusts('15618','7744').
0.19::trusts('17463','7744').
0.271::trusts('17730','7744').
0.19::trusts('29804','7744').
0.1::trusts('28433','7744').
0.1::trusts('22562','7744').
0.40951::trusts('7744','28433').
0.3439::trusts('7744','22562').
0.1::trusts('30579','22562').
0.1::trusts('15618','7038').
0.19::trusts('14839','7038').
0.19::trusts('17730','5919').
0.1::trusts('7744','42393').
0.271::trusts('17730','44453').
0.1::trusts('17730','35459').

person('17460').
person('6252').
person('15618').
person('17463').
person('14839').
person('18661').
person('17730').
person('29804').
person('4603').
person('7744').
person('28433').
person('22562').
person('7038').
person('37970').
person('30579').
person('5919').
person('42393').
person('44453').
person('35459').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17460')).
query(buys('6252')).
query(buys('15618')).
query(buys('17463')).
query(buys('14839')).
query(buys('18661')).
query(buys('17730')).
query(buys('29804')).
query(buys('4603')).
query(buys('7744')).
query(buys('28433')).
query(buys('22562')).
query(buys('7038')).
query(buys('37970')).
query(buys('30579')).
query(buys('5919')).
query(buys('42393')).
query(buys('44453')).
query(buys('35459')).
