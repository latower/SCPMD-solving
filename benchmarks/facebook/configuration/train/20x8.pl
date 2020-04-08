10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('40800','12401').
0.1::trusts('1123','12401').
0.1::trusts('12401','40800').
0.1::trusts('10510','40800').
0.1::trusts('12401','1123').
0.1::trusts('21774','1123').
0.1::trusts('1122','1123').
0.468559::trusts('5561','1123').
0.1::trusts('43588','1123').
0.271::trusts('14773','10510').
0.56953279::trusts('1123','21774').
0.1::trusts('21075','21774').
0.1::trusts('1123','1122').
0.6513215599::trusts('1123','5561').
0.19::trusts('1123','43588').
0.1::trusts('21774','21075').
0.3439::trusts('44096','14773').
0.3439::trusts('41844','14773').
0.56953279::trusts('45734','14773').
0.19::trusts('10510','14773').
0.77123207545039::trusts('14773','44096').
0.1::trusts('62338','44096').
0.612579511::trusts('14773','41844').
0.1::trusts('58786','41844').
0.1::trusts('44096','62338').
0.1::trusts('41844','58786').
0.1::trusts('1123','1119').
0.1::trusts('1122','1119').
0.1::trusts('1123','24884').
0.1::trusts('12401','55002').
0.3439::trusts('14773','55002').
0.271::trusts('45734','46390').
0.1::trusts('40800','58772').

person('12401').
person('40800').
person('1123').
person('10510').
person('21774').
person('1122').
person('5561').
person('43588').
person('21075').
person('14773').
person('44096').
person('41844').
person('45734').
person('62338').
person('58786').
person('1119').
person('24884').
person('55002').
person('46390').
person('58772').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12401')).
query(buys('40800')).
query(buys('1123')).
query(buys('10510')).
query(buys('21774')).
query(buys('1122')).
query(buys('5561')).
query(buys('43588')).
query(buys('21075')).
query(buys('14773')).
query(buys('44096')).
query(buys('41844')).
query(buys('45734')).
query(buys('62338')).
query(buys('58786')).
query(buys('1119')).
query(buys('24884')).
query(buys('55002')).
query(buys('46390')).
query(buys('58772')).
