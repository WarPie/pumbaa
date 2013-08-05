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

{==============================================================================]
  @action: Returns the arithmetic mean point by TPA items.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function TPAMean(TPA: TPointArray): TPoint; callconv
var
  i, h: Integer;
  x, y: Extended;
begin
  h := High(TPA);
  if (h > -1) then
  begin
    x := 0;
    y := 0;
    for i := 0 to h do
    begin
      x := (x + (Extended(TPA[i].X) / (h + 1)));
      y := (y + (Extended(TPA[i].Y) / (h + 1)));
    end;
    Result := Point(Round(x), Round(y));
  end else
    Result := Point(0, 0);
end;

{==============================================================================]
  @action: Returns the middle point from TPA.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
function TPAMiddle(TPA: TPointArray): TPoint; callconv
var
  l, i: Integer;
begin
  l := Length(TPA);
  if (l > 0) then
  begin
    Result := TPA[0];
    if (l > 1) then
    begin
      for i := 1 to (l - 1) do
      begin
        Result.X := (Result.X + TPA[i].X);
        Result.Y := (Result.Y + TPA[i].Y);
      end;
      Result := Point((Result.X div l), (Result.Y div l));
    end;
  end else
    Result := Point(0, 0);
end;
