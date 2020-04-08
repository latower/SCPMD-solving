10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('10151','28352').
0.1::trusts('10960','28352').
0.19::trusts('19473','28352').
0.40951::trusts('28352','10151').
0.1::trusts('17616','10151').
0.468559::trusts('10167','10151').
0.19::trusts('28352','19473').
0.19::trusts('36307','19473').
0.271::trusts('25204','19473').
0.1::trusts('19481','19473').
0.1::trusts('37571','19473').
0.5217031::trusts('10151','10167').
0.1::trusts('36303','36307').
0.1::trusts('35410','36307').
0.1::trusts('36307','25204').
0.1::trusts('19473','19481').
0.19::trusts('36307','19481').
0.271::trusts('19473','37571').
0.19::trusts('41200','36303').
0.271::trusts('36307','36303').
0.271::trusts('41203','36303').
0.1::trusts('36303','41203').
0.1::trusts('36307','35410').
0.1::trusts('36307','36306').
0.271::trusts('19473','19476').
0.19::trusts('36307','19476').
0.1::trusts('36308','19476').
0.1::trusts('24138','36308').
0.1::trusts('41200','37084').
0.19::trusts('19473','31055').

person('28352').
person('10151').
person('10960').
person('19473').
person('17616').
person('10167').
person('36307').
person('25204').
person('19481').
person('37571').
person('36303').
person('41200').
person('41203').
person('35410').
person('36306').
person('19476').
person('36308').
person('24138').
person('37084').
person('31055').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('28352')).
query(buys('10151')).
query(buys('10960')).
query(buys('19473')).
query(buys('17616')).
query(buys('10167')).
query(buys('36307')).
query(buys('25204')).
query(buys('19481')).
query(buys('37571')).
query(buys('36303')).
query(buys('41200')).
query(buys('41203')).
query(buys('35410')).
query(buys('36306')).
query(buys('19476')).
query(buys('36308')).
query(buys('24138')).
query(buys('37084')).
query(buys('31055')).
