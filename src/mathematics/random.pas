{==============================================================================]
 @action: Returns random boolean.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function RandomBool: Boolean; callconv inline;
begin
  Result := (Random(2) = 0);
end;

{==============================================================================]
 @action: Returns random boolean by chance.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function RandomBoolEx(chance: Integer): Boolean; callconv inline;
begin
  if (chance > 0) then
  begin
    if (chance > 1) then
      Result := (Random(chance) = 0)
    else
      Result := True;
  end else
    Result := False;
end;

{==============================================================================]
 @action: Random() with support for negative Range.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Random2(range: Integer): Integer; callconv inline;
begin
  if (range > -1) then
    Result := Random(range)
  else
    Result := (Random(Abs(range)) * -1);
end;
