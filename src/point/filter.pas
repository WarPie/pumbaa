{==============================================================================]
 @action: Removes all points from TPA that are found inside ANY box from boxes.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAFilterBoxes(var TPA: TPointArray; boxes: TBoxArray); callconv
var
  a, b, c, x, y: Integer;
  z: Boolean;
begin
  b := High(TPA);
  y := High(boxes);
  c := 0;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      z := ((TPA[a].X >= boxes[x].X1) and (TPA[a].Y >= boxes[x].Y1) and (TPA[a].X <= boxes[x].X2) and (TPA[a].Y <= boxes[x].Y2));
      if z then
        Break;
    end;
    if not z then
    begin
      TPA[c] := TPA[a];
      Inc(c);
    end;
  end;
  SetLength(TPA, c);
end;

{==============================================================================]
 @action: Removes all points from TPA that are found in points.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAFilterPoints(var TPA: TPointArray; points: TPointArray); callconv
var
  a, b, c, x, y: Integer;
  z: Boolean;
begin
  b := High(TPA);
  y := High(points);
  c := 0;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      z := ((TPA[a].X = points[x].X) and (TPA[a].Y = points[x].Y));
      if z then
        Break;
    end;
    if not z then
    begin
      TPA[c] := TPA[a];
      Inc(c);
    end;
  end;
  SetLength(TPA, c);
end;

{==============================================================================]
 @action: Removes all points from TPA that are within distance range (minDistance, maxDistance) from targets.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPAFilterNearbyPointsEx(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); callconv
var
  a, b, c, x, y: Integer;
  d, s: Extended;
  z: Boolean;
begin
  b := High(TPA);
  y := High(targets);
  c := 0;
  if ((b > -1) and (y > -1)) then
  begin
    if (minDist > maxDist) then
    begin
      s := minDist;
      minDist := maxDist;
      maxDist := s;
    end;
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        d := DistanceEx(TPA[a], targets[x], method, rounding);
        z := ((d >= minDist) and (d <= maxDist));
        if z then
          Break;
      end;
      if not z then
      begin
        TPA[c] := TPA[a];
        Inc(c);
      end;
    end;
  end;
  SetLength(TPA, c);
end;

 // Without distance method.
procedure TPAFilterNearbyPointsEx2(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, minDist, maxDist, DEFAULT_DISTANCE_METHOD, rounding);
end;

// Without rounding method.
procedure TPAFilterNearbyPointsEx3(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, minDist, maxDist, method, rm_None);
end;

// Without distance and rounding methods.
procedure TPAFilterNearbyPointsEx4(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, minDist, maxDist, DEFAULT_DISTANCE_METHOD, rm_None);
end;

{==============================================================================]
 @action: Removes all points from TPA that are within distance from targets.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, 0, dist, method, rounding);
end;

// Without distance method.
procedure TPAFilterNearbyPoints2(var TPA: TPointArray; targets: TPointArray; dist: Extended; rounding: TRoundingMethod); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, 0, dist, DEFAULT_DISTANCE_METHOD, rounding);
end;

// Without rounding method.
procedure TPAFilterNearbyPoints3(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, 0, dist, method, rm_None);
end;

// Without distance and rounding methods.
procedure TPAFilterNearbyPoints4(var TPA: TPointArray; targets: TPointArray; dist: Extended); callconv
begin
  TPAFilterNearbyPointsEx(TPA, targets, 0, dist, DEFAULT_DISTANCE_METHOD, rm_None);
end;
