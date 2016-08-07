node top
  (diff: int)
returns
  (OK: bool);

var
  V22_speed: int;
  V23_plus: bool;
  V24_minus: bool;
  V25_realistic: bool;
  V93_X: bool;
  V98_Sofar: bool;
  V109_cpt: int;
  V110_acceptable: bool;

let
  OK = (V98_Sofar => (true -> ((pre V109_cpt) <= 7)));
  V22_speed = (0 -> ((pre V22_speed) + diff));
  V23_plus = (V22_speed <= 9);
  V24_minus = (V22_speed >= 11);
  V25_realistic = ((((-4 <= diff) or (diff <= 4)) and (if (true -> (pre 
  V23_plus)) then (diff >= 1) else true)) and (if (false -> (pre V24_minus)) 
  then (diff <= -1) else true));
  V93_X = ((V25_realistic and (0 <= V22_speed)) and (V22_speed < 16));
  V98_Sofar = (V93_X -> (V93_X or (pre V98_Sofar)));
  V109_cpt = (0 -> (if V110_acceptable then 0 else ((pre V109_cpt) + 1)));
  V110_acceptable = ((8 <= V22_speed) and (V22_speed <= 12));
  --%PROPERTY OK;


tel.

