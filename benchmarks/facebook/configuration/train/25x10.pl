10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('6940','8548').
0.814697981114816::trusts('6939','8548').
0.1::trusts('8561','8548').
0.1::trusts('14132','8548').
0.3439::trusts('24135','8548').
0.19::trusts('15686','8548').
0.56953279::trusts('8548','6940').
0.19::trusts('8555','6940').
0.612579511::trusts('6939','6940').
0.1::trusts('13907','6940').
0.7458134171671::trusts('13909','6940').
0.19::trusts('6665','6940').
0.1::trusts('1568','6940').
0.19::trusts('24135','6940').
0.814697981114816::trusts('8548','6939').
0.40951::trusts('6940','6939').
0.271::trusts('14132','6939').
0.271::trusts('24205','6939').
0.271::trusts('24135','6939').
0.1::trusts('8548','8561').
0.814697981114816::trusts('14132','8561').
0.1::trusts('24205','8561').
0.40951::trusts('6665','8561').
0.271::trusts('8548','14132').
0.40951::trusts('6939','14132').
0.814697981114816::trusts('8561','14132').
0.1::trusts('8548','24135').
0.1::trusts('6940','24135').
0.271::trusts('6939','24135').
0.271::trusts('34695','24135').
0.271::trusts('33405','24135').
0.19::trusts('8548','15686').
0.271::trusts('6940','8555').
0.1::trusts('13909','8555').
0.1::trusts('6665','8555').
0.1::trusts('19061','6665').
0.19::trusts('8554','6665').
0.1::trusts('6940','6665').
0.40951::trusts('8561','6665').
0.1::trusts('24205','6665').
0.1::trusts('1568','6665').
0.271::trusts('3456','6665').
0.1::trusts('6940','8554').
0.1::trusts('6665','8554').
0.1::trusts('13907','1568').
0.6513215599::trusts('13909','1568').
0.1::trusts('19061','24205').
0.40951::trusts('6939','24205').
0.19::trusts('8561','24205').
0.19::trusts('6665','24205').
0.1::trusts('6665','3456').
0.1::trusts('27379','3456').
0.271::trusts('24135','34695').
0.19::trusts('24135','33405').
0.19::trusts('3456','27379').
0.1::trusts('19061','19872').
0.1::trusts('8548','24790').
0.1::trusts('13907','13911').
0.40951::trusts('13909','13911').
0.271::trusts('8548','24788').
0.1::trusts('8554','30437').
0.1::trusts('44936','30437').

person('8548').
person('6940').
person('6939').
person('8561').
person('14132').
person('24135').
person('15686').
person('8555').
person('13909').
person('6665').
person('8554').
person('13907').
person('1568').
person('24205').
person('19061').
person('3456').
person('34695').
person('33405').
person('27379').
person('19872').
person('24790').
person('13911').
person('24788').
person('30437').
person('44936').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8548')).
query(buys('6940')).
query(buys('6939')).
query(buys('8561')).
query(buys('14132')).
query(buys('24135')).
query(buys('15686')).
query(buys('8555')).
query(buys('13909')).
query(buys('6665')).
query(buys('8554')).
query(buys('13907')).
query(buys('1568')).
query(buys('24205')).
query(buys('19061')).
query(buys('3456')).
query(buys('34695')).
query(buys('33405')).
query(buys('27379')).
query(buys('19872')).
query(buys('24790')).
query(buys('13911')).
query(buys('24788')).
query(buys('30437')).
query(buys('44936')).
