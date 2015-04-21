:- export((need/1, relationship/3, location/1, object/1,
	   relation/1, roles_relation/1, symmetric/1,
	   implies/2, conflicting_roles/2, generalization/2,
	   contradiction/2)).

relation(sibling).
relation(parent).
relation(child).
relation(lover).
relation(killer).
relation(victim).
relation(rival).
relation(fling).
relation(associate).
relation(competitor).
relation(friends).
relation(employer).
relation(employee).
relation(leader).
relation(thug).


symmetric(sibling).
symmetric(associates).
symmetric(rival).
symmetric(competitor).
symmetric(fiends).
symmetric(fling).

roles_relation(parent/child).
roles_relation(killer/victim).
roles_relation(leader/thug).
roles_relation(employer/employee).


