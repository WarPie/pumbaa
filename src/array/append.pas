{==============================================================================]
 @action: Appends arr with item.
 @note: Adds item to the right side of the array.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure AppendTPA(var arr: TPointArray; item: TPoint); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

// TIntegerArray
procedure AppendTIA(var arr: TIntegerArray; item: Integer); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

// TExtendedArray
procedure AppendTEA(var arr: TExtendedArray; item: Extended); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

// TStringArray
procedure AppendTSA(var arr: TStringArray; item: string); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

// TCharArray
procedure AppendTCA(var arr: TCharArray; item: Char); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

// TBoolArray
procedure AppendTBoA(var arr: TBoolArray; item: Boolean); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

// TBoxArray
procedure AppendTBA(var arr: TBoxArray; item: TBox); callconv
var
  l: Integer;
begin
  l := (Length(arr) + 1);
  SetLength(arr, l);
  arr[(l - 1)] := item;
end;

{==============================================================================]
 @action: Adds all items items to arr.
 @note: Returns the highest index in the end.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function AppendExTPA(var arr: TPointArray; items: TPointArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;

// TIntegerArray
function AppendExTIA(var arr: TIntegerArray; items: TIntegerArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;

// TExtendedArray
function AppendExTEA(var arr: TExtendedArray; items: TExtendedArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;

// TStringArray
function AppendExTSA(var arr: TStringArray; items: TStringArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;

// TCharArray
function AppendExTCA(var arr: TCharArray; items: TCharArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;

// TBoolArray
function AppendExTBoA(var arr: TBoolArray; items: TBoolArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;

// TBoxArray
function AppendExTBA(var arr: TBoxArray; items: TBoxArray): Integer; callconv
var
  h, l, i: Integer;
begin
  h := High(items);
  if (h > -1) then
  begin
    l := Length(arr);
    SetLength(arr, (l + (h + 1)));
    for i := 0 to h do
      arr[(i + l)] := items[i];
  end;
  Result := High(arr);
end;
