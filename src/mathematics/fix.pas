function FixDegrees(dgrs: Extended): Extended; callconv inline;
var
  t: Integer;
begin
  t := -1;
  if (dgrs > -1) then
    t := Abs(t);
  Result := Abs(dgrs);
  Result := ((Floor(Result) mod 360 + Frac(Result)) * t);
  if (Result < 0) then
    Result := (Result + 360.0);
end;

function FixRadians(rdns: Extended): Extended; callconv inline;
begin
  Result := (FixDegrees((rdns * (180.0 / Pi))) * (Pi / 180.0));
end;
