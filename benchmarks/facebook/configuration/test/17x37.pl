10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('41843','10852').
0.1::trusts('13622','10852').
0.1::trusts('908','10852').
0.1::trusts('10852','41843').
0.19::trusts('6792','41843').
0.19::trusts('53569','41843').
0.1::trusts('55035','41843').
0.1::trusts('10852','13622').
0.1::trusts('51395','6792').
0.1::trusts('41607','6792').
0.1::trusts('41843','6792').
0.1::trusts('53569','6792').
0.3439::trusts('6792','51395').
0.1::trusts('6792','41607').
0.1::trusts('5684','41607').
0.19::trusts('42918','41607').
0.1::trusts('6792','53569').
0.1::trusts('41843','53569').
0.19::trusts('62061','53569').
0.40951::trusts('41607','5684').
0.5217031::trusts('41607','42918').
0.19::trusts('53569','62061').
0.1::trusts('62060','62061').
0.1::trusts('62873','62061').
0.1::trusts('62061','62060').
0.1::trusts('5684','50900').
0.1::trusts('41607','53763').
0.1::trusts('41607','58200').

person('10852').
person('41843').
person('13622').
person('908').
person('6792').
person('51395').
person('41607').
person('53569').
person('5684').
person('42918').
person('55035').
person('62061').
person('62060').
person('62873').
person('50900').
person('53763').
person('58200').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10852')).
query(buys('41843')).
query(buys('13622')).
query(buys('908')).
query(buys('6792')).
query(buys('51395')).
query(buys('41607')).
query(buys('53569')).
query(buys('5684')).
query(buys('42918')).
query(buys('55035')).
query(buys('62061')).
query(buys('62060')).
query(buys('62873')).
query(buys('50900')).
query(buys('53763')).
query(buys('58200')).
