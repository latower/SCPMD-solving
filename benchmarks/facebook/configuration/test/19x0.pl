10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('36712','32821').
0.1::trusts('52102','32821').
0.19::trusts('52103','32821').
0.1::trusts('28562','32821').
0.19::trusts('32821','36712').
0.1::trusts('36551','36712').
0.271::trusts('32821','52102').
0.271::trusts('32821','52103').
0.1::trusts('46469','52103').
0.19::trusts('43071','52103').
0.19::trusts('32821','28562').
0.40951::trusts('12595','36551').
0.1::trusts('36712','36551').
0.1::trusts('61562','40723').
0.19::trusts('46469','40723').
0.271::trusts('40723','61562').
0.1::trusts('40723','46469').
0.19::trusts('52103','46469').
0.271::trusts('46468','46469').
0.271::trusts('46469','46468').
0.1::trusts('18280','46468').
0.1::trusts('52103','43071').
0.19::trusts('46468','18280').
0.1::trusts('12595','5258').
0.1::trusts('43071','43070').
0.1::trusts('45739','43070').
0.1::trusts('45805','43070').
0.1::trusts('45805','51696').
0.1::trusts('52103','57385').

person('32821').
person('36712').
person('52102').
person('52103').
person('28562').
person('36551').
person('12595').
person('40723').
person('61562').
person('46469').
person('46468').
person('43071').
person('18280').
person('5258').
person('43070').
person('45739').
person('45805').
person('51696').
person('57385').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('32821')).
query(buys('36712')).
query(buys('52102')).
query(buys('52103')).
query(buys('28562')).
query(buys('36551')).
query(buys('12595')).
query(buys('40723')).
query(buys('61562')).
query(buys('46469')).
query(buys('46468')).
query(buys('43071')).
query(buys('18280')).
query(buys('5258')).
query(buys('43070')).
query(buys('45739')).
query(buys('45805')).
query(buys('51696')).
query(buys('57385')).
