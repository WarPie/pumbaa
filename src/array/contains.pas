{==============================================================================]
 @action: Returns true if arr contains item.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function ContainsTPA(arr: TPointArray; item: TPoint): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := ((item.X = arr[i].X) and (item.Y = arr[i].Y));
    if Result then
      Exit;
  end;
  Result := False;
end;

// TIntegerArray
function ContainsTIA(arr: TIntegerArray; item: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TExtendedArray
function ContainsTEA(arr: TExtendedArray; item: Extended): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TStringArray
function ContainsTSA(arr: TStringArray; item: string): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TCharArray
function ContainsTCA(arr: TCharArray; item: Char): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TBoolArray
function ContainsTBoA(arr: TBoolArray; item: Boolean): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TBoxArray
function ContainsTBA(arr: TBoxArray; item: TBox): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    Result := ((item.X1 = arr[i].X1) and (item.Y1 = arr[i].Y1) and (item.X2 = arr[i].X2) and (item.Y2 = arr[i].Y2));
    if Result then
      Exit;
  end;
  Result := False;
end;

{==============================================================================]
 @action: Returns true if arr contains ANY item from items.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function ContainsExTPA(arr, items: TPointArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if ((arr[a].X = items[x].X) and (arr[a].Y = items[x].Y)) then
        Exit;
  Result := False;
end;

// TIntegerArray
function ContainsExTIA(arr, items: TIntegerArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if (arr[a] = items[x]) then
        Exit;
  Result := False;
end;

// TExtendedArray
function ContainsExTEA(arr, items: TExtendedArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if (arr[a] = items[x]) then
        Exit;
  Result := False;
end;

// TStringArray
function ContainsExTSA(arr, items: TStringArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if (arr[a] = items[x]) then
        Exit;
  Result := False;
end;

// TCharArray
function ContainsExTCA(arr, items: TCharArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if (arr[a] = items[x]) then
        Exit;
  Result := False;
end;

// TBoolArray
function ContainsExTBoA(arr, items: TBoolArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if (arr[a] = items[x]) then
        Exit;
  Result := False;
end;

// TBoxArray
function ContainsExTBA(arr, items: TBoxArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
      if ((arr[a].X1 = items[x].X1) and (arr[a].Y1 = items[x].Y1) and (arr[a].X2 = items[x].X2) and (arr[a].Y2 = items[x].Y2)) then
        Exit;
  Result := False;
end;

// T2DPointArray
function ContainsATPA(arr: T2DPointArray; item: TPoint): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := ((item.X = arr[i][a].X) and (item.Y = arr[i][a].Y));
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DIntegerArray
function ContainsATIA(arr: T2DIntegerArray; item: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DExtendedArray
function ContainsATEA(arr: T2DExtendedArray; item: Extended): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DStringArray
function ContainsATSA(arr: T2DStringArray; item: string): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DCharArray
function ContainsATCA(arr: T2DCharArray; item: Char): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DBoolArray
function ContainsATBoA(arr: T2DBoolArray; item: Boolean): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DBoxArray
function ContainsATBA(arr: T2DBoxArray; item: TBox): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := ((item.X1 = arr[i][a].X1) and (item.Y1 = arr[i][a].Y1) and (item.X2 = arr[i][a].X2) and (item.Y2 = arr[i][a].Y2));
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DPointArray
function ContainsExATPA(arr: T2DPointArray; items: TPointArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if ((arr[a][i].X = items[x].X) and (arr[a][i].Y = items[x].Y)) then
          Exit;
    end;
  Result := False;
end;

// T2DIntegerArray
function ContainsExATIA(arr: T2DIntegerArray; items: TIntegerArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if (arr[a][i] = items[x]) then
          Exit;
    end;
  Result := False;
end;

// T2DExtendedArray
function ContainsExATEA(arr: T2DExtendedArray; items: TExtendedArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if (arr[a][i] = items[x]) then
          Exit;
    end;
  Result := False;
end;

// T2DStringArray
function ContainsExATSA(arr: T2DStringArray; items: TStringArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if (arr[a][i] = items[x]) then
          Exit;
    end;
  Result := False;
end;

// T2DCharArray
function ContainsExATCA(arr: T2DCharArray; items: TCharArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if (arr[a][i] = items[x]) then
          Exit;
    end;
  Result := False;
end;

// T2DBoolArray
function ContainsExATBoA(arr: T2DBoolArray; items: TBoolArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if (arr[a][i] = items[x]) then
          Exit;
    end;
  Result := False;
end;

// T2DBoxArray
function ContainsExATBA(arr: T2DBoxArray; items: TBoxArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
    for x := 0 to y do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        if ((arr[a][i].X1 = items[x].X1) and (arr[a][i].Y1 = items[x].Y1) and (arr[a][i].X2 = items[x].X2) and (arr[a][i].Y2 = items[x].Y2)) then
          Exit;
    end;
  Result := False;
end;

{==============================================================================]
 @action: Returns true if arr contains item. Starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function ContainsOTPA(arr: TPointArray; offset: Integer; item: TPoint): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := ((item.X = arr[i].X) and (item.Y = arr[i].Y));
    if Result then
      Exit;
  end;
  Result := False;
end;

// TIntegerArray
function ContainsOTIA(arr: TIntegerArray; offset: Integer; item: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TExtendedArray
function ContainsOTEA(arr: TExtendedArray; offset: Integer; item: Extended): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TStringArray
function ContainsOTSA(arr: TStringArray; offset: Integer; item: string): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TCharArray
function ContainsOTCA(arr: TCharArray; offset: Integer; item: Char): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TBoolArray
function ContainsOTBoA(arr: TBoolArray; offset: Integer; item: Boolean): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := (item = arr[i]);
    if Result then
      Exit;
  end;
  Result := False;
end;

// TBoxArray
function ContainsOTBA(arr: TBoxArray; offset: Integer; item: TBox): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    Result := ((item.X1 = arr[i].X1) and (item.Y1 = arr[i].Y1) and (item.X2 = arr[i].X2) and (item.Y2 = arr[i].Y2));
    if Result then
      Exit;
  end;
  Result := False;
end;

{==============================================================================]
 @action: Returns true if arr contains ANY item from items. Starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function ContainsExOTPA(arr: TPointArray; offset: Integer; items: TPointArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if ((arr[a].X = items[x].X) and (arr[a].Y = items[x].Y)) then
          Exit;
  end;
  Result := False;
end;

// TIntegerArray
function ContainsExOTIA(arr: TIntegerArray; offset: Integer; items: TIntegerArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = items[x]) then
          Exit;
  end;
  Result := False;
end;

// TExtendedArray
function ContainsExOTEA(arr: TExtendedArray; offset: Integer; items: TExtendedArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = items[x]) then
          Exit;
  end;
  Result := False;
end;

// TStringArray
function ContainsExOTSA(arr: TStringArray; offset: Integer; items: TStringArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = items[x]) then
          Exit;
  end;
  Result := False;
end;

// TCharArray
function ContainsExOTCA(arr: TCharArray; offset: Integer; items: TCharArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = items[x]) then
          Exit;
  end;
  Result := False;
end;

// TBoolArray
function ContainsExOTBoA(arr: TBoolArray; offset: Integer; items: TBoolArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = items[x]) then
          Exit;
  end;
  Result := False;
end;

// TBoxArray
function ContainsExOTBA(arr: TBoxArray; offset: Integer; items: TBoxArray): Boolean; callconv
var
  a, b, x, y: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
        if ((arr[a].X1 = items[x].X1) and (arr[a].Y1 = items[x].Y1) and (arr[a].X2 = items[x].X2) and (arr[a].Y2 = items[x].Y2)) then
          Exit;
  end;
  Result := False;
end;

// T2DPointArray
function ContainsOATPA(arr: T2DPointArray; offset: Integer; item: TPoint): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := ((item.X = arr[i][a].X) and (item.Y = arr[i][a].Y));
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DIntegerArray
function ContainsOATIA(arr: T2DIntegerArray; offset: Integer; item: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DExtendedArray
function ContainsOATEA(arr: T2DExtendedArray; offset: Integer; item: Extended): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DStringArray
function ContainsOATSA(arr: T2DStringArray; offset: Integer; item: string): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DCharArray
function ContainsOATCA(arr: T2DCharArray; offset: Integer; item: Char): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DBoolArray
function ContainsOATBoA(arr: T2DBoolArray; offset: Integer; item: Boolean): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := (item = arr[i][a]);
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DBoxArray
function ContainsOATBA(arr: T2DBoxArray; offset: Integer; item: TBox): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
    begin
      Result := ((item.X1 = arr[i][a].X1) and (item.Y1 = arr[i][a].Y1) and (item.X2 = arr[i][a].X2) and (item.Y2 = arr[i][a].Y2));
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DPointArray
function ContainsExOATPA(arr: T2DPointArray; offset: Integer; items: TPointArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if ((arr[a][i].X = items[x].X) and (arr[a][i].Y = items[x].Y)) then
            Exit;
      end;
  end;
  Result := False;
end;

// T2DIntegerArray
function ContainsExOATIA(arr: T2DIntegerArray; offset: Integer; items: TIntegerArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if (arr[a][i] = items[x]) then
            Exit;
      end;
  end;
  Result := False;
end;

// T2DExtendedArray
function ContainsExOATEA(arr: T2DExtendedArray; offset: Integer; items: TExtendedArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if (arr[a][i] = items[x]) then
            Exit;
      end;
  end;
  Result := False;
end;

// T2DStringArray
function ContainsExOATSA(arr: T2DStringArray; offset: Integer; items: TStringArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if (arr[a][i] = items[x]) then
            Exit;
      end;
  end;
  Result := False;
end;

// T2DCharArray
function ContainsExOATCA(arr: T2DCharArray; offset: Integer; items: TCharArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if (arr[a][i] = items[x]) then
            Exit;
      end;
  end;
  Result := False;
end;

// T2DBoolArray
function ContainsExOATBoA(arr: T2DBoolArray; offset: Integer; items: TBoolArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if (arr[a][i] = items[x]) then
            Exit;
      end;
  end;
  Result := False;
end;

// T2DBoxArray
function ContainsExOATBA(arr: T2DBoxArray; offset: Integer; items: TBoxArray): Boolean; callconv
var
  a, b, x, y, h, i: Integer;
begin
  b := High(arr);
  y := High(items);
  Result := True;
  if ((b > -1) and (y > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    for a := offset to b do
      for x := 0 to y do
      begin
        h := High(arr[a]);
        for i := 0 to h do
          if ((arr[a][i].X1 = items[x].X1) and (arr[a][i].Y1 = items[x].Y1) and (arr[a][i].X2 = items[x].X2) and (arr[a][i].Y2 = items[x].Y2)) then
            Exit;
      end;
  end;
  Result := False;
end;
