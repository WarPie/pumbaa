{==============================================================================]
 @action: Removes all duplicates from TPA.
 @note: Optimized by masterBB!
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAUnique(var TPA: TPointArray); callconv
var
  v, h, r: Integer;
  B: array of TBoolArray;
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
    SetLength(B, ((bx.X2 - bx.X1) + 1));
    for v := 0 to (bx.X2 - bx.X1) do
      SetLength(B[v], ((bx.Y2 - bx.Y1) + 1));
    for v := 0 to h do
      if not B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] then
      begin
        B[(TPA[v].X - bx.X1)][(TPA[v].Y - bx.Y1)] := True;
        TPA[r] := TPA[v];
        Inc(r);
      end;
    SetLength(TPA, r);
    SetLength(B, 0);
  end;
end;
