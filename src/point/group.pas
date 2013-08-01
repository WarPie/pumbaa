{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance of the first point value in the sub-array.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
procedure TPAGroup(TPA: TPointArray; distance: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
var
  a, h, l, i, r: Integer;
  d: Extended;
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
    for i := 1 to h do
    begin
      match := False;
      for a := 0 to (r - 1) do
      begin
        case method of
          dm_Euclidean: d := Sqrt(Power((TPA[i].X - output[a][0].X), 2) + Power((TPA[i].Y - output[a][0].Y), 2));
          dm_Euclidean2: d := Sqrt(Sqr(TPA[i].X - output[a][0].X) + Sqr(TPA[i].Y - output[a][0].Y));
          dm_Manhattan: d := (Abs(TPA[i].X - output[a][0].X) + Abs(TPA[i].Y - output[a][0].Y));
          dm_Chebyshev: d := Max(Abs(TPA[i].X - output[a][0].X), Abs(TPA[i].Y - output[a][0].Y));
        end;
        match := (d <= distance);
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
  SetLength(output, r);
end;

{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance range (minDistance, maxDistance) of the first point value in the sub-array.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
procedure TPAGroupEx(TPA: TPointArray; minDistance, maxDistance: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
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
      if (minDistance > maxDistance) then
      begin
        t := minDistance;
        minDistance := maxDistance;
        maxDistance := t;
      end;
      for i := 1 to h do
      begin
        match := False;
        for a := 0 to (r - 1) do
        begin
          case method of
            dm_Euclidean: d := Sqrt(Power((TPA[i].X - output[a][0].X), 2) + Power((TPA[i].Y - output[a][0].Y), 2));
            dm_Euclidean2: d := Sqrt(Sqr(TPA[i].X - output[a][0].X) + Sqr(TPA[i].Y - output[a][0].Y));
            dm_Manhattan: d := (Abs(TPA[i].X - output[a][0].X) + Abs(TPA[i].Y - output[a][0].Y));
            dm_Chebyshev: d := Max(Abs(TPA[i].X - output[a][0].X), Abs(TPA[i].Y - output[a][0].Y));
          end;
          match := ((d >= minDistance) and (d <= maxDistance));
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
