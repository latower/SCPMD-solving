10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('6577','4916').
0.19::trusts('4932','4916').
0.271::trusts('4916','6577').
0.1::trusts('7311','6577').
0.19::trusts('8197','6577').
0.1::trusts('2194','6577').
0.271::trusts('2212','6577').
0.19::trusts('9980','6577').
0.5217031::trusts('9976','6577').
0.1::trusts('8203','6577').
0.1::trusts('4916','4932').
0.1::trusts('6577','6088').
0.1::trusts('2194','6088').
0.271::trusts('2212','6088').
0.1::trusts('8198','6088').
0.1::trusts('8213','6088').
0.68618940391::trusts('6577','2194').
0.1::trusts('2212','2194').
0.40951::trusts('9976','2194').
0.271::trusts('8198','2194').
0.19::trusts('6088','2212').
0.40951::trusts('7311','2212').
0.19::trusts('8197','2212').
0.40951::trusts('6577','2212').
0.1::trusts('2194','2212').
0.1::trusts('9976','2212').
0.19::trusts('8198','2212').
0.271::trusts('8203','2212').
0.1::trusts('8213','2212').
0.271::trusts('9981','2212').
0.1::trusts('15748','2212').
0.1::trusts('6088','8198').
0.1::trusts('8197','8198').
0.40951::trusts('6577','8198').
0.468559::trusts('2194','8198').
0.3439::trusts('2212','8198').
0.1::trusts('9976','8198').
0.1::trusts('8220','8198').
0.1::trusts('6088','8213').
0.19::trusts('40615','8213').
0.3439::trusts('6577','7311').
0.56953279::trusts('2212','7311').
0.1::trusts('14845','7311').
0.3439::trusts('16928','7311').
0.271::trusts('9981','7311').
0.1::trusts('17682','7311').
0.1::trusts('7311','14845').
0.19::trusts('7311','16928').
0.19::trusts('7311','9981').
0.271::trusts('6577','9981').
0.40951::trusts('2212','9981').
0.1::trusts('8198','9981').
0.19::trusts('7311','17682').
0.1::trusts('6088','2759').
0.19::trusts('6577','2759').
0.19::trusts('9976','2759').
0.19::trusts('2759','9976').
0.928210201230815::trusts('6577','9976').
0.5217031::trusts('2194','9976').
0.19::trusts('2212','9976').
0.19::trusts('9980','9976').
0.271::trusts('6577','9980').
0.19::trusts('9976','9980').
0.19::trusts('6577','8203').
0.468559::trusts('2212','8203').
0.3439::trusts('40606','8203').
0.1::trusts('2212','15748').
0.1::trusts('32274','15748').
0.1::trusts('6577','8220').
0.1::trusts('2212','8220').
0.19::trusts('8198','8220').
0.40951::trusts('8203','40606').
0.1::trusts('8213','40615').
0.1::trusts('6577','5319').
0.1::trusts('8198','1818').
0.1::trusts('7311','19336').
0.1::trusts('14845','19336').
0.1::trusts('2759','9586').

person('4916').
person('6577').
person('4932').
person('6088').
person('2194').
person('2212').
person('8198').
person('8213').
person('7311').
person('14845').
person('16928').
person('9981').
person('17682').
person('2759').
person('9976').
person('8197').
person('9980').
person('8203').
person('15748').
person('8220').
person('40606').
person('40615').
person('32274').
person('5319').
person('1818').
person('19336').
person('9586').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4916')).
query(buys('6577')).
query(buys('4932')).
query(buys('6088')).
query(buys('2194')).
query(buys('2212')).
query(buys('8198')).
query(buys('8213')).
query(buys('7311')).
query(buys('14845')).
query(buys('16928')).
query(buys('9981')).
query(buys('17682')).
query(buys('2759')).
query(buys('9976')).
query(buys('8197')).
query(buys('9980')).
query(buys('8203')).
query(buys('15748')).
query(buys('8220')).
query(buys('40606')).
query(buys('40615')).
query(buys('32274')).
query(buys('5319')).
query(buys('1818')).
query(buys('19336')).
query(buys('9586')).
