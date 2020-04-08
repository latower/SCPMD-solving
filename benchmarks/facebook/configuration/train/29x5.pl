10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('10227','9430').
0.992144832788721::trusts('18339','9430').
0.40951::trusts('18340','9430').
0.1::trusts('10392','9430').
0.19::trusts('12029','9430').
0.271::trusts('22037','9430').
0.5217031::trusts('33944','9430').
0.40951::trusts('9430','18340').
0.3439::trusts('18339','18340').
0.1::trusts('10392','18340').
0.1::trusts('30170','18340').
0.271::trusts('10227','10392').
0.1::trusts('9430','10392').
0.1::trusts('18340','10392').
0.19::trusts('12029','10392').
0.1::trusts('27497','10392').
0.1::trusts('30170','10392').
0.1::trusts('10227','12029').
0.1::trusts('9430','12029').
0.19::trusts('18339','12029').
0.1::trusts('10392','12029').
0.1::trusts('22044','12029').
0.19::trusts('33686','12029').
0.19::trusts('28883','12029').
0.3439::trusts('28264','12029').
0.468559::trusts('9430','22037').
0.271::trusts('22044','22037').
0.1::trusts('22032','22037').
0.56953279::trusts('9430','33944').
0.1::trusts('9430','30170').
0.1::trusts('18339','30170').
0.1::trusts('18340','30170').
0.19::trusts('10392','30170').
0.19::trusts('10392','27497').
0.19::trusts('12029','22044').
0.19::trusts('22037','22044').
0.1::trusts('24161','22044').
0.3439::trusts('12029','28883').
0.1::trusts('34543','28883').
0.19::trusts('28264','28883').
0.271::trusts('31525','28883').
0.1::trusts('27504','28883').
0.3439::trusts('12029','28264').
0.19::trusts('28883','28264').
0.1::trusts('22037','22032').
0.19::trusts('22044','24161').
0.19::trusts('28256','24161').
0.271::trusts('24161','28256').
0.3439::trusts('18339','34543').
0.19::trusts('28883','34543').
0.19::trusts('34558','34543').
0.1::trusts('34543','34558').
0.271::trusts('34537','34558').
0.3439::trusts('28883','31525').
0.19::trusts('29200','31525').
0.1::trusts('22986','27504').
0.1::trusts('28883','27504').
0.1::trusts('22032','29200').
0.1::trusts('31525','29200').
0.3439::trusts('44898','29200').
0.271::trusts('29200','44898').
0.1::trusts('18339','34537').
0.19::trusts('34543','34537').
0.1::trusts('34558','34537').
0.1::trusts('9430','21217').
0.271::trusts('27497','38207').
0.1::trusts('18339','41574').
0.1::trusts('18339','52346').

person('9430').
person('10227').
person('18339').
person('18340').
person('10392').
person('12029').
person('22037').
person('33944').
person('30170').
person('27497').
person('22044').
person('33686').
person('28883').
person('28264').
person('22032').
person('24161').
person('28256').
person('34543').
person('34558').
person('31525').
person('27504').
person('29200').
person('44898').
person('34537').
person('21217').
person('22986').
person('38207').
person('41574').
person('52346').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9430')).
query(buys('10227')).
query(buys('18339')).
query(buys('18340')).
query(buys('10392')).
query(buys('12029')).
query(buys('22037')).
query(buys('33944')).
query(buys('30170')).
query(buys('27497')).
query(buys('22044')).
query(buys('33686')).
query(buys('28883')).
query(buys('28264')).
query(buys('22032')).
query(buys('24161')).
query(buys('28256')).
query(buys('34543')).
query(buys('34558')).
query(buys('31525')).
query(buys('27504')).
query(buys('29200')).
query(buys('44898')).
query(buys('34537')).
query(buys('21217')).
query(buys('22986')).
query(buys('38207')).
query(buys('41574')).
query(buys('52346')).
