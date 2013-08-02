{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance range (minDist, maxDist) from each other.
  @note: Supports custom distance and rounding methods.
  @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPASplitEx(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); callconv
var
  a, b, h, l, i, r: Integer;
  d, t: Extended;
  match: Boolean;
begin
  r := 0;
  h := High(TPA);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    SetLength(output[0], 1);
    output[0][0] := TPA[0];
    r := 1;
    if (h > 0) then
    begin
      if (minDist > maxDist) then
      begin
        t := minDist;
        minDist := maxDist;
        maxDist := t;
      end;
      for i := 1 to h do
      begin
        match := False;
        for a := 0 to (r - 1) do
        begin
          l := Length(output[a]);
          for b := 0 to (l - 1) do
          begin
            d := DistanceEx(TPA[i], output[a][b], method, rounding);
            match := ((d >= minDist) and (d <= maxDist));
            if match then
            begin
              SetLength(output[a], (l + 1));
              output[a][l] := TPA[i];
              Break;
            end;
          end;
          if match then
            Break;
        end;
        if not match then
        begin
          SetLength(output[r], 1);
          output[r][0] := TPA[i];
          Inc(r);
        end;
      end;
    end;
  end;
  SetLength(output, r);
end;

// Without distance method.
procedure TPASplitEx2(TPA: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, minDist, maxDist, dm_Euclidean, rounding, output);
end;

// Without rounding method.
procedure TPASplitEx3(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, minDist, maxDist, method, rm_None, output);
end;

// Without distance and rounding methods.
procedure TPASplitEx4(TPA: TPointArray; minDist, maxDist: Extended; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, minDist, maxDist, dm_Euclidean, rm_None, output);
end;

{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance from each other.
  @note: Supports custom distance and rounding methods.
  @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPASplit(TPA: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, 0, dist, method, rounding, output);
end;

// Without distance method.
procedure TPASplit2(TPA: TPointArray; dist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, 0, dist, DEFAULT_DISTANCE_METHOD, rounding, output);
end;

// Without rounding method.
procedure TPASplit3(TPA: TPointArray; dist: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, 0, dist, method, rm_None, output);
end;

// Without distance and rounding methods.
procedure TPASplit4(TPA: TPointArray; dist: Extended; var output: T2DPointArray); callconv
begin
  TPASplitEx(TPA, 0, dist, DEFAULT_DISTANCE_METHOD, rm_None, output);
end;
