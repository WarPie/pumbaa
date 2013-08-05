{==============================================================================]
  @action: Calculates the minimum and maximum distance of the target,
           to all of the points in TPA and returns the distances in minDist and maxDist.
           The point from TPA that was closest to target is returned in minPoint and the one farthest in maxPoint.
  @note: Supports custom distance method with method.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TPADistanceToPointEx(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended; var minPoint, maxPoint: TPoint; method: TDistanceMethod); callconv
var
  h, i: Integer;
  d: Extended;
begin
  h := High(TPA);
  if (h > -1) then
  begin
    minDist := Distance3(TPA[0], target, method);
    maxDist := minDist;
    minPoint := TPA[0];
    maxPoint := TPA[0];
    if (h > 0) then
    for i := 1 to h do
    begin
      d := Distance3(TPA[i], target, method);
      if (d < minDist) then
      begin
        minDist := d;
        minPoint := TPA[i];
      end else
        if (d > maxDist) then
        begin
          maxDist := d;
          maxPoint := TPA[i];
        end;
    end;
  end else
  begin
    minDist := -1;
    maxDist := -1;
    minPoint := Point(0, 0);
    maxPoint := Point(0, 0);
  end;
end;

{==============================================================================]
  @action: Calculates the minimum and maximum distance of the target,
           to all of the points in TPA and returns the distances in minDist and maxDist.
           The point from TPA that was closest to target is returned in minPoint and the one farthest in maxPoint.
  @note: Based on default distance method (Euclidean)
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TPADistanceToPointEx2(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended; var minPoint, maxPoint: TPoint); callconv
begin
  TPADistanceToPointEx(TPA, target, minDist, maxDist, minPoint, maxPoint, DEFAULT_DISTANCE_METHOD);
end;

{==============================================================================]
  @action: Calculates the minimum and maximum distance of the target,
           to all of the points in TPA and returns the distances in minDist and maxDist.
  @note: Supports custom distance method with method.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TPADistanceToPoint(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended; method: TDistanceMethod); callconv
var
  h, i: Integer;
  d: Extended;
begin
  h := High(TPA);
  if (h > -1) then
  begin
    minDist := Distance3(TPA[0], target, method);
    maxDist := minDist;
    if (h > 0) then
    for i := 1 to h do
    begin
      d := Distance3(TPA[i], target, method);
      if (d < minDist) then
        minDist := d
      else
        if (d > maxDist) then
          maxDist := d;
    end;
  end else
  begin
    minDist := -1;
    maxDist := -1;
  end;
end;

{==============================================================================]
  @action: Calculates the minimum and maximum distance of the target,
           to all of the points in TPA and returns the distances in minDist and maxDist.
  @note: Based on default distance method (Euclidean)
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TPADistanceToPoint2(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended); callconv
begin
  TPADistanceToPoint(TPA, target, minDist, maxDist, DEFAULT_DISTANCE_METHOD);
end;
