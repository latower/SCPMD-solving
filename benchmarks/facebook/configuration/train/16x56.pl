10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('14552','12447').
0.19::trusts('16875','12447').
0.271::trusts('12447','14552').
0.3439::trusts('16875','14552').
0.468559::trusts('7667','14552').
0.19::trusts('12447','16875').
0.3439::trusts('14552','16875').
0.271::trusts('7667','16875').
0.1::trusts('23257','16875').
0.1::trusts('12447','7667').
0.3439::trusts('14552','7667').
0.1::trusts('16875','7667').
0.1::trusts('2692','7667').
0.1::trusts('18796','7667').
0.1::trusts('29280','8559').
0.1::trusts('8559','29280').
0.40951::trusts('18796','29280').
0.271::trusts('30436','29280').
0.1::trusts('19743','23257').
0.5217031::trusts('29280','18796').
0.1::trusts('7667','18796').
0.1::trusts('26131','18796').
0.271::trusts('29280','30436').
0.1::trusts('31458','30436').
0.1::trusts('21892','30436').
0.1::trusts('18796','26131').
0.1::trusts('29280','31458').
0.468559::trusts('30436','31458').
0.271::trusts('30436','21892').
0.1::trusts('23257','19743').
0.1::trusts('12447','17448').
0.1::trusts('12447','32284').

person('12447').
person('14552').
person('16875').
person('7667').
person('8559').
person('29280').
person('23257').
person('18796').
person('30436').
person('2692').
person('26131').
person('31458').
person('21892').
person('19743').
person('17448').
person('32284').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12447')).
query(buys('14552')).
query(buys('16875')).
query(buys('7667')).
query(buys('8559')).
query(buys('29280')).
query(buys('23257')).
query(buys('18796')).
query(buys('30436')).
query(buys('2692')).
query(buys('26131')).
query(buys('31458')).
query(buys('21892')).
query(buys('19743')).
query(buys('17448')).
query(buys('32284')).
