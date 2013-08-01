{==============================================================================]
  Explanation: Outputs the line of points lineStart => lineEnd.
[==============================================================================}
procedure TPAFromLine(lineStart, lineEnd: TPoint; var output: TPointArray); callconv
var
  i, h: integer;
begin
  if ((lineStart.X <> lineEnd.X) or (lineStart.Y <> lineEnd.Y)) then
  begin
    h := Max(Round(Abs(lineStart.X - lineEnd.X)), Round(Abs(lineStart.Y - lineEnd.Y)));
    SetLength(output, (h + 1));
    for i := 0 to h do
      output[i] := Point((lineStart.X + Round((lineEnd.X - lineStart.X) * (Extended(i) / h))), (lineStart.Y + Round((lineEnd.Y - lineStart.Y) * (Extended(i) / h))));
  end else
  begin
    SetLength(output, 1);
    output[0] := lineStart;
  end;
end;

{==============================================================================]
  @action: Generates a TPA containing all coordinates within the given ellipse,
           defined by the center point and radius. Coordinates are stored row-by-row.
  @note: None
  @contributors: slacky, Janilabo
[==============================================================================}

procedure TPAFromEllipse(center: TPoint; XRadius, YRadius: Extended; var output: TPointArray); callconv
var
  r, x, y, rx, ry: Integer;
  b: TBox;
begin
  r := 0;
  if ((XRadius > 0) and (YRadius > 0)) then
  begin
    rx := Round(XRadius);
    ry := Round(YRadius);
    b.X1 := (center.X - rx);
    b.Y1 := (center.Y - ry);
    b.X2 := (center.X + rx);
    b.Y2 := (center.Y + ry);
    SetLength(output, Integer(((b.X2 - b.X1) + 1) * ((b.Y2 - b.Y1) + 1)));
    for y := b.Y1 to b.Y2 do
      for x := b.X1 to b.X2 do
        if (Sqr((x - center.X) / XRadius) + Sqr((y - center.Y) / YRadius) <= 1) then
        begin
          output[r] := Point(x, y);
          Inc(r);
        end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
  @action: Generates a TPA containing all coordinates within the given circle,
           defined by the center point and radius. Coordinates are stored row-by-row.
  @note: None
  @contributors: slacky, Janilabo
[==============================================================================}

procedure TPAFromCircle(center: TPoint; radius: Extended; var output: TPointArray); callconv
var
  r, x, y, v: Integer;
  b: TBox;
begin
  r := 0;
  if (radius > 0) then
  begin
    v := Round(radius);
    b.X1 := (center.X - v);
    b.Y1 := (center.Y - v);
    b.X2 := (center.X + v);
    b.Y2 := (center.Y + v);
    SetLength(output, Integer(((b.X2 - b.X1) + 1) * ((b.Y2 - b.Y1) + 1)));
    for y := b.Y1 to b.Y2 do
      for x := b.X1 to b.X2 do
        if (Sqr((x - center.X) / radius) + Sqr((y - center.Y) / radius) <= 1) then
        begin
          output[r] := Point(x, y);
          Inc(r);
        end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
  @action: Outputs polygon by given outlines (shape)
  @note: None
  @contributors: slacky, Janilabo
[==============================================================================}

procedure TPAFromPolygon(shape: TPointArray; var output: TPointArray); callconv
var
  b: TBox;
  x, y, h, i, l, r, z: Integer;
  o: TPointArray;
  f: Boolean;
  t: array of TBoolArray;
  e: Extended;
  q, p, d: TPoint;
begin
  h := High(shape);
  if (h > -1) then
  begin
    if (h < 2) then
    begin
      case h of
        0:
        begin
          SetLength(output, 1);
          output[0] := shape[0];
        end;
        1: TPAFromLine(shape[0], shape[1], output);
      end;
      Exit;
    end;
    SetLength(o, 0);
    b.X1 := shape[0].X;
    b.Y1 := shape[0].Y;
    b.X2 := shape[0].X;
    b.Y2 := shape[0].Y;
    for i := 0 to h do
    begin
      q := shape[i];
      if (i < h) then
        p := shape[(i + 1)]
      else
        p := shape[0];
      r := Length(o);
      if ((q.X <> p.X) or (q.Y <> p.Y)) then
      begin
        l := Max(Round(Abs(q.X - p.X)), Round(Abs(q.Y - p.Y)));
        SetLength(o, ((r + l) + 1));
        for z := 0 to l do
          o[(r + z)] := Point((q.X + Round((p.X - q.X) * (z / Extended(l)))), (q.Y + Round((p.Y - q.Y) * (z / Extended(l)))));
      end else
      begin
        SetLength(o, (r + 1));
        o[r] := q;
      end;
      if (shape[i].X < b.X1) then
        b.X1 := shape[i].X
      else
        if (shape[i].X > b.X2) then
          b.X2 := shape[i].X;
      if (shape[i].Y < b.Y1) then
        b.Y1 := shape[i].Y
      else
        if (shape[i].Y > b.Y2) then
          b.Y2 := shape[i].Y;
    end;
    SetLength(t, ((b.X2 - b.X1) + 1));
    for i := 0 to (b.X2 - b.X1) do
      SetLength(t[i], ((b.Y2 - b.Y1) + 1));
    l := Length(o);
    for i := 0 to (l - 1) do
      if not t[(o[i].X - b.X1)][(o[i].Y - b.Y1)] then
        t[(o[i].X - b.X1)][(o[i].Y - b.Y1)] := True;
    SetLength(o, 0);
    for y := 0 to (b.Y2 - b.Y1) do
      for x := 0 to (b.X2 - b.X1) do
      begin
        f := t[x][y];
        if not f then
        begin
          d := Point((x + b.X1), (y + b.Y1));
          q := shape[0];
          for i := 0 to (h + 1) do
          begin
            p := shape[(i mod (h + 1))];
            if (d.Y > Min(q.Y, p.Y)) then
              if (d.Y <= Max(q.Y, p.Y)) then
                if (d.X <= Max(q.X, p.X)) then
                begin
                  if (q.y <> p.y) then
                    e := ((d.Y - q.Y) * (p.X - q.X) / Extended((p.Y - q.Y)) + q.X);
                  if ((q.X = p.X) or (d.X < e)) then
                    f := not f;
                end;
            q := p;
          end;
        end;
        if f then
        begin
          l := Length(output);
          SetLength(output, (l + 1));
          output[l] := Point((x + b.X1), (y + b.Y1));
        end;
      end;
    SetLength(t, 0);
  end else
    SetLength(output, 0);
end;

{==============================================================================]
  @action: Generates a TPA containing all coordinates within the given xagon.
  @note: None
  @contributors: slacky, Janilabo
[==============================================================================}

procedure TPAFromXagon(sides: Integer; C, S: TPoint; var output: TPointArray); callconv
var
  x, y, a, b, v: Integer;
  n, m: Extended;
  main: TPointArray;
begin
  if (sides > 2) then
  begin
    SetLength(main, sides);
    x := S.x;
    y := S.y;
    n := Sin(FixRadians((360.0 / sides) * (Pi / 180.0)));
    m := Cos(FixRadians((360.0 / sides) * (Pi / 180.0)));
    for v := 0 to (sides - 1) do
    begin
      a := (x - C.x);
      b := (y - C.y);
      x := Round(((b * n) + (a * m) + C.x));
      y := Round(((b * m) - (a * n) + C.y));
      main[v] := Point(x, y);
    end;
    TPAFromPolygon(main, output);
    SetLength(main, 0);
  end else
  case sides of
    1:
    begin
      SetLength(output, 1);
      output[0] := C;
    end;
    2: TPAFromLine(C, S, output);
  else
    TPAFromCircle(C, (Distance(C, S, dm_Euclidean2) + 0.5), output);
  end;
end;
