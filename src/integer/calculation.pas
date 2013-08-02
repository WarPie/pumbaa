{==============================================================================]
 @action: Returns the most frequent/common value from TIA.
 @note: Be careful with values! Try to avoid using too low or high values!
        Such as: -200,000,000 or +200,000,000. Heavy memory-usage could possibly crash Simba.
 @contributors: Janilabo, slacky
[==============================================================================}

function TIAMostFrequent(TIA: TIntegerArray): Integer; callconv
var
  mn, mx, x, y, t: Integer;
  b: TIntegerArray;
begin
  y := High(TIA);
  if (y > -1) then
  begin
    mn := TIA[0];
    mx := TIA[0];
    if (y > 0) then
    for x := 1 to y do
      if (TIA[x] < mn) then
        mn := TIA[x]
      else
        if (TIA[x] > mx) then
          mx := TIA[x];
    SetLength(b, (Abs(mn - mx) + 1));
    for x := 0 to (mx - mn) do
      b[x] := 0;
    for x := 0 to y do
      Inc(b[(TIA[x] - mn)]);
    t := 0;
    if ((mx - mn) > 0) then
    for x := 1 to (mx - mn) do
      if (b[x] > b[t]) then
        t := x;
    Result := (t + mn);
    SetLength(b, 0);
  end else
    Result := -1;
end;

{==============================================================================]
 @action: Returns the least frequent/common value from TIA.
 @note: Be careful with values! Try to avoid using too low or high values!
        Such as: -200,000,000 or +200,000,000. Heavy memory-usage could possibly crash Simba.
 @contributors: Janilabo, slacky
[==============================================================================}

function TIALeastFrequent(TIA: TIntegerArray): Integer; callconv
var
  mn, mx, x, y, t: Integer;
  b: TIntegerArray;
begin
  y := High(TIA);
  if (y > -1) then
  begin
    mn := TIA[0];
    mx := TIA[0];
    if (y > 0) then
    for x := 1 to y do
      if (TIA[x] < mn) then
        mn := TIA[x]
      else
        if (TIA[x] > mx) then
          mx := TIA[x];
    SetLength(b, (Abs(mn - mx) + 1));
    for x := 0 to (mx - mn) do
      b[x] := 0;
    for x := 0 to y do
      Inc(b[(TIA[x] - mn)]);
    t := 0;
    if ((mx - mn) > 0) then
    for x := 1 to (mx - mn) do
      if (b[x] < b[t]) then
        t := x;
    Result := (t + mn);
    SetLength(b, 0);
  end else
    Result := -1;
end;

{==============================================================================]
 @action: Returns the calculated density from given TIA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TIADensity(TIA: TIntegerArray): Extended; callconv
var
  h, l, i, d, mn, mx, x, y: Integer;
begin
  h := High(TIA);
  if (h > -1) then
  begin
    d := 0;
    mn := TIA[0];
    mx := TIA[0];
    if (h > 0) then
    for i := (h - d) downto 1 do
    begin
      if (TIA[i] < mn) then
        mn := TIA[i]
      else
        if (TIA[i] > mx) then
          mx := TIA[i];
      for x := (i - 1) downto 0 do
        if (TIA[i] = TIA[x]) then
        begin
          l := High(TIA);
          for y := i to (l - 1) do
            TIA[y] := TIA[(y + 1)];
          SetLength(TIA, l);
          Inc(d);
          Break;
        end;
    end;
    Result := (Extended(Length(TIA)) / (Abs(mn - mx) + 1));
  end else
    Result := 0.0;
end;

{==============================================================================]
 @action: Returns the arithmetic mean of TIA values.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TIAMean(TIA: TIntegerArray): Extended; callconv
var
  i, h: Integer;
begin
  Result := 0.0;
  h:= High(TIA);
  for i:= 0 to h do
    Result := (Result + (Extended(TIA[i]) / (h + 1)));
end;

{==============================================================================]
 @action: Returns the sum of all TIA values together.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TIASum(TIA: TIntegerArray): Int64; callconv
var
  i, h: Integer;
begin
  Result := 0;
  h:= High(TIA);
  for i := 0 to h do
    Result := (Result + TIA[i]);
end;
