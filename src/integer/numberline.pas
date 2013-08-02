{==============================================================================]
 @action: Outputs numberline by TIA minimum and maximum values from TIA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIANumberline(TIA: TIntegerArray; var output: TIntegerArray); callconv
var
  i, s, f, mn, mx, x, y: Integer;
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
    if (mn <> mx) then
    begin
      s := mn;
      f := mx;
      SetLength(output, (Abs(mn - mx) + 1));
      for i := s to f do
        output[(i - s)] := i;
    end else
    begin
      SetLength(output, 1);
      output[0] := mn;
    end;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Returns the size of numberline by TIA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TIANumberlineSize(TIA: TIntegerArray): Integer; callconv
var
  x, y, mn, mx: Integer;
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
    Result := (Abs(mn - mx) + 1);
  end else
    Result := 0;
end;
