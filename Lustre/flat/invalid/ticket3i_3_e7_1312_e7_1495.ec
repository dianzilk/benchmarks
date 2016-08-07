node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  e7: bool;
  e8: bool;
  e9: bool;
  init_a1: int;
  init_a2: int;
  init_a3: int;
  init_t: int)
returns
  (OK: bool);

var
  V62_p1: int;
  V63_p2: int;
  V64_p3: int;
  V65_t: int;
  V66_s: int;
  V67_a1: int;
  V68_a2: int;
  V69_a3: int;
  V70_erreur_ticket3i: bool;
  V71_env: bool;
  V136_g1: bool;
  V137_g2: bool;
  V138_g3: bool;
  V139_g4: bool;
  V140_g5: bool;
  V141_g6: bool;
  V142_g7: bool;
  V143_g8: bool;
  V144_g9: bool;
  V163_X: bool;

let
  OK = (V71_env => (V65_t >= 0));
  V62_p1 = (0 -> (if e1 then (if V136_g1 then 1 else (pre V62_p1)) else (if e2 
  then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 
  0 else (pre V62_p1)) else (pre V62_p1)))));
  V63_p2 = (0 -> (if e4 then (if V139_g4 then 1 else (pre V63_p2)) else (if e5 
  then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 
  0 else (pre V63_p2)) else (pre V63_p2)))));
  V64_p3 = (0 -> (if e7 then (if V142_g7 then 1 else (pre V64_p3)) else (if e8 
  then (if V143_g8 then 2 else (pre V64_p3)) else (if e9 then (if V144_g9 then 
  0 else (pre V64_p3)) else (pre V64_p3)))));
  V65_t = (init_t -> (if e1 then (if V136_g1 then ((pre V65_t) + 1) else (pre 
  V65_t)) else (if e4 then (if V139_g4 then ((pre V65_t) + 1) else (pre V65_t)) 
  else (if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else 
  (pre V65_t)))));
  V66_s = (V65_t -> (if e3 then (if V138_g3 then ((pre V66_s) + 1) else (pre 
  V66_s)) else (if e6 then (if V141_g6 then ((pre V66_s) + 1) else (pre V66_s)) 
  else (if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else 
  (pre V66_s)))));
  V67_a1 = (init_a1 -> (if e1 then (if V136_g1 then (pre V65_t) else (pre 
  V67_a1)) else (pre V67_a1)));
  V68_a2 = (init_a2 -> (if e4 then (if V139_g4 then (pre V65_t) else (pre 
  V68_a2)) else (pre V68_a2)));
  V69_a3 = (init_a3 -> (if e7 then (if V142_g7 then (pre V65_t) else (pre 
  V69_a3)) else (pre V69_a3)));
  V70_erreur_ticket3i = (if (((V62_p1 >= 3) or (V63_p2 >= 3)) or (V64_p3 >= 3)) 
  then true else false);
  V71_env = (V163_X -> (V163_X or (pre V71_env)));
  V136_g1 = ((pre V62_p1) = 0);
  V137_g2 = (((pre V62_p1) = 1) and ((pre V66_s) >= V67_a1));
  V138_g3 = ((pre V62_p1) = 2);
  V139_g4 = ((pre V63_p2) = 0);
  V140_g5 = (((pre V63_p2) = 1) and ((pre V66_s) >= V68_a2));
  V141_g6 = ((pre V63_p2) = 2);
  V142_g7 = ((pre V64_p3) = 0);
  V143_g8 = (((pre V64_p3) = 1) and ((pre V66_s) >= V69_a3));
  V144_g9 = ((pre V64_p3) = 2);
  V163_X = (((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)
  ) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (
  (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6
  )) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and 
  (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8
  )) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and 
  (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((
  ((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and 
  (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and 
  (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and 
  (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and 
  (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not 
  e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and 
  e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not 
  e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not 
  e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not 
  e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) 
  and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0));
  --%PROPERTY  OK=true;



-- 330 implications. 
assert (true -> ((V142_g7 = ((pre V64_p3) = 0)) 
and (((pre V63_p2) = 0) = V139_g4) 
and (((pre V62_p1) = 0) = V136_g1) 
and (((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) = ((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) = (((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9)))) 
and ((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) = (((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9))) 
and ((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) = ((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9)))) 
and (((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) = (((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) = ((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9)))) 
and (((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) = (((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) = ((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) = (((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)) = V163_X) 
and ((((pre V62_p1) = 1) and ((pre V66_s) >= V67_a1)) = V137_g2) 
and ((((pre V63_p2) = 1) and ((pre V66_s) >= V68_a2)) = V140_g5) 
and (V143_g8 = (((pre V64_p3) = 1) and ((pre V66_s) >= V69_a3))) 
and (((pre V63_p2) = 2) = V141_g6) 
and (V138_g3 = ((pre V62_p1) = 2)) 
and (((pre V64_p3) = 2) = V144_g9) 
and (V71_env => (V163_X or (pre V71_env))) 
and ((((pre V62_p1) = 1) and ((pre V66_s) >= V67_a1)) => ((pre V62_p1) = 1)) 
and (V143_g8 => ((pre V64_p3) = 1)) 
and ((((pre V63_p2) = 1) and ((pre V66_s) >= V68_a2)) => ((pre V63_p2) = 1)) 
and ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6))) 
and (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and e3) and (not e4)) and (not e5))) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and e3) and (not e4))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6)) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and e2) and (not e3)) and (not e4))) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and e2) and (not e3)) and (not e4)) and (not e5))) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => ((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9)) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8))) 
and (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (((e1 and (not e2)) and (not e3)) and (not e4))) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8))) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and (((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9)) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8)) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and e4)) 
and (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9)) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) 
and ((((not e1) and (not e2)) and (not e3)) => ((not e1) and (not e2))) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e9)) 
and (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (((not e1) and (not e2)) and e3)) 
and (((not e2) and (not e3)) => (not e2)) 
and (((e1 and (not e2)) and (not e3)) => (e1 and (not e2))) 
and ((((not e1) and e2) and (not e3)) => ((not e1) and e2)) 
and ((((not e1) and (not e2)) and e3) => (not e1)) 
and (V143_g8 => ((pre V66_s) >= V69_a3)) 
and ((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) => (not e5)) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((not e1) and (not e2)) and e3) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e4)) 
and ((((not e1) and (not e2)) and e3) => e3) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => ((not e2) and (not e3))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => (not e1)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and (((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (((not e1) and e2) and (not e3))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) => (not e7)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) => (not e6)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e3)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => e5) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e3)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9)) => (not e9)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) => (not e8)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e5)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => e6) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and e4) and (not e5))) 
and (((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) => (((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0))) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6))) 
and (((((not e2) and (not e3)) and (not e4)) and (not e5)) => (((not e2) and (not e3)) and (not e4))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((not e1) and (not e2)) => (not e1)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => (not e3)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => (not e5)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => e9) 
and ((((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)) => ((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e5)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e6)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((not e2) and (not e3))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => e7) 
and (((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) => (init_a1 >= 0)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => ((e1 and (not e2)) and (not e3))) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) => (not e6)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (not e3)) 
and ((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) => (not e5)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => ((not e2) and (not e3))) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => e4) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9)) => (not e9)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7)) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e5)) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e8)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (not e3)) 
and ((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and ((((not e1) and e2) and (not e3)) => (not e3)) 
and (((((not e2) and (not e3)) and (not e4)) and (not e5)) => (not e3)) 
and (((((not e2) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and ((((not e2) and (not e3)) and (not e4)) => ((not e2) and (not e3))) 
and ((((not e2) and (not e3)) and (not e4)) => (not e3)) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (((not e1) and (not e2)) and (not e3))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (not e7)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => e8) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((not e2) and (not e3))) 
and (((not e1) and e2) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7))) 
and ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => ((((not e2) and (not e3)) and (not e4)) and (not e5))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => (not e4)) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) => ((((not e1) and (not e2)) and (not e3)) and (not e4))) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e5)) 
and ((((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e9)) 
and (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => (((not e1) and (not e2)) and (not e3))) 
and (((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and ((((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)) => (init_t >= 0)) 
and ((((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)) => ((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0))) 
and ((((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) and (init_a3 >= 0)) and (init_t >= 0)) => V71_env) 
and ((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) => ((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0))) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e1)) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e2)) 
and (((((not e1) and (not e2)) and e3) and (not e4)) => (not e2)) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e7)) 
and ((((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e1)) 
and ((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e6)) 
and ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e3)) 
and ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e5)) 
and ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e4)) 
and ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (not e6)) 
and ((((not e2) and (not e3)) and (not e4)) => (not e4)) 
and (((not e2) and (not e3)) => (not e3)) 
and (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e3)) 
and (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e5)) 
and (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e4)) 
and (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e6)) 
and (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => (not e3)) 
and (((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) => (not e5)) 
and ((((e1 and (not e2)) and (not e3)) and (not e4)) => (not e4)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e3)) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((e1 and (not e2)) => e1) 
and ((((pre V62_p1) = 1) and ((pre V66_s) >= V67_a1)) => ((pre V66_s) >= V67_a1)) 
and (((((not e1) and e2) and (not e3)) and (not e4)) => (not e4)) 
and (((not e1) and e2) => e2) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e3)) 
and ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) => (not e7)) 
and ((V65_t >= 0) => (V71_env => (V65_t >= 0))) 
and ((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) => (((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) => ((((not e2) and (not e3)) and (not e4)) and (not e5))) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (not e3)) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((not e1) and (not e2)) and (not e3)) and (not e4)) => (((not e2) and (not e3)) and (not e4))) 
and ((((not e1) and (not e2)) and (not e3)) => ((not e2) and (not e3))) 
and (((not e1) and (not e2)) => (not e2)) 
and ((not e1) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (not e4)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => (((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) => (not e8)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => ((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((not e1) and (not e2)) and (not e3)) and e4) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and ((pre V71_env) => (V163_X or (pre V71_env))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) => (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7))) 
and (((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) 
and ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8))) 
and (((e1 and (not e2)) and (not e3)) => (not e3)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (not e4)) 
and (((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) => (((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5))) 
and ((((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) and (init_a2 >= 0)) => (init_a2 >= 0)) 
and (((((((((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and e9)) and (init_a1 >= 0)) => ((((((not e1) or ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or ((((((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e3)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e5)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e4)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e6)) 
and (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => ((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e3)) 
and (((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e5)) 
and (((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e4)) 
and (((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e6)) 
and (((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) => (not e9)) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e3)) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e5)) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e4)) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e6)) 
and ((((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8)) => (not e8)) 
and (((((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) => (((((not e2) and (not e3)) and (not e4)) and (not e5)) and (not e6))) 
and (0 <=(if V141_g6 then 0 else (pre V63_p2))) 
and (0 <=(if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2))) 
and (0 <=(pre V63_p2)) 
and (0 <=(if e5 then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2)))) 
and (0 <=(if V140_g5 then 2 else (pre V63_p2))) 
and (0 <=(if V138_g3 then 0 else (pre V62_p1))) 
and (0 <=(if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1))) 
and (0 <=(pre V62_p1)) 
and (0 <=(if e2 then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1)))) 
and (0 <=(if V137_g2 then 2 else (pre V62_p1))) 
and (0 <=(if e4 then (if V139_g4 then 1 else (pre V63_p2)) else (if e5 then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2))))) 
and (0 <=(if e1 then (if V136_g1 then 1 else (pre V62_p1)) else (if e2 then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1))))) 
and ((if V144_g9 then 0 else (pre V64_p3)) <=1) 
and ((if V144_g9 then 0 else (pre V64_p3)) <=(if V136_g1 then 1 else (pre V62_p1))) 
and ((if V144_g9 then 0 else (pre V64_p3)) <=(if V139_g4 then 1 else (pre V63_p2))) 
and ((if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3)) <=(if e8 then (if V143_g8 then 2 else (pre V64_p3)) else (if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3)))) 
and ((if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3)) <=(if e7 then (if V142_g7 then 1 else (pre V64_p3)) else (if e8 then (if V143_g8 then 2 else (pre V64_p3)) else (if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3))))) 
and ((pre V64_p3) <=(if V142_g7 then 1 else (pre V64_p3))) 
and ((if V141_g6 then 0 else (pre V63_p2)) <=1) 
and ((if V141_g6 then 0 else (pre V63_p2)) <=(if V142_g7 then 1 else (pre V64_p3))) 
and ((if V141_g6 then 0 else (pre V63_p2)) <=(if V136_g1 then 1 else (pre V62_p1))) 
and ((if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2)) <=(if e5 then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2)))) 
and ((if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2)) <=(if e4 then (if V139_g4 then 1 else (pre V63_p2)) else (if e5 then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2))))) 
and ((pre V63_p2) <=(if V139_g4 then 1 else (pre V63_p2))) 
and ((if V138_g3 then 0 else (pre V62_p1)) <=1) 
and ((if V138_g3 then 0 else (pre V62_p1)) <=(if V142_g7 then 1 else (pre V64_p3))) 
and ((if V138_g3 then 0 else (pre V62_p1)) <=(if V139_g4 then 1 else (pre V63_p2))) 
and ((if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1)) <=(if e2 then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1)))) 
and ((if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1)) <=(if e1 then (if V136_g1 then 1 else (pre V62_p1)) else (if e2 then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1))))) 
and ((pre V62_p1) <=(if V136_g1 then 1 else (pre V62_p1))) 
and (1 <=(if V136_g1 then 1 else (pre V62_p1))) 
and (1 <=(if V139_g4 then 1 else (pre V63_p2))) 
and ((pre V66_s) <=(if V138_g3 then ((pre V66_s) + 1) else (pre V66_s))) 
and ((pre V66_s) <=(if V141_g6 then ((pre V66_s) + 1) else (pre V66_s))) 
and ((pre V66_s) <=(if e6 then (if V141_g6 then ((pre V66_s) + 1) else (pre V66_s)) else (if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else (pre V66_s)))) 
and ((pre V66_s) <=(if e3 then (if V138_g3 then ((pre V66_s) + 1) else (pre V66_s)) else (if e6 then (if V141_g6 then ((pre V66_s) + 1) else (pre V66_s)) else (if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else (pre V66_s))))) 
and ((pre V65_t) <=(if e4 then (if V139_g4 then ((pre V65_t) + 1) else (pre V65_t)) else (if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t)))) 
and ((pre V65_t) <=(if e1 then (if V136_g1 then ((pre V65_t) + 1) else (pre V65_t)) else (if e4 then (if V139_g4 then ((pre V65_t) + 1) else (pre V65_t)) else (if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t))))) 
and ((pre V65_t) <=(if V136_g1 then ((pre V65_t) + 1) else (pre V65_t))) 
and ((pre V65_t) <=(if V139_g4 then ((pre V65_t) + 1) else (pre V65_t))) 
and (0 <=(if V144_g9 then 0 else (pre V64_p3))) 
and ((if V144_g9 then 0 else (pre V64_p3)) <=(if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3))) 
and ((if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3)) <=(pre V64_p3)) 
and ((pre V64_p3) <=(if V143_g8 then 2 else (pre V64_p3))) 
and ((if V143_g8 then 2 else (pre V64_p3)) <=2) 
and ((if e8 then (if V143_g8 then 2 else (pre V64_p3)) else (if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3))) <=(if V143_g8 then 2 else (pre V64_p3))) 
and ((if V143_g8 then 2 else (pre V64_p3)) <=2) 
and ((if V141_g6 then 0 else (pre V63_p2)) <=(if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2))) 
and ((if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2)) <=(pre V63_p2)) 
and ((pre V63_p2) <=(if V140_g5 then 2 else (pre V63_p2))) 
and ((if V140_g5 then 2 else (pre V63_p2)) <=2) 
and ((if e5 then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2))) <=(if V140_g5 then 2 else (pre V63_p2))) 
and ((if V140_g5 then 2 else (pre V63_p2)) <=2) 
and ((if V138_g3 then 0 else (pre V62_p1)) <=(if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1))) 
and ((if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1)) <=(pre V62_p1)) 
and ((pre V62_p1) <=(if V137_g2 then 2 else (pre V62_p1))) 
and ((if V137_g2 then 2 else (pre V62_p1)) <=2) 
and ((if e2 then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1))) <=(if V137_g2 then 2 else (pre V62_p1))) 
and ((if V137_g2 then 2 else (pre V62_p1)) <=2) 
and ((if e4 then (if V139_g4 then 1 else (pre V63_p2)) else (if e5 then (if V140_g5 then 2 else (pre V63_p2)) else (if e6 then (if V141_g6 then 0 else (pre V63_p2)) else (pre V63_p2)))) <=2) 
and ((if e1 then (if V136_g1 then 1 else (pre V62_p1)) else (if e2 then (if V137_g2 then 2 else (pre V62_p1)) else (if e3 then (if V138_g3 then 0 else (pre V62_p1)) else (pre V62_p1)))) <=2) 
and ((if e7 then (if V142_g7 then 1 else (pre V64_p3)) else (if e8 then (if V143_g8 then 2 else (pre V64_p3)) else (if e9 then (if V144_g9 then 0 else (pre V64_p3)) else (pre V64_p3)))) <=2) 
and (1 <=(if V142_g7 then 1 else (pre V64_p3))) 
and ((if V142_g7 then 1 else (pre V64_p3)) <=2) 
and ((if V136_g1 then 1 else (pre V62_p1)) <=2) 
and ((if V139_g4 then 1 else (pre V63_p2)) <=2) 
and ((pre V66_s) <=(if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else (pre V66_s))) 
and ((if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else (pre V66_s)) <=(if V144_g9 then ((pre V66_s) + 1) else (pre V66_s))) 
and ((if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) <=((pre V66_s) + 1)) 
and ((if V138_g3 then ((pre V66_s) + 1) else (pre V66_s)) <=((pre V66_s) + 1)) 
and ((if V141_g6 then ((pre V66_s) + 1) else (pre V66_s)) <=((pre V66_s) + 1)) 
and ((if e6 then (if V141_g6 then ((pre V66_s) + 1) else (pre V66_s)) else (if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else (pre V66_s))) <=((pre V66_s) + 1)) 
and ((if e3 then (if V138_g3 then ((pre V66_s) + 1) else (pre V66_s)) else (if e6 then (if V141_g6 then ((pre V66_s) + 1) else (pre V66_s)) else (if e9 then (if V144_g9 then ((pre V66_s) + 1) else (pre V66_s)) else (pre V66_s)))) <=((pre V66_s) + 1)) 
and ((if V136_g1 then (pre V65_t) else (pre V67_a1)) <=(pre V65_t)) 
and ((pre V65_t) <=(if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t))) 
and ((if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t)) <=(if V142_g7 then ((pre V65_t) + 1) else (pre V65_t))) 
and ((if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) <=((pre V65_t) + 1)) 
and ((if V139_g4 then (pre V65_t) else (pre V68_a2)) <=(pre V65_t)) 
and ((pre V65_t) <=(if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t))) 
and ((if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t)) <=(if V142_g7 then ((pre V65_t) + 1) else (pre V65_t))) 
and ((if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) <=((pre V65_t) + 1)) 
and ((if V142_g7 then (pre V65_t) else (pre V69_a3)) <=(pre V65_t)) 
and ((pre V65_t) <=(if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t))) 
and ((if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t)) <=(if V142_g7 then ((pre V65_t) + 1) else (pre V65_t))) 
and ((if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) <=((pre V65_t) + 1)) 
and ((if e4 then (if V139_g4 then ((pre V65_t) + 1) else (pre V65_t)) else (if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t))) <=((pre V65_t) + 1)) 
and ((if e1 then (if V136_g1 then ((pre V65_t) + 1) else (pre V65_t)) else (if e4 then (if V139_g4 then ((pre V65_t) + 1) else (pre V65_t)) else (if e7 then (if V142_g7 then ((pre V65_t) + 1) else (pre V65_t)) else (pre V65_t)))) <=((pre V65_t) + 1)) 
and ((if V136_g1 then ((pre V65_t) + 1) else (pre V65_t)) <=((pre V65_t) + 1)) 
and ((if V139_g4 then ((pre V65_t) + 1) else (pre V65_t)) <=((pre V65_t) + 1)) 
and  true ));
tel.

