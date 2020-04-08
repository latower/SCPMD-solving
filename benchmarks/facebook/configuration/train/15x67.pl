10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('18319','18328').
0.3439::trusts('42891','18328').
0.1::trusts('40456','18328').
0.3439::trusts('48087','18328').
0.271::trusts('59463','18328').
0.468559::trusts('18328','18319').
0.271::trusts('19091','18319').
0.1::trusts('40610','18319').
0.271::trusts('18328','42891').
0.1::trusts('50279','42891').
0.1::trusts('18328','40456').
0.1::trusts('18560','40456').
0.271::trusts('48087','40456').
0.3439::trusts('18328','48087').
0.40951::trusts('40456','48087').
0.19::trusts('59463','48087').
0.19::trusts('18328','59463').
0.19::trusts('48087','59463').
0.19::trusts('18319','19091').
0.19::trusts('18319','40610').
0.1::trusts('40611','40610').
0.1::trusts('42891','50279').
0.1::trusts('37249','50279').
0.3439::trusts('40456','18560').
0.1::trusts('40610','40611').
0.19::trusts('50279','37249').
0.1::trusts('50279','54736').
0.1::trusts('50279','54788').
0.19::trusts('40456','53238').

person('18328').
person('18319').
person('42891').
person('40456').
person('48087').
person('59463').
person('19091').
person('40610').
person('50279').
person('18560').
person('40611').
person('37249').
person('54736').
person('54788').
person('53238').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18328')).
query(buys('18319')).
query(buys('42891')).
query(buys('40456')).
query(buys('48087')).
query(buys('59463')).
query(buys('19091')).
query(buys('40610')).
query(buys('50279')).
query(buys('18560')).
query(buys('40611')).
query(buys('37249')).
query(buys('54736')).
query(buys('54788')).
query(buys('53238')).
