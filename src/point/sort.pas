{==============================================================================]
 @action: Sorts TPA Row-by-Row, starting from the lowest Y-coordinate to the highest Y-coordinate,
          and for every row from the lowest X-coordinate to the highest X-coordinate.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPASortByRow(var TPA: TPointArray); callconv
var
  v, x, y, h, r, i: Integer;
  C: array of TIntegerArray;
  bx: TBox;
begin;
  h := High(TPA);
  if (h > 0) then
  begin
    r := 0;
    bx.X1 := TPA[0].X;
    bx.Y1 := TPA[0].Y;
    bx.X2 := TPA[0].X;
    bx.Y2 := TPA[0].Y;
    for v := 1 to h do
    begin
      if (TPA[v].X < bx.X1) then
        bx.X1 := TPA[v].X
      else
        if (TPA[v].X > bx.X2) then
          bx.X2 := TPA[v].X;
      if (TPA[v].Y < bx.Y1) then
        bx.Y1 := TPA[v].Y
      else
        if (TPA[v].Y > bx.Y2) then
          bx.Y2 := TPA[v].Y;
    end;
    SetLength(C, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
    begin
      SetLength(C[v], ((bx.Y2 - bx.Y1) + 1));
      for i := 0 to (bx.Y2 - bx.Y1) do
        C[v][i] := 0;
    end;
    for v := 0 to h do
      Inc(C[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)]);
    for y := 0 to (bx.Y2 - bx.Y1) do
      for x := 0 to (bx.X2 - bx.X1) do
        if (C[x][y] > 0) then
        begin
          for i := 0 to (C[x][y] - 1) do
            TPA[(r + i)] := Point((x + bx.X1), (y + bx.Y1));
          r := (r + C[x][y]);
        end;
    SetLength(C, 0);
  end;
end;

{==============================================================================]
 @action: Sorts TPA Row-by-Row, starting from the lowest X-coordinate to the highest X-coordinate,
          and for every column from the lowest Y-coordinate to the highest Y-coordinate.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPASortByColumn(var TPA: TPointArray); callconv
var
  v, x, y, h, r, i: Integer;
  C: array of TIntegerArray;
  bx: TBox;
begin;
  h := High(TPA);
  if (h > 0) then
  begin
    r := 0;
    bx.X1 := TPA[0].X;
    bx.Y1 := TPA[0].Y;
    bx.X2 := TPA[0].X;
    bx.Y2 := TPA[0].Y;
    for v := 1 to h do
    begin
      if (TPA[v].X < bx.X1) then
        bx.X1 := TPA[v].X
      else
        if (TPA[v].X > bx.X2) then
          bx.X2 := TPA[v].X;
      if (TPA[v].Y < bx.Y1) then
        bx.Y1 := TPA[v].Y
      else
        if (TPA[v].Y > bx.Y2) then
          bx.Y2 := TPA[v].Y;
    end;
    SetLength(C, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
    begin
      SetLength(C[v], ((bx.Y2 - bx.Y1) + 1));
      for i := 0 to (bx.Y2 - bx.Y1) do
        C[v][i] := 0;
    end;
    for v := 0 to h do
      Inc(C[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)]);
    for x := 0 to (bx.X2 - bx.X1) do
      for y := 0 to (bx.Y2 - bx.Y1) do
        if (C[x][y] > 0) then
        begin
          for i := 0 to (C[x][y] - 1) do
            TPA[(r + i)] := Point((x + bx.X1), (y + bx.Y1));
          r := (r + C[x][y]);
        end;
    SetLength(C, 0);
  end;
end;
