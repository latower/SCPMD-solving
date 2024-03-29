10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('13359','15561').
0.849905364703001::trusts('7441','15561').
0.19::trusts('6723','15561').
0.19::trusts('15561','13359').
0.56953279::trusts('7441','13359').
0.983576796731739::trusts('6723','13359').
0.833228183003334::trusts('12635','13359').
0.3439::trusts('12641','13359').
0.19::trusts('15064','13359').
0.19::trusts('6724','13359').
0.901522909781639::trusts('15561','7441').
0.5217031::trusts('13359','7441').
0.5217031::trusts('6723','7441').
0.1::trusts('6727','7441').
0.271::trusts('6724','7441').
0.19::trusts('6726','7441').
0.19::trusts('9266','7441').
0.19::trusts('22160','7441').
0.1::trusts('15613','7441').
0.40951::trusts('15561','6723').
0.972187161055631::trusts('13359','6723').
0.468559::trusts('7441','6723').
0.6513215599::trusts('12635','6723').
0.19::trusts('12641','6723').
0.19::trusts('4564','6723').
0.19::trusts('6727','6723').
0.1::trusts('13359','12641').
0.3439::trusts('6723','12641').
0.68618940391::trusts('12635','12641').
0.19::trusts('15064','12641').
0.1::trusts('21424','12641').
0.1::trusts('21426','12641').
0.271::trusts('12635','15064').
0.3439::trusts('13359','6724').
0.7458134171671::trusts('7441','6724').
0.3439::trusts('6723','6724').
0.271::trusts('12751','6724').
0.3439::trusts('6727','6724').
0.19::trusts('6726','6724').
0.1::trusts('6729','6724').
0.19::trusts('13359','6727').
0.468559::trusts('7441','6727').
0.468559::trusts('6723','6727').
0.271::trusts('12751','6727').
0.19::trusts('4564','6727').
0.40951::trusts('6724','6727').
0.1::trusts('9266','6727').
0.271::trusts('7441','6726').
0.1::trusts('12751','6726').
0.271::trusts('4564','6726').
0.1::trusts('6728','6726').
0.40951::trusts('7441','9266').
0.1::trusts('6723','9266').
0.271::trusts('7441','22160').
0.1::trusts('15561','15613').
0.19::trusts('6726','4564').
0.271::trusts('4210','19245').
0.1::trusts('53341','19245').
0.271::trusts('19245','4210').
0.1::trusts('12751','4210').
0.1::trusts('12098','4210').
0.19::trusts('19245','53341').
0.19::trusts('12641','21424').
0.1::trusts('12641','21426').
0.1::trusts('7441','12751').
0.1::trusts('6727','12751').
0.1::trusts('6726','12751').
0.947665236697264::trusts('12098','12751').
0.1::trusts('4210','12751').
0.901522909781639::trusts('12751','12098').
0.19::trusts('4210','12098').
0.19::trusts('12099','12098').
0.19::trusts('7441','6728').
0.19::trusts('6727','6728').
0.1::trusts('6724','6728').
0.19::trusts('6726','6728').
0.1::trusts('7441','6725').
0.1::trusts('12751','6725').

person('15561').
person('13359').
person('7441').
person('6723').
person('12635').
person('12641').
person('15064').
person('6724').
person('6727').
person('6726').
person('9266').
person('22160').
person('15613').
person('4564').
person('19245').
person('4210').
person('53341').
person('21424').
person('21426').
person('12751').
person('12098').
person('6729').
person('6728').
person('12099').
person('6725').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15561')).
query(buys('13359')).
query(buys('7441')).
query(buys('6723')).
query(buys('12635')).
query(buys('12641')).
query(buys('15064')).
query(buys('6724')).
query(buys('6727')).
query(buys('6726')).
query(buys('9266')).
query(buys('22160')).
query(buys('15613')).
query(buys('4564')).
query(buys('19245')).
query(buys('4210')).
query(buys('53341')).
query(buys('21424')).
query(buys('21426')).
query(buys('12751')).
query(buys('12098')).
query(buys('6729')).
query(buys('6728')).
query(buys('12099')).
query(buys('6725')).
