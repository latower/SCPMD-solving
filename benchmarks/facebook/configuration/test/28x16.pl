10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('28571','9652').
0.40951::trusts('19156','9652').
0.19::trusts('396','9652').
0.1::trusts('3185','9652').
0.612579511::trusts('19782','9652').
0.271::trusts('28576','9652').
0.1::trusts('3185','28571').
0.468559::trusts('9652','19156').
0.19::trusts('13858','19156').
0.1::trusts('26127','19156').
0.996242897873864::trusts('19160','19156').
0.19::trusts('19782','19156').
0.3439::trusts('29478','19156').
0.19::trusts('16330','19156').
0.68618940391::trusts('11224','19156').
0.957608841724784::trusts('30472','19156').
0.1::trusts('27044','19156').
0.468559::trusts('26610','19156').
0.19::trusts('6277','19156').
0.19::trusts('29883','19156').
0.5217031::trusts('9652','3185').
0.19::trusts('28571','3185').
0.77123207545039::trusts('9652','19782').
0.468559::trusts('19156','19782').
0.271::trusts('9652','28576').
0.19::trusts('19156','28576').
0.1::trusts('19874','28576').
0.271::trusts('11714','13858').
0.271::trusts('19156','13858').
0.468559::trusts('29478','13858').
0.40951::trusts('16786','13858').
0.19::trusts('30472','13858').
0.5217031::trusts('13858','29478').
0.1::trusts('11714','29478').
0.468559::trusts('19160','29478').
0.717570463519::trusts('19156','29478').
0.1::trusts('11224','29478').
0.19::trusts('16786','29478').
0.271::trusts('30472','29478').
0.878423345409431::trusts('13858','16786').
0.77123207545039::trusts('11714','16786').
0.19::trusts('19156','16786').
0.468559::trusts('29478','16786').
0.1::trusts('30472','16786').
0.19::trusts('13858','30472').
0.6513215599::trusts('19160','30472').
0.99484622479268::trusts('19156','30472').
0.19::trusts('29478','30472').
0.961847957552305::trusts('11224','30472').
0.1::trusts('16786','30472').
0.1::trusts('6277','30472').
0.1::trusts('26354','30472').
0.1::trusts('19782','26127').
0.1::trusts('19874','26127').
0.19::trusts('9652','19874').
0.1::trusts('26127','19874').
0.1::trusts('19156','19874').
0.1::trusts('28576','19874').
0.997261072550047::trusts('19156','19160').
0.40951::trusts('29478','19160').
0.969096845617367::trusts('11224','19160').
0.68618940391::trusts('30472','19160').
0.1::trusts('26610','19160').
0.271::trusts('6277','19160').
0.1::trusts('23385','19160').
0.1::trusts('27151','19160').
0.983576796731739::trusts('19160','11224').
0.6513215599::trusts('19156','11224').
0.1::trusts('29478','11224').
0.833228183003334::trusts('30472','11224').
0.878423345409431::trusts('6277','11224').
0.271::trusts('36199','11224').
0.1::trusts('19160','26610').
0.40951::trusts('19156','26610').
0.1::trusts('26594','26610').
0.77123207545039::trusts('19160','23385').
0.1::trusts('19160','27151').
0.1::trusts('19160','16330').
0.40951::trusts('19156','16330').
0.1::trusts('19160','27044').
0.1::trusts('19156','27044').
0.19::trusts('19156','29883').
0.1::trusts('26610','26594').
0.3439::trusts('11224','36199').
0.1::trusts('19156','26354').
0.1::trusts('30472','26354').
0.1::trusts('11714','20059').
0.40951::trusts('19156','29047').

person('9652').
person('28571').
person('19156').
person('396').
person('3185').
person('19782').
person('28576').
person('13858').
person('11714').
person('29478').
person('16786').
person('30472').
person('26127').
person('19874').
person('19160').
person('11224').
person('26610').
person('6277').
person('23385').
person('27151').
person('16330').
person('27044').
person('29883').
person('26594').
person('36199').
person('26354').
person('20059').
person('29047').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9652')).
query(buys('28571')).
query(buys('19156')).
query(buys('396')).
query(buys('3185')).
query(buys('19782')).
query(buys('28576')).
query(buys('13858')).
query(buys('11714')).
query(buys('29478')).
query(buys('16786')).
query(buys('30472')).
query(buys('26127')).
query(buys('19874')).
query(buys('19160')).
query(buys('11224')).
query(buys('26610')).
query(buys('6277')).
query(buys('23385')).
query(buys('27151')).
query(buys('16330')).
query(buys('27044')).
query(buys('29883')).
query(buys('26594')).
query(buys('36199')).
query(buys('26354')).
query(buys('20059')).
query(buys('29047')).
