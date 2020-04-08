10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('44330','30781').
0.40951::trusts('19177','30781').
0.6513215599::trusts('44331','30781').
0.1::trusts('23826','30781').
0.1::trusts('39061','30781').
0.19::trusts('43203','30781').
0.1::trusts('43390','30781').
0.3439::trusts('53692','30781').
0.1::trusts('30781','44330').
0.271::trusts('30191','44330').
0.1::trusts('24014','44330').
0.6513215599::trusts('30781','44331').
0.1::trusts('19177','44331').
0.1::trusts('6284','44331').
0.3439::trusts('30781','23826').
0.1::trusts('30781','39061').
0.19::trusts('30781','43203').
0.19::trusts('48759','43203').
0.1::trusts('30781','43390').
0.1::trusts('55525','43390').
0.1::trusts('30781','53692').
0.468559::trusts('44330','30191').
0.1::trusts('44331','30191').
0.19::trusts('44330','24014').
0.19::trusts('51956','24014').
0.1::trusts('30781','6284').
0.19::trusts('44330','6284').
0.19::trusts('44331','6284').
0.1::trusts('43203','48759').
0.468559::trusts('24014','51956').
0.1::trusts('30781','51070').
0.1::trusts('30781','24686').

person('30781').
person('44330').
person('19177').
person('44331').
person('23826').
person('39061').
person('43203').
person('43390').
person('53692').
person('30191').
person('24014').
person('6284').
person('48759').
person('55525').
person('51956').
person('51070').
person('24686').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30781')).
query(buys('44330')).
query(buys('19177')).
query(buys('44331')).
query(buys('23826')).
query(buys('39061')).
query(buys('43203')).
query(buys('43390')).
query(buys('53692')).
query(buys('30191')).
query(buys('24014')).
query(buys('6284')).
query(buys('48759')).
query(buys('55525')).
query(buys('51956')).
query(buys('51070')).
query(buys('24686')).
