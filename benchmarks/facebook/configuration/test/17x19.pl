10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.56953279::trusts('22434','7120').
0.468559::trusts('19482','7120').
0.1::trusts('23439','7120').
0.1::trusts('23437','7120').
0.56953279::trusts('7120','22434').
0.19::trusts('7120','19482').
0.1::trusts('8236','19482').
0.1::trusts('7120','23439').
0.1::trusts('41366','23439').
0.1::trusts('7120','23437').
0.1::trusts('19482','8236').
0.1::trusts('6330','8236').
0.1::trusts('23439','41366').
0.19::trusts('7120','6330').
0.1::trusts('8236','6330').
0.1::trusts('8238','6330').
0.1::trusts('8237','6330').
0.1::trusts('6330','8238').
0.1::trusts('8237','8238').
0.1::trusts('48954','8238').
0.1::trusts('52792','8238').
0.1::trusts('7131','8237').
0.1::trusts('50095','8237').
0.1::trusts('8238','48954').
0.1::trusts('8238','52792').
0.1::trusts('8237','7131').
0.1::trusts('7120','23429').
0.19::trusts('22434','23429').
0.3439::trusts('7120','23430').
0.1::trusts('8238','11309').

person('7120').
person('22434').
person('19482').
person('23439').
person('23437').
person('8236').
person('41366').
person('6330').
person('8238').
person('8237').
person('48954').
person('52792').
person('7131').
person('50095').
person('23429').
person('23430').
person('11309').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7120')).
query(buys('22434')).
query(buys('19482')).
query(buys('23439')).
query(buys('23437')).
query(buys('8236')).
query(buys('41366')).
query(buys('6330')).
query(buys('8238')).
query(buys('8237')).
query(buys('48954')).
query(buys('52792')).
query(buys('7131')).
query(buys('50095')).
query(buys('23429')).
query(buys('23430')).
query(buys('11309')).
