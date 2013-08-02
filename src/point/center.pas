{==============================================================================]
 @action: Returns the center point by TPA bounds as TPoint.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TPACenter(TPA: TPointArray): TPoint; callconv
var
  h, i: Integer;
  b: TBox;
begin
  h := High(TPA);
  if (h > -1) then
  begin
    b.X1 := TPA[0].X;
    b.Y1 := TPA[0].Y;
    b.X2 := TPA[0].X;
    b.Y2 := TPA[0].Y;
    if (h > 0) then
    for i := 1 to h do
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
    Result := Point(Round(b.X1 + ((b.X2 - b.X1) div 2)), Round(b.Y1 + ((b.Y2 - b.Y1) div 2)));
  end else
    Result := Point(0, 0);
end;
