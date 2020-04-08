10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12495','5953').
0.1::trusts('5953','12495').
0.1::trusts('31303','12495').
0.19::trusts('9261','12495').
0.1::trusts('12495','31303').
0.1::trusts('39324','31303').
0.1::trusts('12495','9261').
0.1::trusts('37046','9261').
0.19::trusts('28358','9261').
0.1::trusts('54649','9261').
0.1::trusts('31303','39324').
0.1::trusts('32551','39324').
0.1::trusts('39324','32551').
0.1::trusts('9261','37046').
0.271::trusts('9261','28358').
0.19::trusts('57335','28358').
0.19::trusts('9261','54649').
0.19::trusts('28358','57335').
0.19::trusts('32551','27623').
0.1::trusts('31303','37132').
0.1::trusts('42438','38669').
0.19::trusts('9261','28399').
0.1::trusts('38669','28399').
0.1::trusts('54649','59189').

person('5953').
person('12495').
person('31303').
person('9261').
person('39324').
person('32551').
person('37046').
person('28358').
person('54649').
person('57335').
person('27623').
person('37132').
person('38669').
person('42438').
person('28399').
person('59189').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5953')).
query(buys('12495')).
query(buys('31303')).
query(buys('9261')).
query(buys('39324')).
query(buys('32551')).
query(buys('37046')).
query(buys('28358')).
query(buys('54649')).
query(buys('57335')).
query(buys('27623')).
query(buys('37132')).
query(buys('38669')).
query(buys('42438')).
query(buys('28399')).
query(buys('59189')).
