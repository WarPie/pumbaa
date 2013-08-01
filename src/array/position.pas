{==============================================================================]
 @action: Returns index position from arr which matched with item.
 @note: Returns -1 if any of arr items doesnt match with item!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PositionTPA(arr: TPointArray; item: TPoint): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if ((arr[Result].X = item.X) and (arr[Result].Y = item.Y)) then
      Exit;
  Result := -1;
end;

// TIntegerArray
function PositionTIA(arr: TIntegerArray; item: Integer): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TExtendedArray
function PositionTEA(arr: TExtendedArray; item: Extended): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TStringArray
function PositionTSA(arr: TStringArray; item: string): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TCharArray
function PositionTCA(arr: TCharArray; item: Char): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TBoolArray
function PositionTBoA(arr: TBoolArray; item: Boolean): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TBoxArray
function PositionTBA(arr: TBoxArray; item: TBox): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  for Result := 0 to h do
    if ((arr[Result].X1 = item.X1) and (arr[Result].Y1 = item.Y1) and (arr[Result].X2 = item.X2) and (arr[Result].Y2 = item.Y2)) then
      Exit;
  Result := -1;
end;

{==============================================================================]
 @action: Returns index position from arr which matched with any item from items.
 @note: Returns -1 if any of arr items doesnt match with items!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PositionExTPA(arr: TPointArray; items: TPointArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if ((arr[Result].X = items[i].X) and (arr[Result].Y = items[i].Y)) then
        Exit;
  Result := -1;
end;

// TIntegerArray
function PositionExTIA(arr: TIntegerArray; items: TIntegerArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if (arr[Result] = items[i]) then
        Exit;
  Result := -1;
end;

// TExtendedArray
function PositionExTEA(arr: TExtendedArray; items: TExtendedArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if (arr[Result] = items[i]) then
        Exit;
  Result := -1;
end;

// TStringArray
function PositionExTSA(arr: TStringArray; items: TStringArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if (arr[Result] = items[i]) then
        Exit;
  Result := -1;
end;

// TCharArray
function PositionExTCA(arr: TCharArray; items: TCharArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if (arr[Result] = items[i]) then
        Exit;
  Result := -1;
end;

// TBoolArray
function PositionExTBoA(arr: TBoolArray; items: TBoolArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if (arr[Result] = items[i]) then
        Exit;
  Result := -1;
end;

// TBoxArray
function PositionExTBA(arr: TBoxArray; items: TBoxArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  for Result := 0 to h do
    for i := 0 to (l - 1) do
      if ((arr[Result].X1 = items[i].X1) and (arr[Result].Y1 = items[i].Y1) and (arr[Result].X2 = items[i].X2) and (arr[Result].Y2 = items[i].Y2)) then
        Exit;
  Result := -1;
end;

{==============================================================================]
 @action: Returns index position from arr which matched with item. Starting from offset.
 @note: Returns -1 if any of arr items doesnt match with item!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PositionOTPA(arr: TPointArray; offset: Integer; item: TPoint): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if ((arr[Result].X = item.X) and (arr[Result].Y = item.Y)) then
      Exit;
  Result := -1;
end;

// TIntegerArray
function PositionOTIA(arr: TIntegerArray; offset: Integer; item: Integer): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TExtendedArray
function PositionOTEA(arr: TExtendedArray; offset: Integer; item: Extended): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TStringArray
function PositionOTSA(arr: TStringArray; offset: Integer; item: string): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TCharArray
function PositionOTCA(arr: TCharArray; offset: Integer; item: Char): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TBoolArray
function PositionOTBoA(arr: TBoolArray; offset: Integer; item: Boolean): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if (arr[Result] = item) then
      Exit;
  Result := -1;
end;

// TBoxArray
function PositionOTBA(arr: TBoxArray; offset: Integer; item: TBox): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for Result := offset to h do
    if ((arr[Result].X1 = item.X1) and (arr[Result].Y1 = item.Y1) and (arr[Result].X2 = item.X2) and (arr[Result].Y2 = item.Y2)) then
      Exit;
  Result := -1;
end;

{==============================================================================]
 @action: Returns index position from arr which matched with any item from items. Starting from offset.
 @note: Returns -1 if any of arr items doesnt match with items!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PositionExOTPA(arr: TPointArray; offset: Integer; items: TPointArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if ((arr[Result].X = items[i].X) and (arr[Result].Y = items[i].Y)) then
          Exit;
  end;
  Result := -1;
end;

// TIntegerArray
function PositionExOTIA(arr: TIntegerArray; offset: Integer; items: TIntegerArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if (arr[Result] = items[i]) then
          Exit;
  end;
  Result := -1;
end;

// TExtendedArray
function PositionExOTEA(arr: TExtendedArray; offset: Integer; items: TExtendedArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if (arr[Result] = items[i]) then
          Exit;
  end;
  Result := -1;
end;

// TStringArray
function PositionExOTSA(arr: TStringArray; offset: Integer; items: TStringArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if (arr[Result] = items[i]) then
          Exit;
  end;
  Result := -1;
end;

// TCharArray
function PositionExOTCA(arr: TCharArray; offset: Integer; items: TCharArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if (arr[Result] = items[i]) then
          Exit;
  end;
  Result := -1;
end;

// TBoolArray
function PositionExOTBoA(arr: TBoolArray; offset: Integer; items: TBoolArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if (arr[Result] = items[i]) then
          Exit;
  end;
  Result := -1;
end;

// TBoxArray
function PositionExOTBA(arr: TBoxArray; offset: Integer; items: TBoxArray): Integer; callconv
var
  h, i, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if ((h > -1) and (l > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    for Result := offset to h do
      for i := 0 to (l - 1) do
        if ((arr[Result].X1 = items[i].X1) and (arr[Result].Y1 = items[i].Y1) and (arr[Result].X2 = items[i].X2) and (arr[Result].Y2 = items[i].Y2)) then
          Exit;
  end;
  Result := -1;
end;
