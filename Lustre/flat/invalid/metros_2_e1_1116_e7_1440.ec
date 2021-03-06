node top
  (B0: bool;
  B1: bool;
  S: bool)
returns
  (OK: bool);

var
  V38_nB0: int;
  V39_nB1: int;
  V40_nS: int;
  V41_diff0: int;
  V42_diff1: int;
  V43_avance0: bool;
  V44_avance1: bool;
  V45_retard0: bool;
  V46_retard1: bool;
  V47_ast: bool;
  V158_H0: bool;
  V159_H1: bool;
  V160_c: int;
  V161_c: int;
  V170_Sofar: bool;

let
  OK = (true -> (V170_Sofar => ((-10 <= (pre V41_diff0)) and ((pre V41_diff0) 
  <= 20))));
  V38_nB0 = (0 -> (if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)));
  V39_nB1 = (0 -> (if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)));
  V40_nS = (0 -> (if S then ((pre V40_nS) + 1) else (pre V40_nS)));
  V41_diff0 = (V38_nB0 - V40_nS);
  V42_diff1 = (V39_nB1 - V40_nS);
  V43_avance0 = (false -> (if (not (pre V43_avance0)) then (V41_diff0 >= 10) 
  else (V41_diff0 > 0)));
  V44_avance1 = (false -> (if (not (pre V44_avance1)) then (V42_diff1 >= 10) 
  else (V42_diff1 > 0)));
  V45_retard0 = (false -> (if (not (pre V45_retard0)) then (V41_diff0 <= -10) 
  else (V41_diff0 < 0)));
  V46_retard1 = (false -> (if (not (pre V46_retard1)) then (V42_diff1 <= -10) 
  else (V42_diff1 < 0)));
  V47_ast = (V158_H0 and V159_H1);
  V158_H0 = (true -> ((if (pre V45_retard0) then (not S) else true) and (if (
  (pre V160_c) >= 9) then (not B0) else true)));
  V159_H1 = (true -> ((if (pre V46_retard1) then (not S) else true) and (if (
  (pre V161_c) >= 9) then (not B1) else true)));
  V160_c = (0 -> (if ((pre V43_avance0) and V43_avance0) then (if B0 then ((
  (pre V160_c) + 1) + 1) else (pre V160_c)) else 0));
  V161_c = (0 -> (if ((pre V44_avance1) and V44_avance1) then (if B1 then ((
  (pre V161_c) + 1) + 1) else (pre V161_c)) else 0));
  V170_Sofar = (V47_ast -> (V47_ast or (pre V170_Sofar)));
  --%PROPERTY  OK=true;



-- 135 implications. 
assert (true -> ((true = (pre V170_Sofar)) 
and ((pre V170_Sofar) = V170_Sofar) 
and (V170_Sofar = (V47_ast or (pre V170_Sofar))) 
and ((V158_H0 and V159_H1) = V47_ast) 
and ((V170_Sofar => (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20))) = (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) = V43_avance0) 
and (V44_avance1 = (if (not (pre V44_avance1)) then (V42_diff1 >= 10) else (V42_diff1 > 0))) 
and ((V41_diff0 <= (- 10)) => (if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0))) 
and ((not (pre V45_retard0)) => ((- 10) <= (pre V41_diff0))) 
and ((not (pre V45_retard0)) => (if (pre V45_retard0) then (not S) else true)) 
and ((V170_Sofar => (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20))) => ((pre V41_diff0) <= 20)) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B0) else true)) => V158_H0) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B0) else true)) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and ((pre V45_retard0) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true)) => (if (pre V46_retard1) then (not S) else true)) 
and ((V158_H0 and V159_H1) => V158_H0) 
and ((V42_diff1 >= 10) => V44_avance1) 
and (((pre V161_c) >= 9) => (pre V44_avance1)) 
and ((V42_diff1 <= (- 10)) => (if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0))) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true)) => (if ((pre V161_c) >= 9) then (not B1) else true)) 
and (((if (pre V46_retard1) then (not S) else true) and (if ((pre V161_c) >= 9) then (not B1) else true)) => V159_H1) 
and ((not (pre V44_avance1)) => (if ((pre V161_c) >= 9) then (not B1) else true)) 
and (((pre V161_c) >= 9) => (if (pre V46_retard1) then (not S) else true)) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 <= (- 10)) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and (((pre V44_avance1) and V44_avance1) => (pre V44_avance1)) 
and ((not (pre V46_retard1)) => (if (pre V46_retard1) then (not S) else true)) 
and (((pre V44_avance1) and V44_avance1) => V44_avance1) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => ((pre V41_diff0) <= 20)) 
and ((V41_diff0 >= 10) => (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and ((V42_diff1 >= 10) => (if (pre V46_retard1) then (not S) else true)) 
and (V44_avance1 => (if (pre V46_retard1) then (not S) else true)) 
and ((pre V46_retard1) => (not (pre V44_avance1))) 
and ((pre V46_retard1) => (if ((pre V161_c) >= 9) then (not B1) else true)) 
and ((V158_H0 and V159_H1) => V159_H1) 
and ((V170_Sofar => (((- 10) <= (pre V41_diff0)) and ((pre V41_diff0) <= 20))) => ((- 10) <= (pre V41_diff0))) 
and (((if (pre V45_retard0) then (not S) else true) and (if ((pre V160_c) >= 9) then (not B0) else true)) => (if (pre V45_retard0) then (not S) else true)) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (not (pre V44_avance1))) 
and ((if (not (pre V46_retard1)) then (V42_diff1 <= (- 10)) else (V42_diff1 < 0)) => (if ((pre V161_c) >= 9) then (not B1) else true)) 
and (((pre V43_avance0) and V43_avance0) => (not (pre V45_retard0))) 
and (((pre V43_avance0) and V43_avance0) => (pre V43_avance0)) 
and ((not (pre V43_avance0)) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and ((not (pre V43_avance0)) => ((pre V41_diff0) <= 20)) 
and (((pre V160_c) >= 9) => (not (pre V45_retard0))) 
and (((pre V160_c) >= 9) => (pre V43_avance0)) 
and (((pre V161_c) >= 9) => (not (pre V46_retard1))) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (not (pre V43_avance0))) 
and (((pre V44_avance1) and V44_avance1) => (not (pre V46_retard1))) 
and ((pre V44_avance1) => (not (pre V46_retard1))) 
and ((pre V44_avance1) => (if (pre V46_retard1) then (not S) else true)) 
and (((pre V43_avance0) and V43_avance0) => (if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0))) 
and ((pre V43_avance0) => (not (pre V45_retard0))) 
and ((V42_diff1 <= (- 10)) => (if ((pre V161_c) >= 9) then (not B1) else true)) 
and ((if (not (pre V45_retard0)) then (V41_diff0 <= (- 10)) else (V41_diff0 < 0)) => (V41_diff0 < 0)) 
and ((V42_diff1 < 0) => (not (pre V44_avance1))) 
and (V44_avance1 => (V42_diff1 > 0)) 
and ((V41_diff0 < 0) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and ((V41_diff0 < 0) => ((pre V41_diff0) <= 20)) 
and ((V41_diff0 < 0) => (not (pre V43_avance0))) 
and ((if (not (pre V43_avance0)) then (V41_diff0 >= 10) else (V41_diff0 > 0)) => (V41_diff0 > 0)) 
and ((not B0) => (if ((pre V160_c) >= 9) then (not B0) else true)) 
and ((not S) => (if (pre V45_retard0) then (not S) else true)) 
and ((not S) => (if (pre V46_retard1) then (not S) else true)) 
and ((V39_nB1 - V40_nS) = V42_diff1) 
and (V41_diff0 = (V38_nB0 - V40_nS)) 
and (0 <=(if ((pre V44_avance1) and V44_avance1) then (if B1 then (((pre V161_c) + 1) + 1) else (pre V161_c)) else 0)) 
and (0 <=(pre V160_c)) 
and (0 <=(if ((pre V43_avance0) and V43_avance0) then (if B0 then (((pre V160_c) + 1) + 1) else (pre V160_c)) else 0)) 
and (0 <=(pre V39_nB1)) 
and (0 <=(pre V38_nB0)) 
and (0 <=(pre V40_nS)) 
and (0 <=V40_nS) 
and (0 <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and (0 <=V39_nB1) 
and (0 <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and (0 <=V38_nB0) 
and (0 <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and (0 <=1) 
and (0 <=((pre V160_c) + 1)) 
and (0 <=((pre V39_nB1) + 1)) 
and (0 <=((pre V38_nB0) + 1)) 
and (0 <=((pre V40_nS) + 1)) 
and (0 <=(if B0 then (((pre V160_c) + 1) + 1) else (pre V160_c))) 
and (0 <=(((pre V160_c) + 1) + 1)) 
and (0 <=9) 
and (0 <=10) 
and (0 <=20) 
and ((pre V161_c) <=(if B1 then (((pre V161_c) + 1) + 1) else (pre V161_c))) 
and ((pre V160_c) <=(if B0 then (((pre V160_c) + 1) + 1) else (pre V160_c))) 
and (1 <=((pre V160_c) + 1)) 
and (1 <=((pre V39_nB1) + 1)) 
and (1 <=((pre V38_nB0) + 1)) 
and (1 <=((pre V40_nS) + 1)) 
and (1 <=(((pre V160_c) + 1) + 1)) 
and (1 <=9) 
and (1 <=10) 
and (1 <=20) 
and ((- 10) <=0) 
and (0 <=(pre V161_c)) 
and ((pre V161_c) <=((pre V161_c) + 1)) 
and (((pre V161_c) + 1) <=(((pre V161_c) + 1) + 1)) 
and ((pre V41_diff0) <=(pre V38_nB0)) 
and ((pre V38_nB0) <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and ((if ((pre V44_avance1) and V44_avance1) then (if B1 then (((pre V161_c) + 1) + 1) else (pre V161_c)) else 0) <=(if B1 then (((pre V161_c) + 1) + 1) else (pre V161_c))) 
and ((if B1 then (((pre V161_c) + 1) + 1) else (pre V161_c)) <=(((pre V161_c) + 1) + 1)) 
and ((pre V160_c) <=((pre V160_c) + 1)) 
and (((pre V160_c) + 1) <=(((pre V160_c) + 1) + 1)) 
and ((if ((pre V43_avance0) and V43_avance0) then (if B0 then (((pre V160_c) + 1) + 1) else (pre V160_c)) else 0) <=(if B0 then (((pre V160_c) + 1) + 1) else (pre V160_c))) 
and ((if B0 then (((pre V160_c) + 1) + 1) else (pre V160_c)) <=(((pre V160_c) + 1) + 1)) 
and ((pre V39_nB1) <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and ((pre V40_nS) <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and ((V39_nB1 - V40_nS) <=V39_nB1) 
and (V39_nB1 <=(if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1))) 
and ((if B1 then ((pre V39_nB1) + 1) else (pre V39_nB1)) <=((pre V39_nB1) + 1)) 
and (V41_diff0 <=V38_nB0) 
and (V38_nB0 <=(if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0))) 
and ((if B0 then ((pre V38_nB0) + 1) else (pre V38_nB0)) <=((pre V38_nB0) + 1)) 
and (V40_nS <=(if S then ((pre V40_nS) + 1) else (pre V40_nS))) 
and ((if S then ((pre V40_nS) + 1) else (pre V40_nS)) <=((pre V40_nS) + 1)) 
and (1 <=((pre V161_c) + 1)) 
and (((pre V161_c) + 1) <=(((pre V161_c) + 1) + 1)) 
and (9 <=10) 
and (10 <=20) 
and  true ));
tel.

