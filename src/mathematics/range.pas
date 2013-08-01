{==============================================================================]
 @action: Returns true if value is equal-to/between aFrom and aTo.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function InRange(value, aFrom, aTo: Integer): Boolean; callconv inline;
begin
  if (aFrom > aTo) then
    Result := ((value >= aTo) and (value <= aFrom))
  else
    Result := ((value >= aFrom) and (value <= aTo));
end;

{==============================================================================]
 @action: Returns true if value is equal-to/between aFrom and aTo.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function InRangeE(value, aFrom, aTo: Extended): Boolean; callconv inline;
begin
  if (aFrom > aTo) then
    Result := ((value >= aTo) and (value <= aFrom))
  else
    Result := ((value >= aFrom) and (value <= aTo));
end;

{==============================================================================]
 @action: Sets val inside range (aFrom, aTo), if it isn't already.
 @note: So yeah, this procedure doesn't do anything at all to val, if it's inside the range already.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure EnsureRange(var val: Integer; aFrom, aTo: Integer); callconv inline;
var
  t: Integer;
begin
  if (aFrom > aTo) then
  begin
    t := aFrom;
    aFrom := aTo;
    aTo := t;
  end;
  if (aFrom <> aTo) then
  begin
    if (val < aFrom) then
      val := aFrom;
    if (val > aTo) then
      val := aTo;
  end else
    if ((val < aFrom) or (val > aTo)) then
      val := aFrom;
end;

{==============================================================================]
 @action: Sets val inside range (aFrom, aTo), if it isn't already.
 @note: So yeah, this procedure doesn't do anything at all to val, if it's inside the range already.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure EnsureRangeE(var val: Extended; aFrom, aTo: Extended); callconv inline;
var
  t: Extended;
begin
  if (aFrom > aTo) then
  begin
    t := aFrom;
    aFrom := aTo;
    aTo := t;
  end;
  if (aFrom <> aTo) then
  begin
    if (val < aFrom) then
      val := aFrom;
    if (val > aTo) then
      val := aTo;
  end else
    if ((val < aFrom) or (val > aTo)) then
      val := aFrom;
end;
