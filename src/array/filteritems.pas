{==============================================================================]
 @action: Removes all values from arr that are found in items.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FilterItemsTPA(var arr: TPointArray; items: TPointArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := ((arr[a].X = items[x].X) and (arr[a].Y = items[x].Y));
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;

// TIntegerArray
procedure FilterItemsTIA(var arr: TIntegerArray; items: TIntegerArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := (arr[a] = items[x]);
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;

// TExtendedArray
procedure FilterItemsTEA(var arr: TExtendedArray; items: TExtendedArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := (arr[a] = items[x]);
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;

// TStringArray
procedure FilterItemsTSA(var arr: TStringArray; items: TStringArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := (arr[a] = items[x]);
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;

// TCharArray
procedure FilterItemsTCA(var arr: TCharArray; items: TCharArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := (arr[a] = items[x]);
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;

// TBoolArray
procedure FilterItemsTBoA(var arr: TBoolArray; items: TBoolArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := (arr[a] = items[x]);
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;

// TBoxArray
procedure FilterItemsTBA(var arr: TBoxArray; items: TBoxArray); callconv
var
  a, b, c, x, y: Integer;
  match: Boolean;
begin
  c := 0;
  b := High(arr);
  y := High(items);
  if ((b > -1) and (y > -1)) then
  for a := 0 to b do
  begin
    for x := 0 to y do
    begin
      match := ((arr[a].X1 = items[x].X1) and (arr[a].Y1 = items[x].Y1) and (arr[a].X2 = items[x].X2) and (arr[a].Y2 = items[x].Y2));
      if match then
        Break;
    end;
    if not match then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  end;
  SetLength(arr, c);
end;
