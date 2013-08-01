{==============================================================================]
 @action: Compares v with x.
          Results: 0=EQUAL, 1=v>x, -1=v<x
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Compare(v, x: Integer): Integer; callconv inline;
begin
  if (v <> x) then
    if (v > x) then
      Result := 1
    else
      Result := -1
  else
    Result := 0;
end;

{==============================================================================]
 @action: Compares v with x.
          Results: 0=EQUAL, 1=v>x, -1=v<x
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function CompareE(v, x: Extended): Integer; callconv inline;
begin
  if (v <> x) then
    if (v > x) then
      Result := 1
    else
      Result := -1
  else
    Result := 0;
end;
