{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance from each other.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
procedure TPASplit(const TPA: TPointArray; distance: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
var
  a, b, h, l, i, r: Integer;
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
        l := Length(output[a]);
        for b := 0 to (l - 1) do
        begin
          case method of
            dm_Euclidean: d := Sqrt(Power((TPA[i].X - output[a][b].X), 2) + Power((TPA[i].Y - output[a][b].Y), 2));
            dm_Euclidean2: d := Sqrt(Sqr(TPA[i].X - output[a][b].X) + Sqr(TPA[i].Y - output[a][b].Y));
            dm_Manhattan: d := (Abs(TPA[i].X - output[a][b].X) + Abs(TPA[i].Y - output[a][b].Y));
            dm_Chebyshev: d := Max(Abs(TPA[i].X - output[a][b].X), Abs(TPA[i].Y - output[a][b].Y));
          end;
          match := (d <= distance);
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
        r := (r + 1);
      end;
    end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
  @action: Splits given TPointArray (TPA) into T2DPointArray by grouping together the point values
           that are within a given distance range (minDistance, maxDistance) from each other.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
procedure TPASplitEx(TPA: TPointArray; minDistance, maxDistance: Extended; method: TDistanceMethod; var output: T2DPointArray); callconv
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
          l := Length(output[a]);
          for b := 0 to (l - 1) do
          begin
            case method of
              dm_Euclidean: d := Sqrt(Power((TPA[i].X - output[a][b].X), 2) + Power((TPA[i].Y - output[a][b].Y), 2));
              dm_Euclidean2: d := Sqrt(Sqr(TPA[i].X - output[a][b].X) + Sqr(TPA[i].Y - output[a][b].Y));
              dm_Manhattan: d := (Abs(TPA[i].X - output[a][b].X) + Abs(TPA[i].Y - output[a][b].Y));
              dm_Chebyshev: d := Max(Abs(TPA[i].X - output[a][b].X), Abs(TPA[i].Y - output[a][b].Y));
            end;
            match := ((d >= minDistance) and (d <= maxDistance));
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
