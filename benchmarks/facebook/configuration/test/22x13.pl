10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('14567','30540').
0.271::trusts('30540','14567').
0.1::trusts('36667','14567').
0.1::trusts('36668','14567').
0.1::trusts('31742','12261').
0.56953279::trusts('36667','12261').
0.1::trusts('48627','12261').
0.19::trusts('12261','31742').
0.19::trusts('47585','31742').
0.612579511::trusts('12261','36667').
0.1::trusts('41352','36667').
0.1::trusts('32112','36667').
0.1::trusts('14567','36667').
0.5217031::trusts('10726','36667').
0.920233556923127::trusts('53324','36667').
0.1::trusts('36668','36667').
0.1::trusts('12261','48627').
0.1::trusts('31742','47585').
0.717570463519::trusts('41354','41352').
0.794108867905351::trusts('32112','41352').
0.1::trusts('6965','41352').
0.271::trusts('36667','41352').
0.998820981542226::trusts('41352','41354').
0.1::trusts('12261','32112').
0.911370618803475::trusts('41352','32112').
0.19::trusts('36667','32112').
0.19::trusts('53324','32112').
0.271::trusts('35322','32112').
0.1::trusts('37495','32112').
0.19::trusts('31742','6965').
0.1::trusts('41352','6965').
0.1::trusts('41354','6965').
0.1::trusts('16252','6965').
0.1::trusts('32112','53324').
0.935389181107733::trusts('36667','53324').
0.19::trusts('35322','53324').
0.40951::trusts('48120','53324').
0.271::trusts('41352','35322').
0.271::trusts('32112','35322').
0.19::trusts('53324','35322').
0.1::trusts('32112','37495').
0.1::trusts('6965','16252').
0.1::trusts('50974','16252').
0.77123207545039::trusts('36667','10726').
0.40951::trusts('36667','36668').
0.1::trusts('14567','36668').
0.1::trusts('16252','50974').
0.5217031::trusts('53324','48120').
0.1::trusts('41352','38068').
0.849905364703001::trusts('41352','51275').
0.1::trusts('41354','51275').
0.1::trusts('36667','41383').

person('30540').
person('14567').
person('12261').
person('31742').
person('36667').
person('48627').
person('47585').
person('41352').
person('41354').
person('32112').
person('6965').
person('53324').
person('35322').
person('37495').
person('16252').
person('10726').
person('36668').
person('50974').
person('48120').
person('38068').
person('51275').
person('41383').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30540')).
query(buys('14567')).
query(buys('12261')).
query(buys('31742')).
query(buys('36667')).
query(buys('48627')).
query(buys('47585')).
query(buys('41352')).
query(buys('41354')).
query(buys('32112')).
query(buys('6965')).
query(buys('53324')).
query(buys('35322')).
query(buys('37495')).
query(buys('16252')).
query(buys('10726')).
query(buys('36668')).
query(buys('50974')).
query(buys('48120')).
query(buys('38068')).
query(buys('51275')).
query(buys('41383')).