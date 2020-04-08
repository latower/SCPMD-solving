10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18914','7024').
0.271::trusts('41294','7024').
0.19::trusts('7024','18914').
0.5217031::trusts('7024','41294').
0.1::trusts('23350','41294').
0.1::trusts('7024','23350').
0.271::trusts('41294','23350').
0.19::trusts('17782','23350').
0.468559::trusts('30714','23350').
0.19::trusts('43440','23350').
0.19::trusts('40106','23350').
0.19::trusts('23350','17782').
0.1::trusts('23350','30714').
0.1::trusts('38182','30714').
0.19::trusts('61273','30714').
0.1::trusts('43648','30714').
0.19::trusts('41294','43440').
0.19::trusts('23350','43440').
0.1::trusts('23350','40106').
0.19::trusts('35108','40106').
0.40951::trusts('30714','38182').
0.1::trusts('18138','38182').
0.1::trusts('60964','38182').
0.1::trusts('30714','61273').
0.19::trusts('30714','43648').
0.1::trusts('49576','43648').
0.271::trusts('40106','35108').
0.19::trusts('35107','35108').
0.1::trusts('38182','18138').
0.19::trusts('38182','60964').
0.1::trusts('35108','35107').
0.271::trusts('2480','35107').
0.1::trusts('43648','49576').
0.40951::trusts('35107','2480').
0.1::trusts('41294','11069').
0.1::trusts('42400','11069').
0.40951::trusts('30714','52828').

person('7024').
person('18914').
person('41294').
person('23350').
person('17782').
person('30714').
person('43440').
person('40106').
person('38182').
person('61273').
person('43648').
person('35108').
person('18138').
person('60964').
person('35107').
person('49576').
person('2480').
person('11069').
person('42400').
person('52828').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7024')).
query(buys('18914')).
query(buys('41294')).
query(buys('23350')).
query(buys('17782')).
query(buys('30714')).
query(buys('43440')).
query(buys('40106')).
query(buys('38182')).
query(buys('61273')).
query(buys('43648')).
query(buys('35108')).
query(buys('18138')).
query(buys('60964')).
query(buys('35107')).
query(buys('49576')).
query(buys('2480')).
query(buys('11069')).
query(buys('42400')).
query(buys('52828')).
