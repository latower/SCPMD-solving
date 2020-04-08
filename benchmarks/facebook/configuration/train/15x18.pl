10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18088','5364').
0.1::trusts('17265','5364').
0.19::trusts('5364','18088').
0.19::trusts('5364','17265').
0.1::trusts('931','17265').
0.468559::trusts('38192','17265').
0.1::trusts('17265','931').
0.271::trusts('17265','38192').
0.1::trusts('38188','38192').
0.1::trusts('38192','16772').
0.1::trusts('38188','16772').
0.1::trusts('38192','38188').
0.1::trusts('44466','38188').
0.19::trusts('59360','38188').
0.19::trusts('59521','38188').
0.1::trusts('38188','44466').
0.19::trusts('38188','59360').
0.1::trusts('39267','59360').
0.1::trusts('38188','59521').
0.19::trusts('50031','59521').
0.271::trusts('59360','39267').
0.19::trusts('59521','50031').
0.271::trusts('44466','44465').
0.1::trusts('38188','21960').
0.1::trusts('59360','21960').
0.1::trusts('38188','59361').

person('5364').
person('18088').
person('17265').
person('931').
person('38192').
person('16772').
person('38188').
person('44466').
person('59360').
person('59521').
person('39267').
person('50031').
person('44465').
person('21960').
person('59361').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5364')).
query(buys('18088')).
query(buys('17265')).
query(buys('931')).
query(buys('38192')).
query(buys('16772')).
query(buys('38188')).
query(buys('44466')).
query(buys('59360')).
query(buys('59521')).
query(buys('39267')).
query(buys('50031')).
query(buys('44465')).
query(buys('21960')).
query(buys('59361')).
