{==============================================================================]
 @action: Returns the arithmetic mean of TEA values.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TEAMean(TEA: TExtendedArray): Extended; callconv
var
  i, h: Integer;
begin
  Result := 0.0;
  h:= High(TEA);
  for i:= 0 to h do
    Result := (Result + (Extended(TEA[i]) / (h + 1)));
end;

{==============================================================================]
 @action: Returns the sum of all TEA values together.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TEASum(TEA: TExtendedArray): Extended; callconv
var
  i, h: Integer;
begin
  Result := 0;
  h:= High(TEA);
  for i := 0 to h do
    Result := (Result + TEA[i]);
end;

{==============================================================================]
 @action: Returns the smallest value from given TEA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TEAMin(TEA: TExtendedArray): Extended; callconv
var
  h, i: Integer;
begin
  h := High(TEA);
  if (h > -1) then
  begin
    Result := TEA[0];
    if (h > 0) then
    for i := 1 to h do
      if (TEA[i] < Result) then
        Result := TEA[i];
  end else
    Result := 0;
end;

{==============================================================================]
 @action: Returns the biggest value from given TEA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TEAMax(TEA: TExtendedArray): Extended; callconv
var
  h, i: Integer;
begin
  h := High(TEA);
  if (h > -1) then
  begin
    Result := TEA[0];
    if (h > 0) then
    for i := 1 to h do
      if (TEA[i] > Result) then
        Result := TEA[i];
  end else
    Result := 0;
end;
