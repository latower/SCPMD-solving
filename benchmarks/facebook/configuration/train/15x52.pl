10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('48847','1455').
0.1::trusts('2447','1455').
0.19::trusts('1455','48847').
0.972187161055631::trusts('22018','48847').
0.1::trusts('24598','17860').
0.1::trusts('31354','17860').
0.1::trusts('17860','31354').
0.1::trusts('17860','17859').
0.271::trusts('22028','17859').
0.3439::trusts('22018','17859').
0.1::trusts('21589','17859').
0.40951::trusts('17859','22028').
0.19::trusts('30821','22028').
0.19::trusts('17859','22018').
0.5217031::trusts('40542','22018').
0.94185026299696::trusts('48847','22018').
0.1::trusts('11476','22018').
0.1::trusts('17859','21589').
0.19::trusts('22028','30821').
0.878423345409431::trusts('22018','40542').
0.19::trusts('40541','40542').
0.5217031::trusts('22018','11476').
0.1::trusts('40542','40541').
0.1::trusts('17860','44284').

person('1455').
person('48847').
person('2447').
person('17860').
person('24598').
person('31354').
person('17859').
person('22028').
person('22018').
person('21589').
person('30821').
person('40542').
person('11476').
person('40541').
person('44284').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1455')).
query(buys('48847')).
query(buys('2447')).
query(buys('17860')).
query(buys('24598')).
query(buys('31354')).
query(buys('17859')).
query(buys('22028')).
query(buys('22018')).
query(buys('21589')).
query(buys('30821')).
query(buys('40542')).
query(buys('11476')).
query(buys('40541')).
query(buys('44284')).
