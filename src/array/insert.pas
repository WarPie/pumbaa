{==============================================================================]
 @action: Inserts item to index position in arr.
 @note: Returns the highest index in the end.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray 
procedure InsertTPA(var arr: TPointArray; index: Integer; item: TPoint); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

// TIntegerArray
procedure InsertTIA(var arr: TIntegerArray; index: Integer; item: Integer); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

// TExtendedArray
procedure InsertTEA(var arr: TExtendedArray; index: Integer; item: Extended); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

// TStringArray
procedure InsertTSA(var arr: TStringArray; index: Integer; item: string); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

// TCharArray
procedure InsertTCA(var arr: TCharArray; index: Integer; item: Char); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

// TBoolArray
procedure InsertTBoA(var arr: TBoolArray; index: Integer; item: Boolean); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

// TBoxArray
procedure InsertTBA(var arr: TBoxArray; index: Integer; item: TBox); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  if (index < 0) then
    index := 0;
  if (index > l) then
    index := l;
  if (l > index) then
    for i := (l - 1) downto index do
      arr[(i + 1)] := arr[i];
  arr[index] := item;
end;

{==============================================================================]
 @action: Inserts/plants/places items to index position in arr.
 @note: Returns the highest index in the end.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function InsertExTPA(var arr: TPointArray; index: Integer; items: TPointArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;

// TIntegerArray
function InsertExTIA(var arr: TIntegerArray; index: Integer; items: TIntegerArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;

// TExtendedArray
function InsertExTEA(var arr: TExtendedArray; index: Integer; items: TExtendedArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;

// TStringArray
function InsertExTSA(var arr: TStringArray; index: Integer; items: TStringArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;

// TCharArray
function InsertExTCA(var arr: TCharArray; index: Integer; items: TCharArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;

// TBoolArray
function InsertExTBoA(var arr: TBoolArray; index: Integer; items: TBoolArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;

// TBoxArray
function InsertExTBA(var arr: TBoxArray; index: Integer; items: TBoxArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    if (index < 0) then
      index := 0;
    if (index > l) then
      index := l;
    for i := (l + (h + 1) - 1) downto (index + (h + 1)) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[(i + index)] := items[i];
  end;
  Result := High(arr);
end;
