{==============================================================================]
 @action: Returns the difference (distance) between value1 and value2.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Difference(value1, value2: Integer): Integer; callconv inline;
begin
  Result := Abs(value2 - value1);
end;

function DifferenceE(value1, value2: Extended): Extended; callconv inline;
begin
  Result := Abs(value2 - value1);
end;
