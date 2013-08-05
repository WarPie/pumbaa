{==============================================================================]
 @action: Outputs TBoxArray with inner_bx from ALL the possible positions (based on inner_bx dimensions)
          where it could be placed to in outer_bx (without crossing boundaries).
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure BoxPositions(inner_bx, outer_bx: TBox; var output: TBoxArray); callconv
var
  r, c, w, h, x, y, width, height: Integer;
begin
  width := ((inner_bx.X2 - inner_bx.X1) + 1);
  height := ((inner_bx.Y2 - inner_bx.Y1) + 1);
  if ((outer_bx.X1 <= outer_bx.X2) and (outer_bx.Y1 <= outer_bx.Y2) and (width > 0) and (height > 0)) then
  begin
    w := ((outer_bx.X2 - outer_bx.X1) + 1);
    h := ((outer_bx.Y2 - outer_bx.Y1) + 1);
    if ((width < (w + 1)) and (height < (h + 1))) then
    begin
      r := (h - (height - 1));
      c := (w - (width - 1));
      SetLength(output, (r * c));
      for y := outer_bx.Y1 to (outer_bx.Y1 + (r - 1)) do
        for x := outer_bx.X1 to (outer_bx.X1 + (c - 1)) do
        begin
          output[(((y - outer_bx.Y1) * c) + (x - outer_bx.X1))].X1 := x;
          output[(((y - outer_bx.Y1) * c) + (x - outer_bx.X1))].Y1 := y;
          output[(((y - outer_bx.Y1) * c) + (x - outer_bx.X1))].X2 := (x + (width - 1));
          output[(((y - outer_bx.Y1) * c) + (x - outer_bx.X1))].Y2 := (y + (height - 1));
        end;
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

{==============================================================================]
  Explanation: Returns count of ALL the possible positions (based on inner_bx dimensions)
               where inner_bx could be placed to in outer_bx (without crossing boundaries).
[==============================================================================}
function BoxPositionCount(inner_bx, outer_bx: TBox): Integer; callconv
var
  w, h, width, height: Integer;
begin
  Result := 0;
  width := ((inner_bx.X2 - inner_bx.X1) + 1);
  height := ((inner_bx.Y2 - inner_bx.Y1) + 1);
  if ((outer_bx.X1 > outer_bx.X2) or (outer_bx.Y1 > outer_bx.Y2) or (width < 1) or (height < 1)) then
    Exit;
  w := ((outer_bx.X2 - outer_bx.X1) + 1);
  h := ((outer_bx.Y2 - outer_bx.Y1) + 1);
  if ((width < (w + 1)) and (height < (h + 1))) then
    Result := ((h - (height - 1)) * (w - (width - 1)));
end;
