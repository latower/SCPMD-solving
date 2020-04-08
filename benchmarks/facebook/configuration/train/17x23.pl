10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('33465','34044').
0.19::trusts('34044','33465').
0.1::trusts('33342','33465').
0.468559::trusts('23382','33465').
0.1::trusts('62484','33465').
0.271::trusts('38327','33465').
0.271::trusts('32353','33465').
0.1::trusts('33461','33342').
0.1::trusts('33465','33342').
0.1::trusts('33342','33461').
0.1::trusts('28506','33461').
0.271::trusts('33465','23382').
0.3439::trusts('36251','23382').
0.271::trusts('33465','38327').
0.3439::trusts('33465','32353').
0.612579511::trusts('26661','32353').
0.1::trusts('21616','32353').
0.40951::trusts('23382','36251').
0.1::trusts('36742','36251').
0.68618940391::trusts('32353','26661').
0.271::trusts('32353','21616').
0.1::trusts('38945','21616').
0.1::trusts('36251','36742').
0.1::trusts('23382','1980').
0.271::trusts('33465','34657').
0.1::trusts('38945','62047').

person('34044').
person('33465').
person('33342').
person('33461').
person('28506').
person('23382').
person('62484').
person('38327').
person('32353').
person('36251').
person('26661').
person('21616').
person('38945').
person('36742').
person('1980').
person('34657').
person('62047').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('34044')).
query(buys('33465')).
query(buys('33342')).
query(buys('33461')).
query(buys('28506')).
query(buys('23382')).
query(buys('62484')).
query(buys('38327')).
query(buys('32353')).
query(buys('36251')).
query(buys('26661')).
query(buys('21616')).
query(buys('38945')).
query(buys('36742')).
query(buys('1980')).
query(buys('34657')).
query(buys('62047')).
