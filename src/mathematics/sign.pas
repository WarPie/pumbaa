{==============================================================================]
 @action: Indicates whether x value is positive, negative or zero.
          x < 0 = -1            x = 0 = 0             x > 0 = 1
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Sign(x: Integer): Integer; callconv inline;
begin
  if (x = 0) then
    Result := 0
  else
    if (x > 0) then
      Result := 1
    else
      Result := -1;
end;

{==============================================================================]
 @action: Indicates whether x value is positive, negative or zero.
          x < 0 = -1            x = 0 = 0             x > 0 = 1
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function SignE(x: Extended): Integer; callconv inline;
begin
  if (x = 0) then
    Result := 0
  else
    if (x > 0) then
      Result := 1
    else
      Result := -1;
end;
