{==============================================================================]
 @action: Outputs a TIA that contains all the values from start value (aStart)
          to finishing value (aFinish)..
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAByRange(aStart, aFinish: Integer; var output: TIntegerArray); callconv
var
  i, s, f: Integer;
begin
  if (aStart <> aFinish) then
  begin
    s := aStart;
    f := aFinish;
    SetLength(output, (Abs(aStart - aFinish) + 1));
    if (aStart > aFinish) then
    begin
      for i := s downto f do
        output[(s - i)] := i;
    end else
      for i := s to f do
        output[(i - s)] := i;
  end else
  begin
    SetLength(output, 1);
    output[0] := aStart;
  end;
end;

{==============================================================================]
 @action: Outputs a TIA that contains all the value from start value (aStart)
          to finishing value (aFinish)..
 @note: Works with 2-bit method, that cuts loop in half.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAByRange2bit(aStart, aFinish: Integer; var output: TIntegerArray); callconv
var
  g, l, i, s, f: Integer;
begin
  if (aStart <> aFinish) then
  begin
    s := aStart;
    f := aFinish;
    l := (Abs(aStart - aFinish) + 1);
    SetLength(output, l);
    g := ((l - 1) div 2);
    if (aStart < aFinish) then
    begin
      for i := 0 to g do
      begin
        output[i] := (s + i);
        output[((l - 1) - i)] := (f - i);
      end;
      if ((l mod 2) <> 0) then
        output[i] := (s + i);
    end else
    begin
      for i := 0 to g do
      begin
        output[i] := (s - i);
        output[((l - 1) - i)] := (f + i);
      end;
      if ((l mod 2) <> 0) then
        output[i] := (s - i);
    end;
  end else
  begin
    SetLength(output, 1);
    output[0] := aStart;
  end;
end;

{==============================================================================]
 @action: Outputs a TIA from start position, where step is the difference between each range value.
          Count is the size of the output..
          Examples: (3, -1, 3) => [3, 2, 1] and (0, 2, 4) => [0, 2, 4, 6]
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIARangeFrom(start, step, count: Integer; var output: TIntegerArray); callconv
var
  i: Integer;
begin
  if (count > 0) then
  begin
    SetLength(output, count);
    for i := 0 to (count - 1) do
      output[i] := (start + (i * step));
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Determines the lowest and highest values in TIA and stores em to lo and hi variables.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIARange(TIA: TIntegerArray; var lo, hi: Integer); callconv
var
  i, h: Integer;
begin
  h := High(TIA);
  if (h > -1) then
  begin
    lo := TIA[0];
    hi := TIA[0];
    if (h > 0) then
    for i := 1 to h do
      if (TIA[i] < lo) then
        lo := TIA[i]
      else
        if (TIA[i] > hi) then
          hi := TIA[i];
  end;
end;

{==============================================================================]
 @action: Sets ALL TIA values inside range (mn = minimum, mx = maximum)
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAEnsureRange(var TIA: TIntegerArray; mn, mx: Integer); callconv
var
  h, i, s: Integer;
begin
  if (mn > mx) then
  begin
    s := mn;
    mn := mx;
    mx := s;
  end;
  h := High(TIA);
  for i := 0 to h do
    if (TIA[i] < mn) then
      TIA[i] := mn
    else
      if (TIA[i] > mx) then
        TIA[i] := mx;
end;
