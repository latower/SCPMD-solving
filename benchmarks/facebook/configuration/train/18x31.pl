10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('52297','18449').
0.6513215599::trusts('14562','18449').
0.1::trusts('46308','18449').
0.19::trusts('18449','52297').
0.19::trusts('21856','52297').
0.1::trusts('24059','52297').
0.1::trusts('52295','52297').
0.612579511::trusts('18449','14562').
0.19::trusts('934','14562').
0.1::trusts('18449','46308').
0.19::trusts('45344','46308').
0.1::trusts('8356','46308').
0.19::trusts('52296','21856').
0.1::trusts('52297','21856').
0.1::trusts('54968','21856').
0.1::trusts('24299','21856').
0.19::trusts('21856','52296').
0.1::trusts('51933','52296').
0.19::trusts('21856','54968').
0.19::trusts('21856','24299').
0.1::trusts('18449','24059').
0.1::trusts('52296','24059').
0.1::trusts('52297','24059').
0.1::trusts('54780','24059').
0.1::trusts('21856','51933').
0.271::trusts('52296','51933').
0.1::trusts('52295','51933').
0.1::trusts('58285','51933').
0.3439::trusts('14562','934').
0.1::trusts('46308','45344').
0.19::trusts('18449','21123').
0.19::trusts('52295','45289').

person('18449').
person('52297').
person('14562').
person('46308').
person('21856').
person('52296').
person('54968').
person('24299').
person('24059').
person('54780').
person('51933').
person('52295').
person('934').
person('45344').
person('8356').
person('21123').
person('58285').
person('45289').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18449')).
query(buys('52297')).
query(buys('14562')).
query(buys('46308')).
query(buys('21856')).
query(buys('52296')).
query(buys('54968')).
query(buys('24299')).
query(buys('24059')).
query(buys('54780')).
query(buys('51933')).
query(buys('52295')).
query(buys('934')).
query(buys('45344')).
query(buys('8356')).
query(buys('21123')).
query(buys('58285')).
query(buys('45289')).
