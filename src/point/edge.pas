{==============================================================================]
 @action: Replaces TPA with all the edge-points from TPA.
          Supports both, 4-way and 8-way direction scanning styles.
 @note: Edge-points are points that are on the edge of the TPA, not completely surrounded by other points.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAEdgeEx(var TPA: TPointArray; scan: TScanDirections); callconv
var
  v, x, y, h, r: Integer;
  B: array of TBoolArray;
  bx: TBox;
begin;
  h := High(TPA);
  if (h > 3) then
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
    bx.X1 := (bx.X1 - 1);
    bx.Y1 := (bx.Y1 - 1);
    bx.X2 := (bx.X2 + 1);
    bx.Y2 := (bx.Y2 + 1);
    SetLength(B, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
      SetLength(B[v], ((bx.Y2 - bx.Y1) + 1));
    for v := 0 to h do
      if not B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] then
        B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] := True;
    case scan of
      sd4Ways:
      for y := 1 to ((bx.Y2 - bx.Y1) - 1) do
        for x := 1 to ((bx.X2 - bx.X1) - 1) do
          if B[x][y] then
            if not (B[(x - 1)][y] and B[x][(y - 1)] and B[(x + 1)][y] and B[x][(y + 1)]) then
            begin
              TPA[r].X := (x + bx.X1);
              TPA[r].Y := (y + bx.Y1);
              Inc(r);
            end;
      sd8Ways:
      for y := 1 to ((bx.Y2 - bx.Y1) - 1) do
        for x := 1 to ((bx.X2 - bx.X1) - 1) do
          if B[x][y] then
            if not (B[(x - 1)][y] and B[x][(y - 1)] and B[(x + 1)][y] and B[x][(y + 1)] and B[(x - 1)][(y - 1)] and B[(x - 1)][(y + 1)] and B[(x + 1)][(y - 1)] and B[(x + 1)][(y + 1)]) then
            begin
              TPA[r].X := (x + bx.X1);
              TPA[r].Y := (y + bx.Y1);
              Inc(r);
            end;
    end;
    SetLength(TPA, r);
    SetLength(B, 0);
  end;
end;

{==============================================================================]
 @action: Replaces TPA with all the edge-points from TPA.
          Based on 4-way direction scan style - just like in SCAR Divi.
 @note: Edge-points are points that are on the edge of the TPA, not completely surrounded by other points.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAEdge(var TPA: TPointArray); callconv
begin
  TPAEdgeEx(TPA, sd4Ways);
end;
