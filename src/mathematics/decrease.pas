{==============================================================================]
 @action: Decreases the x value by 1.
 @note: Returns the decreased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function Decrease(var x: Integer): Integer;
begin
  x := (x - 1);
  Result := x;
end;

{==============================================================================]
 @action: Decreases the x value by 1.0.
 @note: Returns the decreased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function DecreaseE(var x: Extended): Extended;
begin
  if (x <> 1.0) then
    x := (x - 1.0)
  else
    x := 0.0;
  Result := x;
end;

{==============================================================================]
 @action: Decreases the x value by N.
 @note: Returns the decreased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function DecreaseEx(var x: Integer; N: Integer): Integer;
begin
  if (x <> N) then
    x := (x - N)
  else
    x := 0;
  Result := x;
end;

{==============================================================================]
 @action: Decreases the x value by N.
 @note: Returns the decreased value!
 @contributors: Janilabo, slacky
[==============================================================================}

function DecreaseEEx(var x: Extended; N: Extended): Extended;
begin
  if (x <> N) then
    x := (x - N)
  else
    x := 0.0;
  Result := x;
end;
