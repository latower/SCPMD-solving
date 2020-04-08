10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('26','1827').
0.271::trusts('1827','26').
0.271::trusts('1814','26').
0.1::trusts('1822','26').
0.1::trusts('768','26').
0.468559::trusts('11625','11624').
0.1::trusts('1821','11624').
0.19::trusts('1814','11624').
0.19::trusts('11624','1821').
0.1::trusts('1814','1821').
0.19::trusts('1822','1821').
0.1::trusts('38373','1821').
0.40951::trusts('11624','1814').
0.1::trusts('1821','1814').
0.271::trusts('26','1814').
0.1::trusts('37287','1814').
0.5217031::trusts('849','1700').
0.1::trusts('1814','1700').
0.3439::trusts('13460','1700').
0.271::trusts('1822','1700').
0.19::trusts('849','13460').
0.19::trusts('849','1822').
0.19::trusts('1700','1822').
0.1::trusts('1821','1822').
0.1::trusts('1814','1822').
0.1::trusts('1814','37287').
0.1::trusts('1700','28593').
0.1::trusts('849','1698').
0.271::trusts('1700','1698').
0.1::trusts('1822','54397').
0.1::trusts('1698','1704').
0.1::trusts('1702','1704').
0.1::trusts('1822','1825').

person('1827').
person('26').
person('11624').
person('11625').
person('1821').
person('1814').
person('1700').
person('849').
person('13460').
person('1822').
person('38373').
person('37287').
person('28593').
person('768').
person('1698').
person('54397').
person('1704').
person('1702').
person('1825').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1827')).
query(buys('26')).
query(buys('11624')).
query(buys('11625')).
query(buys('1821')).
query(buys('1814')).
query(buys('1700')).
query(buys('849')).
query(buys('13460')).
query(buys('1822')).
query(buys('38373')).
query(buys('37287')).
query(buys('28593')).
query(buys('768')).
query(buys('1698')).
query(buys('54397')).
query(buys('1704')).
query(buys('1702')).
query(buys('1825')).
