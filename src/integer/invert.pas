{==============================================================================]
 @action: Inverts TIA by replacing all of the integers inside the numberline that weren't defined in the array.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAInvert(var TIA: TIntegerArray); callconv
var
  c, l, i, mn, mx, x, y, r: Integer;
  b: TBoolArray;
begin
  y := High(TIA);
  if (y > 0) then
  begin
    mn := TIA[0];
    mx := TIA[0];
    for x := 1 to y do
      if (TIA[x] < mn) then
        mn := TIA[x]
      else
        if (TIA[x] > mx) then
          mx := TIA[x];
    if (mn <> mx) then
    begin
      c := 0;
      l := (Abs(mn - mx) + 1);
      SetLength(b, l);
      for x := 0 to y do
        if not b[(TIA[x] - mn)] then
        begin
          b[(TIA[x] - mn)] := True;
          Inc(c);
        end;
      SetLength(TIA, (l - c));
      if (Length(TIA) > 0) then
      begin
        r := 0;
        for i := 0 to (l - 1) do
          if not b[i] then
          begin
            TIA[r] := (i + mn);
            Inc(r);
          end;
      end;
      SetLength(b, 0);
    end else
      SetLength(TIA, 0);
  end else
    SetLength(TIA, 0);
end;
