{==============================================================================]
 @action: Keeps all points in TPA that are found inside ANY box from boxes.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAExtractBoxes(var TPA: TPointArray; boxes: TBoxArray); callconv
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
    if z then
    begin
      TPA[c] := TPA[a];
      Inc(c);
    end;
  end;
  SetLength(TPA, c);
end;

{==============================================================================]
 @action: Keeps all points in TPA that are found in points.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAExtractPoints(var TPA: TPointArray; points: TPointArray); callconv
  function TPABounds(TPA: TPointArray): TBox;
  var
    h, i: Integer;
  begin
    h := High(TPA);
    if (h > -1) then
    begin
      Result.X1 := TPA[0].X;
      Result.Y1 := TPA[0].Y;
      Result.X2 := TPA[0].X;
      Result.Y2 := TPA[0].Y;
      if (h > 0) then
      for i := 1 to h do
      begin
        if (TPA[i].X < Result.X1) then
          Result.X1 := TPA[i].X
        else
          if (TPA[i].X > Result.X2) then
            Result.X2 := TPA[i].X;
        if (TPA[i].Y < Result.Y1) then
          Result.Y1 := TPA[i].Y
        else
          if (TPA[i].Y > Result.Y2) then
            Result.Y2 := TPA[i].Y;
      end;
    end else
    begin
      Result.X1 := 0;
      Result.Y1 := 0;
      Result.X2 := 0;
      Result.Y2 := 0;
    end;
  end;
var
  v, h, r, l, x, y: Integer;
  B: array of TBoolArray;
  bx, tmp: TBox;
begin;
  r := 0;
  l := Length(TPA);
  if (l > 0) then
  begin
    bx := TPABounds(TPA); // ..or TPABounds() if built-in to Simba!
    h := High(points);
    if (h > -1) then
    begin
      tmp := TPABounds(points); // ..or TPABounds() if built-in to Simba!
      bx.X1 := Min(bx.X1, tmp.X1);
      bx.Y1 := Min(bx.Y1, tmp.Y1);
      bx.X2 := Max(bx.X2, tmp.X2);
      bx.Y2 := Max(bx.Y2, tmp.Y2);
    end;
    SetLength(B, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
    begin
      SetLength(B[v], ((bx.Y2 - bx.Y1) + 1));
      y := High(B[v]);
      for x := 0 to y do
        B[v][x] := False;
    end;
    for x := 0 to h do
      B[(points[x].X - bx.X1)][(points[x].Y - bx.Y1)] := True;
    for v := 0 to (l - 1) do
      if B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] then
      begin
        TPA[r] := TPA[v];
        Inc(r);
      end;
    SetLength(B, 0);
  end;
  SetLength(TPA, r);
end;

{==============================================================================]
 @action: Keeps all points in TPA that are within distance range (minDist, maxDist) from targets.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPAExtractNearbyPointsEx(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); callconv
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
      if z then
      begin
        TPA[c] := TPA[a];
        Inc(c);
      end;
    end;
  end;
  SetLength(TPA, c);
end;

// Without distance method.
procedure TPAExtractNearbyPointsEx2(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, minDist, maxDist, DEFAULT_DISTANCE_METHOD, rounding);
end;

// Without rounding method.
procedure TPAExtractNearbyPointsEx3(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, minDist, maxDist, method, rm_None);
end;

// Without distance and rounding methods.
procedure TPAExtractNearbyPointsEx4(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, minDist, maxDist, DEFAULT_DISTANCE_METHOD, rm_None);
end;

{==============================================================================]
 @action: Keeps all points in TPA that are within distance (dist) from targets.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, 0, dist, method, rounding);
end;

// Without distance method.
procedure TPAExtractNearbyPoints2(var TPA: TPointArray; targets: TPointArray; dist: Extended; rounding: TRoundingMethod); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, 0, dist, DEFAULT_DISTANCE_METHOD, rounding);
end;

// Without rounding method.
procedure TPAExtractNearbyPoints3(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, 0, dist, method, rm_None);
end;

// Without distance and rounding methods.
procedure TPAExtractNearbyPoints4(var TPA: TPointArray; targets: TPointArray; dist: Extended); callconv
begin
  TPAExtractNearbyPointsEx(TPA, targets, 0, dist, DEFAULT_DISTANCE_METHOD, rm_None);
end;
