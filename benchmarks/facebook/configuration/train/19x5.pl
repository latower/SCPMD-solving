10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('41312','31436').
0.1::trusts('49689','31436').
0.19::trusts('48058','31436').
0.1::trusts('24077','31436').
0.1::trusts('57682','31436').
0.271::trusts('31436','41312').
0.1::trusts('14626','41312').
0.1::trusts('52961','41312').
0.1::trusts('31436','48058').
0.1::trusts('31436','24077').
0.3439::trusts('52961','24077').
0.1::trusts('58339','24077').
0.19::trusts('46691','14626').
0.1::trusts('41312','14626').
0.1::trusts('14626','46691').
0.19::trusts('41312','52961').
0.19::trusts('34548','52961').
0.1::trusts('59861','52961').
0.19::trusts('58530','52961').
0.1::trusts('24077','58339').
0.1::trusts('52961','34548').
0.1::trusts('54076','34548').
0.19::trusts('59400','34548').
0.19::trusts('34548','54076').
0.1::trusts('34548','59400').
0.19::trusts('52961','59861').
0.1::trusts('52961','58530').
0.1::trusts('24883','58530').
0.19::trusts('58529','58530').
0.1::trusts('58530','24883').
0.1::trusts('49017','24883').
0.1::trusts('58530','58529').
0.1::trusts('57682','50468').

person('31436').
person('41312').
person('49689').
person('48058').
person('24077').
person('57682').
person('14626').
person('46691').
person('52961').
person('58339').
person('34548').
person('54076').
person('59400').
person('59861').
person('58530').
person('24883').
person('58529').
person('49017').
person('50468').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('31436')).
query(buys('41312')).
query(buys('49689')).
query(buys('48058')).
query(buys('24077')).
query(buys('57682')).
query(buys('14626')).
query(buys('46691')).
query(buys('52961')).
query(buys('58339')).
query(buys('34548')).
query(buys('54076')).
query(buys('59400')).
query(buys('59861')).
query(buys('58530')).
query(buys('24883')).
query(buys('58529')).
query(buys('49017')).
query(buys('50468')).
