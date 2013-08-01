{==============================================================================]
 @action: Outputs Flood Filled points from TPA or non-TPA points inside TPA Bounds,
          starting from start, based on FloodFill() action.
          method parameter accepts: sd4Ways (4-way FloodFill) and sd8Ways (8-way FloodFill)
 @note: Make sure start is inside TPA Bounds.
        Doesn't pay attention to ANYTHING outside those boundaries. :)
 @contributors: Janilabo, slacky
[==============================================================================}
procedure TPAFloodFill(TPA: TPointArray; start: TPoint; FF8W: Boolean; var output: TPointArray); callconv
  procedure GetAdjacent(var adj: TPointArray; n: TPoint; FF8W: Boolean);
  begin
    adj[0] := Point(n.x, (n.y - 1));
    adj[3] := Point(n.x, (n.y + 1));
    adj[1] := Point((n.x + 1), n.y);
    adj[2] := Point((n.x - 1), n.y);
    if FF8W then
    begin
      adj[4] := Point((n.x - 1), (n.y - 1));
      adj[5] := Point((n.x + 1), (n.y - 1));
      adj[6] := Point((n.x - 1), (n.y + 1));
      adj[7] := Point((n.x + 1), (n.y + 1));
    end;
  end;
var
  c, l, i, w, h, x, y, q, fj: Integer;
  queue, face: TPointArray;
  adj: TPoint;
  check, store: T2DBoolArray;
  overlap, skip: Boolean;
  b: TBox;
begin
  c := 0;
  l := Length(TPA);
  if (l > 0) then
  begin
    overlap := False;
    B.X1 := TPA[0].X;
    B.Y1 := TPA[0].Y;
    B.X2 := TPA[0].X;
    B.Y2 := TPA[0].Y;
    if (l > 1) then
    begin
      for i := 1 to (l - 1) do
      begin
        if (TPA[i].X < b.X1) then
          b.X1 := TPA[i].X
        else
          if (TPA[i].X > b.X2) then
            b.X2 := TPA[i].X;
        if (TPA[i].Y < b.Y1) then
          b.Y1 := TPA[i].Y
        else
          if (TPA[i].Y > b.Y2) then
            b.Y2 := TPA[i].Y;
      end;
    end;
    if ((start.X >= b.X1) and (start.Y >= b.Y1) and (start.X <= b.X2) and (start.Y <= b.Y2)) then
    begin
      W := ((b.X2 - b.X1) + 1);
      H := ((b.Y2 - b.Y1) + 1);
      SetLength(check, W);
      SetLength(store, W);
      for i := 0 to (W - 1) do
      begin
        SetLength(check[i], H);
        SetLength(store[i], H);
        for q := 0 to (H - 1) do
        begin
          check[i][q] := False;
          store[i][q] := False;
        end;
      end;
      for i := 0 to (l - 1) do
      begin
        if not overlap then
          overlap := ((start.X = TPA[i].X) and (start.Y = TPA[i].Y));
        if (((TPA[i].X - b.X1) > -1) and ((TPA[i].Y - b.Y1) > -1) and ((TPA[i].Y - b.Y1) < H) and ((TPA[i].X - b.X1) < W)) then
          check[(TPA[i].X - b.X1)][(TPA[i].Y - b.Y1)] := True;
      end;
      skip := not overlap;
      if FF8W then
        fj := 7
      else
        fj := 3;
      SetLength(Face, (fj + 1));
      SetLength(output, (W * H));
      SetLength(queue, (W * H));
      queue[0] := Start;
      l := 0;
      while (l > -1) do
      begin
        GetAdjacent(face, queue[l], FF8W);
        for i := 0 to fj do
        begin
          adj := face[i];
          x := (adj.x - b.X1);
          y := (adj.y - b.Y1);
          if ((x > -1) and (y > -1) and (x < W) and (y < H)) then
            if (check[x][y] = not skip) then
            begin
              check[x][y] := skip;
              store[x][y] := True;
              queue[l] := adj;
              Inc(l);
            end;
        end;
        l := (l - 1);
      end;
      SetLength(check, 0);
      SetLength(queue, 0);
      SetLength(face, 0);
      c := 0;
      for Y := 0 to (H - 1) do
        for X := 0 to (W - 1) do
          if store[X][Y] then
          begin
            output[c] := Point((X + b.X1), (Y + b.Y1));
            Inc(c);
          end;
      SetLength(store, 0);
    end;
  end;
  SetLength(output, c);
end;

{==============================================================================]
  @action:: Outputs Flood Filled points from TPA or non-TPA points inside an area,
            starting from start, based on FloodFill() action.
            method parameter accepts: sd4Ways (4-way FloodFill) and sd8Ways (8-way FloodFill)
            Supports custom area by area as TBox.
  note: Make sure start is inside your area. Doesn't pay attention to ANYTHING outside area. :)
  contributors: Janilabo, slacky
[==============================================================================}
procedure TPAFloodFillEx(TPA: TPointArray; start: TPoint; FF8W: Boolean; area: TBox; var output: TPointArray);
  procedure GetAdjacent(var adj: TPointArray; n: TPoint; FF8W: Boolean);
  begin
    adj[0] := Point(n.x, (n.y - 1));
    adj[3] := Point(n.x, (n.y + 1));
    adj[1] := Point((n.x + 1), n.y);
    adj[2] := Point((n.x - 1), n.y);
    if FF8W then
    begin
      adj[4] := Point((n.x - 1), (n.y - 1));
      adj[5] := Point((n.x + 1), (n.y - 1));
      adj[6] := Point((n.x - 1), (n.y + 1));
      adj[7] := Point((n.x + 1), (n.y + 1));
    end;
  end;
var
  c, l, i, w, h, x, y, q, fj, t: Integer;
  queue, face: TPointArray;
  adj: TPoint;
  check, store: T2DBoolArray;
  overlap, skip: Boolean;
begin
  c := 0;
  l := Length(TPA);
  if (l > 0) then
  begin
    overlap := False;
    if (area.X1 > area.X2) then
    begin
      t := area.X1;
      area.X1 := area.X2;
      area.X2 := t;
    end;
    if (area.Y1 > area.Y2) then
    begin
      t := area.Y1;
      area.Y1 := area.Y2;
      area.Y2 := t;
    end;
    if ((start.X >= area.X1) and (start.Y >= area.Y1) and (start.X <= area.X2) and (start.Y <= area.Y2)) then
    begin
      W := ((area.X2 - area.X1) + 1);
      H := ((area.Y2 - area.Y1) + 1);
      SetLength(check, W);
      SetLength(store, W);
      for i := 0 to (W - 1) do
      begin
        SetLength(check[i], H);
        SetLength(store[i], H);
        for q := 0 to (H - 1) do
        begin
          check[i][q] := False;
          store[i][q] := False;
        end;
      end;
      for i := 0 to (l - 1) do
      begin
        if not overlap then
          overlap := ((start.X = TPA[i].X) and (start.Y = TPA[i].Y));
        if (((TPA[i].X - area.X1) > -1) and ((TPA[i].Y - area.Y1) > -1) and ((TPA[i].Y - area.Y1) < H) and ((TPA[i].X - area.X1) < W)) then
          check[(TPA[i].X - area.X1)][(TPA[i].Y - area.Y1)] := True;
      end;
      skip := not overlap;
      if FF8W then
        fj := 7
      else
        fj := 3;
      SetLength(Face, (fj + 1));
      SetLength(output, (W * H));
      SetLength(queue, (W * H));
      queue[0] := Start;
      l := 0;
      while (l > -1) do
      begin
        GetAdjacent(face, queue[l], FF8W);
        for i := 0 to fj do
        begin
          adj := face[i];
          x := (adj.x - area.X1);
          y := (adj.y - area.Y1);
          if ((x > -1) and (y > -1) and (x < W) and (y < H)) then
            if (check[x][y] = not skip) then
            begin
              check[x][y] := skip;
              store[x][y] := True;
              queue[l] := adj;
              Inc(l);
            end;
        end;
        l := (l - 1);
      end;
      SetLength(check, 0);
      SetLength(queue, 0);
      SetLength(face, 0);
      for Y := 0 to (H - 1) do
        for X := 0 to (W - 1) do
          if store[X][Y] then
          begin
            output[c] := Point((X + area.X1), (Y + area.Y1));
            Inc(c);
          end;
      SetLength(store, 0);
    end;
  end;
  SetLength(output, c);
end;
