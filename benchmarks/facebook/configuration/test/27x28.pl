10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.7458134171671::trusts('10071','15685').
0.935389181107733::trusts('15670','15685').
0.997261072550047::trusts('15668','15685').
0.1::trusts('20944','15685').
0.19::trusts('33696','15685').
0.794108867905351::trusts('30525','15685').
0.947665236697264::trusts('5074','15685').
0.833228183003334::trusts('25069','15685').
0.1::trusts('30533','15685').
0.1::trusts('6198','15685').
0.271::trusts('18725','15685').
0.6513215599::trusts('15685','10071').
0.468559::trusts('15670','10071').
0.56953279::trusts('15668','10071').
0.1::trusts('24224','10071').
0.1::trusts('30533','10071').
0.920233556923127::trusts('15685','15670').
0.40951::trusts('10071','15670').
0.992930349509849::trusts('15668','15670').
0.1::trusts('20944','15670').
0.901522909781639::trusts('5074','15670').
0.993637314558864::trusts('15685','15668').
0.19::trusts('10071','15668').
0.997261072550047::trusts('15670','15668').
0.19::trusts('20944','15668').
0.468559::trusts('30525','15668').
0.998202989700086::trusts('5074','15668').
0.1::trusts('30526','15668').
0.1::trusts('25069','15668').
0.1::trusts('17403','15668').
0.19::trusts('15668','20944').
0.19::trusts('15685','33696').
0.1::trusts('15668','33696').
0.1::trusts('18725','33696').
0.19::trusts('14632','33696').
0.1::trusts('30530','33696').
0.878423345409431::trusts('15685','30525').
0.468559::trusts('15668','30525').
0.3439::trusts('5074','30525').
0.1::trusts('30533','30525').
0.864914828232701::trusts('15685','5074').
0.833228183003334::trusts('15670','5074').
0.1::trusts('6211','5074').
0.993637314558864::trusts('15668','5074').
0.271::trusts('30525','5074').
0.19::trusts('30532','5074').
0.1::trusts('15685','30533').
0.1::trusts('30525','30533').
0.19::trusts('6198','30533').
0.1::trusts('30533','6198').
0.271::trusts('15685','18725').
0.1::trusts('15668','18725').
0.271::trusts('30530','18725').
0.1::trusts('10071','24224').
0.1::trusts('6198','24224').
0.19::trusts('8072','23375').
0.271::trusts('6211','23375').
0.19::trusts('22709','23375').
0.999978485266901::trusts('8072','6211').
0.1::trusts('23375','6211').
0.1::trusts('15668','6211').
0.19::trusts('5074','6211').
0.19::trusts('7404','6211').
0.271::trusts('23375','22709').
0.1::trusts('26906','22709').
0.56953279::trusts('8072','7404').
0.271::trusts('6211','7404').
0.19::trusts('15670','30526').
0.1::trusts('15668','30526').
0.1::trusts('33696','14632').
0.1::trusts('33696','30530').
0.1::trusts('18725','30530').
0.1::trusts('5074','30532').
0.1::trusts('22709','26906').
0.19::trusts('15685','27242').
0.1::trusts('15670','27242').
0.1::trusts('15668','27242').
0.1::trusts('14632','63403').
0.1::trusts('14632','43492').

person('15685').
person('10071').
person('15670').
person('15668').
person('20944').
person('33696').
person('30525').
person('5074').
person('25069').
person('30533').
person('6198').
person('18725').
person('24224').
person('23375').
person('8072').
person('6211').
person('22709').
person('7404').
person('30526').
person('17403').
person('14632').
person('30530').
person('30532').
person('26906').
person('27242').
person('63403').
person('43492').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15685')).
query(buys('10071')).
query(buys('15670')).
query(buys('15668')).
query(buys('20944')).
query(buys('33696')).
query(buys('30525')).
query(buys('5074')).
query(buys('25069')).
query(buys('30533')).
query(buys('6198')).
query(buys('18725')).
query(buys('24224')).
query(buys('23375')).
query(buys('8072')).
query(buys('6211')).
query(buys('22709')).
query(buys('7404')).
query(buys('30526')).
query(buys('17403')).
query(buys('14632')).
query(buys('30530')).
query(buys('30532')).
query(buys('26906')).
query(buys('27242')).
query(buys('63403')).
query(buys('43492')).
