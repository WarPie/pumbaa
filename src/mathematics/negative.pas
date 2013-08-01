{==============================================================================]
 @action: Returns the negative number of i. 
          -9999 to -9999 OR 9999 to -9999 (+/- => -)
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Negative(i: Integer): Integer; callconv inline;
begin
  Result := (Abs(i) * -1);
end;

{==============================================================================]
 @action: Returns the negative number of e. 
          -999.9 to -999.9 OR 999.9 to -999.9 (+/- => -)
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function NegativeE(e: Extended): Extended; callconv inline;
begin
  Result := (Abs(e) * -1);
end;