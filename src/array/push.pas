{==============================================================================]
 @action: Pushes item to beginning [index 0] in arr.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray 
procedure PushTPA(var arr: TPointArray; item: TPoint); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

// TIntegerArray
procedure PushTIA(var arr: TIntegerArray; item: Integer); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

// TExtendedArray
procedure PushTEA(var arr: TExtendedArray; item: Extended); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

// TStringArray
procedure PushTSA(var arr: TStringArray; item: string); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

// TCharArray
procedure PushTCA(var arr: TCharArray; item: Char); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

// TBoolArray
procedure PushTBoA(var arr: TBoolArray; item: Boolean); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

// TBoxArray
procedure PushTBA(var arr: TBoxArray; item: TBox); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(arr, (l + 1));
  for i := (l - 1) downto 0 do
    arr[(i + 1)] := arr[i];
  arr[0] := item;
end;

{==============================================================================]
 @action: Pushes items to beginning [index 0] in arr.
 @note: Returns the highest index in the end.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PushExTPA(var arr: TPointArray; items: TPointArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;

// TIntegerArray
function PushExTIA(var arr: TIntegerArray; items: TIntegerArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;

// TExtendedArray
function PushExTEA(var arr: TExtendedArray; items: TExtendedArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;

// TStringArray
function PushExTSA(var arr: TStringArray; items: TStringArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;

// TCharArray
function PushExTCA(var arr: TCharArray; items: TCharArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;

// TBoolArray
function PushExTBoA(var arr: TBoolArray; items: TBoolArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;

// TBoxArray
function PushExTBA(var arr: TBoxArray; items: TBoxArray): Integer; callconv
var
  i, l, h: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := (l + (h + 1) - 1) downto (h + 1) do
      arr[i] := arr[(i - (h + 1))];
    for i := 0 to h do
      arr[i] := items[i];
  end;
  Result := High(arr);
end;
