{==============================================================================]
 @action: Removes all duplicates from TIA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAUnique(var TIA: TIntegerArray); callconv
var
  c, mn, mx, x, y: Integer;
  b: TBoolArray;
begin
  y := High(TIA);
  if (y > 0) then
  begin
    c := 0;
    mn := TIA[0];
    mx := TIA[0];
    for x := 1 to y do
      if (TIA[x] < mn) then
        mn := TIA[x]
      else
        if (TIA[x] > mx) then
          mx := TIA[x];
    SetLength(b, (Abs(mn - mx) + 1));
    for x := 0 to y do
      if not b[(TIA[x] - mn)] then
      begin
        b[(TIA[x] - mn)] := True;
        TIA[c] := TIA[x];
        Inc(c);
      end;
    SetLength(b, 0);
    SetLength(TIA, c);
  end;
end;
