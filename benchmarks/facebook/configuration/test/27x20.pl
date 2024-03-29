10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3839','2407').
0.1::trusts('2407','3839').
0.612579511::trusts('2210','3839').
0.19::trusts('3835','3839').
0.6513215599::trusts('2202','3839').
0.1::trusts('49044','3839').
0.1::trusts('1686','2210').
0.3439::trusts('3839','2210').
0.1::trusts('3835','2210').
0.1::trusts('2205','2210').
0.1::trusts('2202','2210').
0.19::trusts('2210','1686').
0.1::trusts('2200','1686').
0.19::trusts('2209','1686').
0.1::trusts('2213','1686').
0.3439::trusts('2210','3835').
0.3439::trusts('3839','3835').
0.19::trusts('3838','3835').
0.1::trusts('1686','2202').
0.68618940391::trusts('3839','2202').
0.19::trusts('9303','2202').
0.271::trusts('23942','2202').
0.1::trusts('1686','2200').
0.999931440386759::trusts('35281','2200').
0.271::trusts('6026','2200').
0.1::trusts('1686','2213').
0.1::trusts('24548','2213').
0.1::trusts('37069','2213').
0.271::trusts('2200','35281').
0.1::trusts('18799','9303').
0.19::trusts('2202','9303').
0.1::trusts('9300','9303').
0.19::trusts('9303','9300').
0.1::trusts('3260','9300').
0.1::trusts('2200','6026').
0.1::trusts('2213','24548').
0.1::trusts('2210','37069').
0.19::trusts('2210','3838').
0.1::trusts('3835','3838').
0.271::trusts('2202','23942').
0.1::trusts('9300','3260').
0.1::trusts('3838','1826').
0.1::trusts('48142','1826').
0.1::trusts('23942','24256').
0.1::trusts('1686','2220').
0.1::trusts('2202','2220').
0.1::trusts('3839','57386').
0.1::trusts('2202','44575').

person('2407').
person('3839').
person('2210').
person('1686').
person('3835').
person('2205').
person('2202').
person('2200').
person('2209').
person('2213').
person('49044').
person('35281').
person('9303').
person('18799').
person('9300').
person('6026').
person('24548').
person('37069').
person('3838').
person('23942').
person('3260').
person('1826').
person('48142').
person('24256').
person('2220').
person('57386').
person('44575').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2407')).
query(buys('3839')).
query(buys('2210')).
query(buys('1686')).
query(buys('3835')).
query(buys('2205')).
query(buys('2202')).
query(buys('2200')).
query(buys('2209')).
query(buys('2213')).
query(buys('49044')).
query(buys('35281')).
query(buys('9303')).
query(buys('18799')).
query(buys('9300')).
query(buys('6026')).
query(buys('24548')).
query(buys('37069')).
query(buys('3838')).
query(buys('23942')).
query(buys('3260')).
query(buys('1826')).
query(buys('48142')).
query(buys('24256')).
query(buys('2220')).
query(buys('57386')).
query(buys('44575')).
