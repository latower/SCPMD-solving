10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('36150','35604').
0.19::trusts('41446','35604').
0.1::trusts('35183','35604').
0.19::trusts('9243','36150').
0.19::trusts('37780','36150').
0.1::trusts('19095','9243').
0.1::trusts('36150','9243').
0.1::trusts('22335','9243').
0.1::trusts('9243','19095').
0.19::trusts('9243','22335').
0.1::trusts('36150','22335').
0.1::trusts('37780','22335').
0.19::trusts('33035','22335').
0.3439::trusts('35834','22335').
0.271::trusts('36150','37780').
0.19::trusts('35809','37780').
0.1::trusts('22335','33035').
0.1::trusts('9243','35834').
0.3439::trusts('22335','35834').
0.19::trusts('37780','35809').
0.1::trusts('9243','35949').
0.1::trusts('36150','37781').
0.1::trusts('9243','14676').
0.1::trusts('19095','27862').
0.19::trusts('22335','32910').
0.1::trusts('38951','32910').
0.1::trusts('38951','38958').
0.1::trusts('19095','27861').

person('35604').
person('36150').
person('41446').
person('35183').
person('9243').
person('19095').
person('22335').
person('37780').
person('33035').
person('35834').
person('35809').
person('35949').
person('37781').
person('14676').
person('27862').
person('32910').
person('38951').
person('38958').
person('27861').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35604')).
query(buys('36150')).
query(buys('41446')).
query(buys('35183')).
query(buys('9243')).
query(buys('19095')).
query(buys('22335')).
query(buys('37780')).
query(buys('33035')).
query(buys('35834')).
query(buys('35809')).
query(buys('35949')).
query(buys('37781')).
query(buys('14676')).
query(buys('27862')).
query(buys('32910')).
query(buys('38951')).
query(buys('38958')).
query(buys('27861')).
