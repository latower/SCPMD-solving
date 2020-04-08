10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.68618940391::trusts('14359','21207').
0.271::trusts('38359','21207').
0.5217031::trusts('21207','14359').
0.1::trusts('32543','14359').
0.271::trusts('21207','38359').
0.1::trusts('21748','15667').
0.1::trusts('15667','21748').
0.271::trusts('16795','21748').
0.19::trusts('21748','16795').
0.1::trusts('14359','32543').
0.19::trusts('27105','32543').
0.19::trusts('12282','32543').
0.1::trusts('46657','32543').
0.19::trusts('34317','32543').
0.1::trusts('32543','27105').
0.271::trusts('15667','12282').
0.3439::trusts('32543','12282').
0.1::trusts('32543','46657').
0.3439::trusts('32543','34317').
0.3439::trusts('32016','34317').
0.468559::trusts('34317','32016').
0.1::trusts('34317','43229').
0.1::trusts('61991','43229').
0.1::trusts('21207','21210').

person('21207').
person('14359').
person('38359').
person('15667').
person('21748').
person('16795').
person('32543').
person('27105').
person('12282').
person('46657').
person('34317').
person('32016').
person('43229').
person('61991').
person('21210').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21207')).
query(buys('14359')).
query(buys('38359')).
query(buys('15667')).
query(buys('21748')).
query(buys('16795')).
query(buys('32543')).
query(buys('27105')).
query(buys('12282')).
query(buys('46657')).
query(buys('34317')).
query(buys('32016')).
query(buys('43229')).
query(buys('61991')).
query(buys('21210')).
