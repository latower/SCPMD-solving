10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6709','2476').
0.1::trusts('2476','6709').
0.19::trusts('16303','6709').
0.19::trusts('38407','6709').
0.1::trusts('6709','16303').
0.19::trusts('6709','38407').
0.1::trusts('20455','38407').
0.1::trusts('19221','38407').
0.19::trusts('3552','14314').
0.1::trusts('14314','3552').
0.1::trusts('20455','3552').
0.1::trusts('3552','20455').
0.271::trusts('19221','20455').
0.1::trusts('38407','20455').
0.271::trusts('59617','20455').
0.40951::trusts('20455','19221').
0.19::trusts('50641','19221').
0.1::trusts('21740','19221').
0.271::trusts('20455','59617').
0.19::trusts('19221','50641').
0.1::trusts('21463','50641').
0.19::trusts('59653','50641').
0.19::trusts('50641','59653').
0.1::trusts('3552','21373').
0.1::trusts('38407','11195').
0.1::trusts('20455','59594').

person('2476').
person('6709').
person('16303').
person('38407').
person('14314').
person('3552').
person('20455').
person('19221').
person('59617').
person('50641').
person('21740').
person('21463').
person('59653').
person('21373').
person('11195').
person('59594').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2476')).
query(buys('6709')).
query(buys('16303')).
query(buys('38407')).
query(buys('14314')).
query(buys('3552')).
query(buys('20455')).
query(buys('19221')).
query(buys('59617')).
query(buys('50641')).
query(buys('21740')).
query(buys('21463')).
query(buys('59653')).
query(buys('21373')).
query(buys('11195')).
query(buys('59594')).
