{==============================================================================]
 @action: Increases the x value by 1.
 @note: Returns the increased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function Increase(var x: Integer): Integer; callconv inline;
begin
  x := (x + 1);
  Result := x;
end;

{==============================================================================]
 @action: Increases the x value by 1.0.
 @note: Returns the increased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function IncreaseE(var x: Extended): Extended; callconv inline;
begin
  x := (x + 1.0);
  Result := x;
end;

{==============================================================================]
 @action: Increases the x value by N.
 @note: Returns the increased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function IncreaseEx(var x: Integer; N: Integer): Integer; callconv inline;
begin
  x := (x + N);
  Result := x;
end;

{==============================================================================]
 @action: Increases the x value by N.
 @note: Returns the increased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function IncreaseEEx(var x: Extended; N: Extended): Extended; callconv inline;
begin
  x := (x + N);
  Result := x;
end;
