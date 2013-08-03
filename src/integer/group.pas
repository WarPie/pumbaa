{==============================================================================]
 @action: Splits given TIntArray (TIA) into T2DIntArray by grouping together the integer values
          that are within a given difference range (minDiff, maxDiff) of the first integer value in the sub-array.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAGroupEx(TIA: TIntegerArray; minDiff, maxDiff: Integer; var output: T2DIntegerArray); callconv
var
  a, h, l, i, r, d, s: Integer;
  match: Boolean;
begin
  r := 0;
  h := High(TIA);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    SetLength(output[0], 1);
    output[0][0] := TIA[0];
    if (h > 0) then
    begin
      r := 1;
      if (minDiff > maxDiff) then
      begin
        s := minDiff;
        minDiff := maxDiff;
        maxDiff := s;
      end;
      for i := 1 to h do
      begin
        match := False;
        for a := 0 to (r - 1) do
        begin
          d := Abs(TIA[i] - output[a][0]);
          match := ((d >= minDiff) and (d <= maxDiff));
          if match then
          begin
            l := Length(output[a]);
            SetLength(output[a], (l + 1));
            output[a][l] := TIA[i];
            Break;
          end;
        end;
        if not match then
        begin
          SetLength(output[r], 1);
          output[r][0] := TIA[i];
          Inc(r);
        end;
      end;
    end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Splits given TIntArray (TIA) into T2DIntArray by grouping together the integer values
          that are within a given difference/distance (diff) of the first integer value in the sub-array.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TIAGroup(TIA: TIntegerArray; diff: Integer; var output: T2DIntegerArray); callconv
begin
  TIAGroupEx(TIA, 0, diff, output);
end;
