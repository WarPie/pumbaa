{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance range (minDist, maxDist) of the first point value in the sub-array.
  @note: Supports custom distance and rounding methods.
  @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPAGroupEx(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); callconv
var
  a, h, l, i, r: Integer;
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
          d := DistanceEx(TPA[i], output[a][0], method, rounding);
          match := ((d >= minDist) and (d <= maxDist));
          if match then
          begin
            l := Length(output[a]);
            SetLength(output[a], (l + 1));
            output[a][l] := TPA[i];
            Break;
          end;
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

{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance (dist) of the first point value in the sub-array.
  @note: Supports custom distance and rounding methods.
  @contributors: Janilabo, slacky
[==============================================================================}

// Without distance method.
procedure TPAGroupEx2(TPA: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, minDist, maxDist, dm_Euclidean, rounding, output);
end;

// Without rounding method.
procedure TPAGroupEx3(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, minDist, maxDist, method, rm_None, output);
end;

// Without distance and rounding methods.
procedure TPAGroupEx4(TPA: TPointArray; minDist, maxDist: Extended; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, minDist, maxDist, dm_Euclidean, rm_None, output);
end;

{==============================================================================]
  @action: Groups given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance from each other.
  @note: Supports custom distance and rounding methods.
  @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPAGroup(TPA: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, 0, dist, method, rounding, output);
end;

// Without distance method.
procedure TPAGroup2(TPA: TPointArray; dist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, 0, dist, DEFAULT_DISTANCE_METHOD, rounding, output);
end;

// Without rounding method.
procedure TPAGroup3(TPA: TPointArray; dist: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, 0, dist, method, rm_None, output);
end;

// Without distance and rounding methods.
procedure TPAGroup4(TPA: TPointArray; dist: Extended; var output: T2DPointArray); callconv
begin
  TPAGroupEx(TPA, 0, dist, DEFAULT_DISTANCE_METHOD, rm_None, output);
end;
