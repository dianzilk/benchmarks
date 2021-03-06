node top
  (Delta: int)
returns
  (OK: bool);

var
  V11_Total: int;
  V39_Prev: int;
  V47_Y: bool;

let
  OK = (V47_Y => ((0 <= V11_Total) and (V11_Total <= 20)));
  V11_Total = (if ((Delta < 0) or (V39_Prev > 0)) then (V39_Prev + Delta) else 
  (if ((Delta > 0) and (V39_Prev < 10)) then (V39_Prev + Delta) else V39_Prev))
  ;
  V39_Prev = (0 -> (pre V11_Total));
  V47_Y = ((true -> (pre V47_Y)) or ((-1 <= Delta) and (Delta <= 1)));
  --%PROPERTY  OK=true;



-- 27 implications. 
assert (true -> ((V47_Y = ((pre V47_Y) or (((- 1) <= Delta) and (Delta <= 1)))) 
and (((pre V47_Y) or (((- 1) <= Delta) and (Delta <= 1))) = true) 
and (true = (pre V47_Y)) 
and ((V47_Y => ((0 <= V11_Total) and (V11_Total <= 20))) = ((0 <= V11_Total) and (V11_Total <= 20))) 
and (((Delta > 0) and (V39_Prev < 10)) => (Delta > 0)) 
and ((Delta < 0) => (Delta <= 1)) 
and ((((- 1) <= Delta) and (Delta <= 1)) => (Delta <= 1)) 
and ((Delta < 0) => ((Delta < 0) or (V39_Prev > 0))) 
and ((((- 1) <= Delta) and (Delta <= 1)) => ((- 1) <= Delta)) 
and ((V47_Y => ((0 <= V11_Total) and (V11_Total <= 20))) => (0 <= V11_Total)) 
and ((V39_Prev > 0) => ((Delta < 0) or (V39_Prev > 0))) 
and ((V47_Y => ((0 <= V11_Total) and (V11_Total <= 20))) => (V11_Total <= 20)) 
and (((Delta > 0) and (V39_Prev < 10)) => (V39_Prev < 10)) 
and ((Delta > 0) => ((- 1) <= Delta)) 
and ((V39_Prev + Delta) = (if ((Delta < 0) or (V39_Prev > 0)) then (V39_Prev + Delta) else (if ((Delta > 0) and (V39_Prev < 10)) then (V39_Prev + Delta) else V39_Prev))) 
and ((if ((Delta < 0) or (V39_Prev > 0)) then (V39_Prev + Delta) else (if ((Delta > 0) and (V39_Prev < 10)) then (V39_Prev + Delta) else V39_Prev)) = V11_Total) 
and ((- 1) <=0) 
and (0 <=1) 
and (1 <=10) 
and (10 <=20) 
and (V39_Prev <=(if ((Delta > 0) and (V39_Prev < 10)) then (V39_Prev + Delta) else V39_Prev)) 
and  true ));
tel.

