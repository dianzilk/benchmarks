node top
  (request_door: bool;
  warning_start: bool;
  in_station: bool;
  door_is_open: bool)
returns
  (OK: bool);

var
  V58_env_always_ok: bool;
  V59_prop_ok: bool;
  V60_open_door: bool;
  V61_close_door: bool;
  V62_door_ok: bool;
  V250_door_doesnt_open_out_of_station: bool;
  V251_door_opens_before_leaving_station: bool;
  V252_X: bool;
  V253_between_A_and_X: bool;
  V264_env_ok: bool;
  V265_door_doesnt_close_if_not_asked: bool;
  V266_door_doesnt_open_if_not_asked: bool;
  V267_tramway_doesnt_start_if_not_door_ok: bool;
  V268_door_initially_closed: bool;
  V269_initially_not_in_station: bool;
  V270_warning_start_and_in_station_go_down_simultaneously: bool;
  V271_warning_start_only_in_station: bool;
  V272_warning_start_cant_become_true_when_door_is_opening: bool;
  V273_X: bool;
  V274_X: bool;
  V275_X: bool;
  V276_X: bool;
  V287_req_pending: bool;

let
  OK = (V58_env_always_ok => V59_prop_ok);
  V58_env_always_ok = (V264_env_ok -> (V264_env_ok and (pre V58_env_always_ok))
  );
  V59_prop_ok = (V250_door_doesnt_open_out_of_station and 
  V251_door_opens_before_leaving_station);
  V60_open_door = (V287_req_pending and in_station);
  V61_close_door = (warning_start and door_is_open);
  V62_door_ok = ((not door_is_open) and warning_start);
  V250_door_doesnt_open_out_of_station = (door_is_open => in_station);
  V251_door_opens_before_leaving_station = (not (V253_between_A_and_X and (
  false -> (V252_X and (not (pre V252_X))))));
  V252_X = (not in_station);
  V253_between_A_and_X = (if (false -> (pre (request_door and (not 
  warning_start)))) then true else (if (false -> (pre (false -> (pre 
  door_is_open)))) then false else (false -> (pre V253_between_A_and_X))));
  V264_env_ok = (((((((V266_door_doesnt_open_if_not_asked and 
  V265_door_doesnt_close_if_not_asked) and 
  V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and 
  V269_initially_not_in_station) and 
  V270_warning_start_and_in_station_go_down_simultaneously) and 
  V271_warning_start_only_in_station) and 
  V272_warning_start_cant_become_true_when_door_is_opening);
  V265_door_doesnt_close_if_not_asked = ((false -> (door_is_open and (not (pre 
  door_is_open)))) => V60_open_door);
  V266_door_doesnt_open_if_not_asked = ((false -> (V273_X and (not (pre V273_X)
  ))) => V61_close_door);
  V267_tramway_doesnt_start_if_not_door_ok = ((false -> (V274_X and (not (pre 
  V274_X)))) => (false -> (pre V62_door_ok)));
  V268_door_initially_closed = ((not door_is_open) -> true);
  V269_initially_not_in_station = ((not in_station) -> true);
  V270_warning_start_and_in_station_go_down_simultaneously = ((false -> (V275_X 
  and (not (pre V275_X)))) = (false -> (V276_X and (not (pre V276_X)))));
  V271_warning_start_only_in_station = (warning_start => in_station);
  V272_warning_start_cant_become_true_when_door_is_opening = ((false -> (
  warning_start and (not (pre warning_start)))) => (not V60_open_door));
  V273_X = (not door_is_open);
  V274_X = (not in_station);
  V275_X = (not in_station);
  V276_X = (not warning_start);
  V287_req_pending = (if (request_door and (not warning_start)) then true else 
  (if door_is_open then false else (false -> (pre V287_req_pending))));
  --%PROPERTY OK=true;


tel.

