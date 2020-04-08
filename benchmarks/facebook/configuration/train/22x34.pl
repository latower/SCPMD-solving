10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('22329','36725').
0.1::trusts('22328','36725').
0.1::trusts('36725','22329').
0.56953279::trusts('32890','22329').
0.1::trusts('22354','22329').
0.19::trusts('40719','22329').
0.1::trusts('31271','22329').
0.935389181107733::trusts('22328','22329').
0.1::trusts('36725','22328').
0.19::trusts('32890','22328').
0.19::trusts('22329','22328').
0.271::trusts('22290','25555').
0.271::trusts('25555','22290').
0.19::trusts('12005','22290').
0.1::trusts('22354','22290').
0.271::trusts('26195','22290').
0.7458134171671::trusts('42231','22290').
0.19::trusts('22290','12005').
0.1::trusts('11996','12005').
0.271::trusts('36724','22354').
0.1::trusts('22290','22354').
0.1::trusts('22329','22354').
0.1::trusts('31271','22354').
0.271::trusts('22290','26195').
0.68618940391::trusts('22290','42231').
0.271::trusts('52887','42231').
0.3439::trusts('36724','32890').
0.1::trusts('22290','32890').
0.1::trusts('11825','32890').
0.468559::trusts('22329','32890').
0.271::trusts('40719','32890').
0.271::trusts('22328','32890').
0.1::trusts('47192','32890').
0.56953279::trusts('36724','11825').
0.19::trusts('32890','11825').
0.1::trusts('22354','11825').
0.1::trusts('40719','11825').
0.1::trusts('32890','40719').
0.1::trusts('22329','40719').
0.19::trusts('31545','40719').
0.1::trusts('12005','11996').
0.1::trusts('32890','31271').
0.1::trusts('22354','31271').
0.19::trusts('30306','31271').
0.19::trusts('22329','31271').
0.271::trusts('31271','30306').
0.19::trusts('40719','31545').
0.19::trusts('42231','52887').
0.1::trusts('12005','21799').
0.1::trusts('32890','42424').
0.1::trusts('25555','36350').

person('36725').
person('22329').
person('22328').
person('25555').
person('22290').
person('12005').
person('22354').
person('26195').
person('42231').
person('32890').
person('36724').
person('11825').
person('40719').
person('47192').
person('11996').
person('31271').
person('30306').
person('31545').
person('52887').
person('21799').
person('42424').
person('36350').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('36725')).
query(buys('22329')).
query(buys('22328')).
query(buys('25555')).
query(buys('22290')).
query(buys('12005')).
query(buys('22354')).
query(buys('26195')).
query(buys('42231')).
query(buys('32890')).
query(buys('36724')).
query(buys('11825')).
query(buys('40719')).
query(buys('47192')).
query(buys('11996')).
query(buys('31271')).
query(buys('30306')).
query(buys('31545')).
query(buys('52887')).
query(buys('21799')).
query(buys('42424')).
query(buys('36350')).
