10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('49973','23231').
0.1::trusts('18510','23231').
0.1::trusts('43516','23231').
0.1::trusts('1334','23231').
0.40951::trusts('23231','49973').
0.1::trusts('23231','18510').
0.271::trusts('43514','43516').
0.1::trusts('23231','1334').
0.1::trusts('11192','1334').
0.3439::trusts('17814','22833').
0.1::trusts('11192','22833').
0.19::trusts('27667','22833').
0.1::trusts('12191','22833').
0.612579511::trusts('22833','17814').
0.1::trusts('22833','11192').
0.1::trusts('31487','11192').
0.271::trusts('22833','27667').
0.3439::trusts('26529','27667').
0.3439::trusts('22833','12191').
0.1::trusts('40192','12191').
0.1::trusts('43516','43514').
0.19::trusts('27667','26529').
0.1::trusts('10570','26529').
0.271::trusts('63186','26529').
0.1::trusts('22833','40192').
0.19::trusts('12191','40192').
0.19::trusts('26529','10570').
0.1::trusts('26529','63186').
0.1::trusts('23231','37431').
0.1::trusts('11192','37431').
0.1::trusts('43516','55970').
0.1::trusts('1334','37432').

person('23231').
person('49973').
person('18510').
person('43516').
person('1334').
person('22833').
person('17814').
person('11192').
person('27667').
person('12191').
person('31487').
person('43514').
person('26529').
person('40192').
person('10570').
person('63186').
person('37431').
person('55970').
person('37432').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23231')).
query(buys('49973')).
query(buys('18510')).
query(buys('43516')).
query(buys('1334')).
query(buys('22833')).
query(buys('17814')).
query(buys('11192')).
query(buys('27667')).
query(buys('12191')).
query(buys('31487')).
query(buys('43514')).
query(buys('26529')).
query(buys('40192')).
query(buys('10570')).
query(buys('63186')).
query(buys('37431')).
query(buys('55970')).
query(buys('37432')).
