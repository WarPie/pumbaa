{==============================================================================]
 @action: Returns the opposite number of i. 
          -9999 to 9999 OR 9999 to -9999 (- <=> +) 
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Opposite(i: Integer): Integer; callconv inline;
begin
  Result := (i * -1);
end;

{==============================================================================]
 @action: Returns the opposite number of e. 
          -999.9 to 999.9 OR 999.9 to -999.9 (- <=> +)
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function OppositeE(e: Extended): Extended; callconv inline;
begin
  Result := (e * -1);
end;