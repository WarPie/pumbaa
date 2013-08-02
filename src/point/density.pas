{==============================================================================]
 @action: Returns the calculated density from given TPA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function TPADensity(TPA: TPointArray): Extended; callconv
var
  h, l, i, d, x, y: Integer;
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
    begin
      d := 0;
      for i := (h - d) downto 1 do
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
        for x := (i - 1) downto 0 do
          if ((TPA[i].X = TPA[x].X) and (TPA[i].Y = TPA[x].Y)) then
          begin
            l := High(TPA);
            for y := i to (l - 1) do
              TPA[y] := TPA[(y + 1)];
            SetLength(TPA, l);
            Inc(d);
            Break;
          end;
      end;
    end;
    Result := (Extended(Length(TPA)) / (((b.X2 - b.X1) + 1) * ((b.Y2 - b.Y1) + 1)));
  end else
    Result := 0;
end;
