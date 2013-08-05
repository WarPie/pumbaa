{==============================================================================]
  @action: Determines the lowest and highest values in TEA and stores em to lo and hi variables.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TEARange(TEA: TExtendedArray; var lo, hi: Extended); callconv
var
  i, h: Integer;
begin
  h := High(TEA);
  if (h > -1) then
  begin
    lo := TEA[0];
    hi := TEA[0];
    if (h > 0) then
    for i := 1 to h do
      if (TEA[i] < lo) then
        lo := TEA[i]
      else
        if (TEA[i] > hi) then
          hi := TEA[i];
  end;
end;

{==============================================================================]
  @action: Sets ALL TEA values inside range (mn = minimum, mx = maximum)
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TEAEnsureRange(var TEA: TExtendedArray; mn, mx: Extended); callconv
var
  h, i: Integer;
  s: Extended;
begin
  if (mn > mx) then
  begin
    s := mn;
    mn := mx;
    mx := s;
  end;
  h := High(TEA);
  for i := 0 to h do
    if (TEA[i] < mn) then
      TEA[i] := mn
    else
      if (TEA[i] > mx) then
        TEA[i] := mx;
end;
