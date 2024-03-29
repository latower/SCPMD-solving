10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.717570463519::trusts('2400','227').
0.1::trusts('11481','227').
0.5217031::trusts('2420','227').
0.271::trusts('229','227').
0.19::trusts('4686','227').
0.19::trusts('227','11481').
0.1::trusts('230','11481').
0.19::trusts('2379','11481').
0.19::trusts('47784','11481').
0.19::trusts('227','2420').
0.1::trusts('2400','2420').
0.1::trusts('4686','2420').
0.271::trusts('227','229').
0.1::trusts('230','229').
0.1::trusts('12716','229').
0.19::trusts('223','229').
0.1::trusts('219','229').
0.19::trusts('227','4686').
0.271::trusts('2400','4686').
0.271::trusts('2420','4686').
0.1::trusts('11481','47784').
0.1::trusts('229','12716').
0.3439::trusts('39830','12716').
0.1::trusts('227','223').
0.1::trusts('230','223').
0.1::trusts('229','223').
0.1::trusts('229','219').
0.271::trusts('12716','39830').
0.468559::trusts('2400','5608').
0.1::trusts('12715','12714').
0.1::trusts('12716','12714').
0.1::trusts('2400','5611').
0.1::trusts('12716','12487').
0.1::trusts('47784','47787').
0.40951::trusts('50873','47787').
0.3439::trusts('47787','50873').
0.271::trusts('47786','50873').
0.1::trusts('47784','47786').
0.19::trusts('50873','47786').

person('227').
person('2400').
person('11481').
person('2420').
person('229').
person('4686').
person('230').
person('2379').
person('47784').
person('12716').
person('223').
person('219').
person('39830').
person('5608').
person('12714').
person('12715').
person('5611').
person('12487').
person('47787').
person('50873').
person('47786').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('227')).
query(buys('2400')).
query(buys('11481')).
query(buys('2420')).
query(buys('229')).
query(buys('4686')).
query(buys('230')).
query(buys('2379')).
query(buys('47784')).
query(buys('12716')).
query(buys('223')).
query(buys('219')).
query(buys('39830')).
query(buys('5608')).
query(buys('12714')).
query(buys('12715')).
query(buys('5611')).
query(buys('12487')).
query(buys('47787')).
query(buys('50873')).
query(buys('47786')).
