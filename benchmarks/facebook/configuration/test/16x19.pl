10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2032','6298').
0.1::trusts('13974','6298').
0.1::trusts('18610','6298').
0.1::trusts('24281','6298').
0.1::trusts('6298','2032').
0.19::trusts('13974','2032').
0.19::trusts('18610','2032').
0.1::trusts('6298','13974').
0.271::trusts('2032','13974').
0.19::trusts('25830','13974').
0.3439::trusts('2032','18610').
0.1::trusts('6427','18610').
0.19::trusts('6298','24281').
0.1::trusts('14416','24281').
0.19::trusts('58892','24281').
0.271::trusts('18515','6468').
0.19::trusts('2032','6468').
0.1::trusts('1381','6468').
0.1::trusts('13974','6468').
0.271::trusts('6427','18515').
0.1::trusts('18610','18515').
0.1::trusts('6468','1381').
0.1::trusts('6468','6427').
0.271::trusts('18515','6427').
0.1::trusts('18610','6427').
0.19::trusts('21588','6427').
0.1::trusts('13974','25830').
0.19::trusts('6427','21588').
0.468559::trusts('19162','21588').
0.717570463519::trusts('6298','14416').
0.1::trusts('24281','14416').
0.19::trusts('24281','58892').
0.7458134171671::trusts('19162','10454').
0.5217031::trusts('10454','19162').
0.468559::trusts('21588','19162').
0.1::trusts('18610','21764').

person('6298').
person('2032').
person('13974').
person('18610').
person('24281').
person('6468').
person('18515').
person('1381').
person('6427').
person('25830').
person('21588').
person('14416').
person('58892').
person('10454').
person('19162').
person('21764').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6298')).
query(buys('2032')).
query(buys('13974')).
query(buys('18610')).
query(buys('24281')).
query(buys('6468')).
query(buys('18515')).
query(buys('1381')).
query(buys('6427')).
query(buys('25830')).
query(buys('21588')).
query(buys('14416')).
query(buys('58892')).
query(buys('10454')).
query(buys('19162')).
query(buys('21764')).
