:- export((need/1, relationship/3, location/1, object/1,
	   relation/1, roles_relation/1, symmetric/1,
	   implies/2, conflicting_roles/2, generalization/2,
	   contradiction/2)).

symmetric(sibling).
symmetric(associate).
symmetric(rival).
symmetric(fiends).
symmetric(fling).
symmetric(lover).
symmetric(partners_in_crime).
roles_relation(killer/victim).
roles_relation(leader/thug).
roles_relation(employer/employee).
roles_relation(heist_leader/robber).
roles_relation(politician/staffer).

symmetric(rival_coworkers).
implies(relationship(X, rival_coworkers, _),
	role(X, employee)).
implies(relationship(_, rival_coworkers, Y),
	role(Y, employee)).
	
symmetric(rival_managers).
implies(relationship(X, rival_managers, _),
	role(X, employer)).
implies(relationship(_, rival_managers, Y),
	role(Y, employer)).

symmetric(rival_gang_leaders).
implies(relationship(X, rival_gang_leaders, _),
	role(X, leader)).
implies(relationship(_, rival_gang_leaders, Y),
	role(Y, leader)).

symmetric(rival_racers).
implies(relationship(X, rival_racers, _),
	role(X, racer)).
implies(relationship(_, rival_racers, Y),
	role(Y, racer)).

symmetric(past_cell_mates).
implies(relationship(X, past_cell_mates, _),
	role(X, thug)).
implies(relationship(_, past_cell_mates, Y),
	role(Y, thug)).

generalizes(sibling,family).
generalizes(thug,gang_member).
generalizes(leader,gang_member).
generalizes(employee,casino_worker).
generalizes(employer,casino_worker).


conflicing_roles(politician,thug).
conflicting_roles(politician,employee).
conflicting_roles(leader,employee).
conflicting_roles(racer,thug).
conflicting_roles(sibling,friend).
conflicting_roles(heist_leader,thug).


contradiction(relationship(X, robber/heist_leader, Y),
	      relationship(X, robber/heist_leader, Z)) :-
	Y \= Z.

contradiction(relationship(X, thug/leader, Y),
	      relationship(X, thug/leader, Z)) :-
	Y \= Z.

contradiction(relationship(X, victim/killer, Y),
	      relationship(X, victim/killer, Z)) :-
	Y \= Z.

contradiction(relationship(X, staffer/politician, Y),
	      relationship(X, staffer/politician, Z)) :-
	Y \= Z.
	
need(a_million_bucks_yesterday).
need(to_pay_off_gambling_debts).
need(to_relax).
need(to_get_payback).
need(get_outa_dodge).
need(just_to_win_big).
need(the_thrill_of_a_heist).
need(buy_like_five_islands).
need(get_my_car_back).
need(find_the_thrill_of_love).
need(prove_ones_worth).
need(make_it_big_in_silicon_valley).
need(buy_drugs_and_lots_more_drugs).

need(get_back_at_the_boss).
implies(needs(C, get_back_at_the_boss),
	role(C, employee)).

need(win_next_election).
implies(needs(C, win_next_election),
	role(C, politician)).
	
object(silenced_pistol).
object(large_pistol).
object(assault_rifle).
object(poker_chips).
object(grenade).%yolo
object(credit_card).
object(roses).
object(keycard).
object(lots_of_rope).
object(empty_briefcase).
object(car_keys).
object(covert_listening_devices_or_bugs).
object(wedding_rings).
object(a_magic_hat).
object(roys_tiger).
object(a_few_numbers_on_a_cocktail_napkin).
object(hacksaw).
object(buzzsaw).
object(drag_racer).
object(valet_ticket).
object(torches).
object(bottle_service_at_the_encore).
object(secret_stash_of_fake_drugs).

location(feeding_the_lions_at_the_mgm).
location(why_am_in_mesquite).
location(studio_54).
location(the_bunny_ranch).
location(rollercoaster_of_the_new_york_new_york).
location(gold_and_silver_pawn).
location(the_little_chapel_on_the_hill_officiating_a_wedding).
location(the_little_chapel_on_the_hill_watching_a_wedding).
location(penthouse_of_monte_carlo).
location(watching_celine_dion_at_caesars_palace).
location(sam_woos_in_chinatown).
location(downtown_vegas_looking_at_the_lazer_show).
location(las_vegas_motor_speedway).
location(in_the_bellagio_fountains_without_clothes).
location(face_first_in_wynn_buffet).
location(at_the_gun_store).
location(golfing_at_vegas_municipal).
location(drag_racing_on_the_strip).
location(drunk_tank).
location(watching_bonneville_salt_flats).
location(drag_racing_on_bonneville_salt_flats).
location(in_and_out).
location(airport).
location(wathing_a_magic_show).
location(fabulous_las_vegas_sign).
