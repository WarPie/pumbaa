{==============================================================================]
 @action: Outputs all the points from box (bx) that aren't used in TPA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAUnusedBoxPixels(TPA: TPointArray; bx: TBox; var output: TPointArray); callconv
var
  v, x, y, h, r: Integer;
  B: array of TBoolArray;
begin;
  r := 0;
  h := High(TPA);
  if ((h > -1) and ((((bx.X2 - bx.X1) + 1) > 0) and (((bx.Y2 - bx.Y1) + 1) > 0))) then
  begin
    SetLength(B, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
      SetLength(B[v], ((bx.Y2 - bx.Y1) + 1));
    x := 0;
    for v := 0 to h do
      if ((TPA[v].X >= bx.X1) and (TPA[v].Y >= bx.Y1) and (TPA[v].X <= bx.X2) and (TPA[v].Y <= bx.Y2)) then
        if not B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] then
        begin
          B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] := True;
          Inc(x);
        end;
    SetLength(output, ((((bx.X2 - bx.X1) + 1) * ((bx.Y2 - bx.Y1) + 1)) - x));
    if (Length(output) > 0) then
    for y := 0 to (bx.Y2 - bx.Y1) do
      for x := 0 to (bx.X2 - bx.X1) do
        if not B[x][y] then
        begin
          output[r].X := (x + bx.X1);
          output[r].Y := (y + bx.Y1);
          Inc(r);
        end;
    SetLength(B, 0);
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Outputs all the points from box (bx) that aren't used in TPA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAUsedBoxPixels(TPA: TPointArray; bx: TBox; var output: TPointArray); callconv
var
  v, x, y, h, r: Integer;
  B: array of TBoolArray;
begin;
  r := 0;
  h := High(TPA);
  if ((h > -1) and ((((bx.X2 - bx.X1) + 1) > 0) and (((bx.Y2 - bx.Y1) + 1) > 0))) then
  begin
    SetLength(B, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
      SetLength(B[v], ((bx.Y2 - bx.Y1) + 1));
    x := 0;
    for v := 0 to h do
      if ((TPA[v].X >= bx.X1) and (TPA[v].Y >= bx.Y1) and (TPA[v].X <= bx.X2) and (TPA[v].Y <= bx.Y2)) then
        if not B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] then
        begin
          B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] := True;
          Inc(x);
        end;
    if (x > 0) then
    begin
      SetLength(output, x);
      for y := 0 to (bx.Y2 - bx.Y1) do
        for x := 0 to (bx.X2 - bx.X1) do
          if B[x][y] then
          begin
            output[r].X := (x + bx.X1);
            output[r].Y := (y + bx.Y1);
            Inc(r);
          end;
    end;
    SetLength(B, 0);
  end;
  SetLength(output, r);
end;
