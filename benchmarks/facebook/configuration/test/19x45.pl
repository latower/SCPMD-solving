10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('2505','21906').
0.19::trusts('21906','2505').
0.19::trusts('4926','2505').
0.864914828232701::trusts('4926','14830').
0.1::trusts('14062','14830').
0.1::trusts('22564','14830').
0.1::trusts('22563','14830').
0.612579511::trusts('14830','4926').
0.3439::trusts('2505','4926').
0.1::trusts('12864','4926').
0.1::trusts('18694','4926').
0.1::trusts('14830','14062').
0.1::trusts('22564','14062').
0.271::trusts('22563','14062').
0.1::trusts('12864','14062').
0.1::trusts('14062','22564').
0.19::trusts('19965','22564').
0.19::trusts('14830','12864').
0.19::trusts('4926','12864').
0.19::trusts('40284','12864').
0.5217031::trusts('14377','18694').
0.19::trusts('4926','18694').
0.1::trusts('12220','18694').
0.19::trusts('10841','18694').
0.19::trusts('26225','18694').
0.19::trusts('22564','19965').
0.5217031::trusts('14377','12220').
0.40951::trusts('10841','12220').
0.1::trusts('18694','12220').
0.612579511::trusts('14377','10841').
0.5217031::trusts('12220','10841').
0.19::trusts('18694','10841').
0.19::trusts('22563','40284').
0.1::trusts('12864','40284').
0.1::trusts('18694','26225').
0.1::trusts('12220','22089').
0.1::trusts('2505','36536').
0.19::trusts('55630','36536').
0.1::trusts('29024','36536').
0.19::trusts('36536','55630').
0.19::trusts('36536','29024').

person('21906').
person('2505').
person('14830').
person('4926').
person('14062').
person('22564').
person('22563').
person('12864').
person('18694').
person('19965').
person('12220').
person('14377').
person('10841').
person('40284').
person('26225').
person('22089').
person('36536').
person('55630').
person('29024').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21906')).
query(buys('2505')).
query(buys('14830')).
query(buys('4926')).
query(buys('14062')).
query(buys('22564')).
query(buys('22563')).
query(buys('12864')).
query(buys('18694')).
query(buys('19965')).
query(buys('12220')).
query(buys('14377')).
query(buys('10841')).
query(buys('40284')).
query(buys('26225')).
query(buys('22089')).
query(buys('36536')).
query(buys('55630')).
query(buys('29024')).
