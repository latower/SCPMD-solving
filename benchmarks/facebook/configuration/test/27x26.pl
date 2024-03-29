10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('8418','22757').
0.271::trusts('37766','22757').
0.1::trusts('22757','8418').
0.56953279::trusts('30121','8418').
0.890581010868488::trusts('14673','8418').
0.1::trusts('27395','8418').
0.6513215599::trusts('37766','8418').
0.1::trusts('18414','8418').
0.19::trusts('22757','37766').
0.19::trusts('30121','37766').
0.68618940391::trusts('8418','37766').
0.40951::trusts('14673','37766').
0.1::trusts('40768','37766').
0.1::trusts('11549','30121').
0.77123207545039::trusts('8418','30121').
0.1::trusts('31241','30121').
0.3439::trusts('27481','30121').
0.19::trusts('27478','30121').
0.468559::trusts('14673','30121').
0.19::trusts('27395','30121').
0.19::trusts('35784','30121').
0.19::trusts('55112','30121').
0.1::trusts('28990','30121').
0.1::trusts('11549','31241').
0.1::trusts('30121','31241').
0.19::trusts('58843','31241').
0.19::trusts('30121','27481').
0.271::trusts('35784','27481').
0.1::trusts('11549','27478').
0.271::trusts('30121','27478').
0.1::trusts('55112','27478').
0.40951::trusts('30121','14673').
0.794108867905351::trusts('8418','14673').
0.1::trusts('27395','14673').
0.3439::trusts('37766','14673').
0.19::trusts('30121','27395').
0.19::trusts('8418','27395').
0.3439::trusts('37766','27395').
0.1::trusts('25664','27395').
0.271::trusts('40768','27395').
0.19::trusts('30121','35784').
0.468559::trusts('27481','35784').
0.19::trusts('30121','55112').
0.1::trusts('44872','55112').
0.1::trusts('30121','28990').
0.1::trusts('8418','18414').
0.1::trusts('30121','37749').
0.1::trusts('31241','58843').
0.1::trusts('27395','25664').
0.1::trusts('27395','40768').
0.1::trusts('37766','40768').
0.7458134171671::trusts('38451','40768').
0.1::trusts('32655','40768').
0.1::trusts('55112','44872').
0.612579511::trusts('40768','38451').
0.1::trusts('40768','32655').
0.1::trusts('18414','37096').
0.1::trusts('27481','35625').
0.1::trusts('18414','36403').
0.1::trusts('30121','28975').
0.1::trusts('40768','41898').
0.1::trusts('30121','19691').
0.1::trusts('31241','19691').

person('22757').
person('8418').
person('37766').
person('30121').
person('11549').
person('31241').
person('27481').
person('27478').
person('14673').
person('27395').
person('35784').
person('55112').
person('28990').
person('18414').
person('37749').
person('58843').
person('25664').
person('40768').
person('44872').
person('38451').
person('32655').
person('37096').
person('35625').
person('36403').
person('28975').
person('41898').
person('19691').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22757')).
query(buys('8418')).
query(buys('37766')).
query(buys('30121')).
query(buys('11549')).
query(buys('31241')).
query(buys('27481')).
query(buys('27478')).
query(buys('14673')).
query(buys('27395')).
query(buys('35784')).
query(buys('55112')).
query(buys('28990')).
query(buys('18414')).
query(buys('37749')).
query(buys('58843')).
query(buys('25664')).
query(buys('40768')).
query(buys('44872')).
query(buys('38451')).
query(buys('32655')).
query(buys('37096')).
query(buys('35625')).
query(buys('36403')).
query(buys('28975')).
query(buys('41898')).
query(buys('19691')).
