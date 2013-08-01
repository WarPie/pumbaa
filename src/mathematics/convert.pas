{==============================================================================]
 @action: Converts Radians or Compass (degrees) to Degrees.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Degrees(x: Extended; method: TAngleMethod): Extended; callconv inline;
begin
  case method of
    am_Radians: Result := FixDegrees(x * (180.0 / Pi));
    am_Compass: Result := FixDegrees(x - 90.0);
  else
    Result := x;
  end;
end;

{==============================================================================]
 @action: Converts Degrees or Compass (degrees) to Radians. 
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Radians(x: Extended; method: TAngleMethod): Extended; callconv inline;
begin
  case method of
    am_Degrees: Result := FixRadians(x * (Pi / 180.0));
    am_Compass: Result := FixRadians((x - 90.0) * (Pi / 180.0));
  else
    Result := x;
  end;
end;

{==============================================================================]
 @action: Converts Degrees or Radians to Compass (degrees).
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Compass(x: Extended; method: TAngleMethod): Extended; callconv inline;
begin
  case method of
    am_Degrees: Result := FixDegrees(x + 90.0);
    am_Radians: Result := FixDegrees(Degrees(x, am_Radians) + 90.0);
  else
    Result := x;
  end;
end;
