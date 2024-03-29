10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7883','18311').
0.1::trusts('10605','18311').
0.1::trusts('1662','18311').
0.1::trusts('21754','18311').
0.1::trusts('7883','10605').
0.1::trusts('21754','10605').
0.1::trusts('894','10605').
0.1::trusts('3436','10605').
0.271::trusts('18311','1662').
0.19::trusts('7883','1662').
0.1::trusts('1676','1662').
0.1::trusts('22210','1662').
0.1::trusts('18311','21754').
0.271::trusts('7883','21754').
0.1::trusts('894','21754').
0.1::trusts('3436','21754').
0.1::trusts('22210','21754').
0.1::trusts('13671','21754').
0.1::trusts('10605','894').
0.1::trusts('21754','894').
0.3439::trusts('13304','894').
0.271::trusts('14376','894').
0.271::trusts('7883','3436').
0.1::trusts('21754','3436').
0.1::trusts('19434','3436').
0.1::trusts('22115','3436').
0.1::trusts('22213','3436').
0.1::trusts('21754','22210').
0.1::trusts('22205','22210').
0.1::trusts('13304','22210').
0.3439::trusts('7883','13671').
0.1::trusts('1662','13671').
0.1::trusts('7883','13304').
0.271::trusts('894','13304').
0.19::trusts('22210','13304').
0.271::trusts('14376','13304').
0.1::trusts('2248','13304').
0.271::trusts('7883','14376').
0.1::trusts('10605','14376').
0.1::trusts('1662','14376').
0.19::trusts('894','14376').
0.468559::trusts('13304','14376').
0.1::trusts('2248','14376').
0.40951::trusts('3436','19434').
0.1::trusts('18145','19434').
0.1::trusts('22115','19434').
0.1::trusts('22213','19434').
0.1::trusts('3436','22115').
0.1::trusts('18145','22115').
0.1::trusts('19434','22115').
0.1::trusts('3436','22213').
0.1::trusts('30838','22213').
0.3439::trusts('7883','22205').
0.1::trusts('21754','22205').
0.1::trusts('22210','22205').
0.19::trusts('19434','18145').
0.1::trusts('40815','18145').
0.1::trusts('22115','18145').
0.1::trusts('7883','10003').
0.1::trusts('3436','41213').
0.1::trusts('19434','22553').

person('18311').
person('7883').
person('10605').
person('1662').
person('21754').
person('894').
person('3436').
person('1676').
person('22210').
person('13671').
person('13304').
person('14376').
person('19434').
person('22115').
person('22213').
person('22205').
person('18145').
person('40815').
person('2248').
person('30838').
person('10003').
person('41213').
person('22553').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18311')).
query(buys('7883')).
query(buys('10605')).
query(buys('1662')).
query(buys('21754')).
query(buys('894')).
query(buys('3436')).
query(buys('1676')).
query(buys('22210')).
query(buys('13671')).
query(buys('13304')).
query(buys('14376')).
query(buys('19434')).
query(buys('22115')).
query(buys('22213')).
query(buys('22205')).
query(buys('18145')).
query(buys('40815')).
query(buys('2248')).
query(buys('30838')).
query(buys('10003')).
query(buys('41213')).
query(buys('22553')).
