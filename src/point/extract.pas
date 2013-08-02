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
    if z then
    begin
      TPA[c] := TPA[a];
      Inc(c);
    end;
  end;
  SetLength(TPA, c);
end;

{==============================================================================]
 @action: Keeps all points in TPA that are within distance (dist) from targets.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod); callconv
var
  a, b, c, x, y: Integer;
  z: Boolean;
begin
  b := High(TPA);
  y := High(targets);
  c := 0;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      z := (dist >= Distance(TPA[a], targets[x], method));
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
 @action: Keeps all points in TPA that are within distance range (minDist, maxDist) from targets.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAExtractNearbyPointsEx(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); callconv
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
        d := Distance(TPA[a], targets[x], method);
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
