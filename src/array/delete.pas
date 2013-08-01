{==============================================================================]
 @action: Deletes item from arr index position.
 @note: Returns true with success.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray 
function DeleteTPA(var arr: TPointArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

// TIntegerArray
function DeleteTIA(var arr: TIntegerArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

// TExtendedArray
function DeleteTEA(var arr: TExtendedArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

// TStringArray
function DeleteTSA(var arr: TStringArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

// TCharArray
function DeleteTCA(var arr: TCharArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

// TBoolArray
function DeleteTBoA(var arr: TBoolArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

// TBoxArray
function DeleteTBA(var arr: TBoxArray; index: Integer): Boolean; callconv
var
  i, h: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
    arr[i] := arr[(i + 1)];
  SetLength(arr, h);
end;

{==============================================================================]
 @action: Removes items from array (arr) by indexes (IDs).
 @note: Unlike Strike method, this isn't dynamic so you can use non-unique indexes.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure DeleteTPAEx(var arr: TPointArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure DeleteTIAEx(var arr: TIntegerArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure DeleteTEAEx(var arr: TExtendedArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure DeleteTSAEx(var arr: TStringArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure DeleteTCAEx(var arr: TCharArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure DeleteTBoAEx(var arr: TBoolArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure DeleteTBAEx(var arr: TBoxArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DPointArray
function DeleteATPA(var arr: T2DPointArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DIntegerArray
function DeleteATIA(var arr: T2DIntegerArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DExtendedArray
function DeleteATEA(var arr: T2DExtendedArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DStringArray
function DeleteATSA(var arr: T2DStringArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DCharArray
function DeleteATCA(var arr: T2DCharArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DBoolArray
function DeleteATBoA(var arr: T2DBoolArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DBoxArray
function DeleteATBA(var arr: T2DBoxArray; index: Integer): Boolean; callconv
var
  i, h, a, b: Integer;
begin
  h := High(arr);
  Result := ((index <= h) and (index > -1));
  if not Result then
    Exit;
  for i := index to (h - 1) do
  begin
    b := High(arr[(i + 1)]);
    SetLength(arr[i], (b + 1));
    for a := 0 to b do
      arr[i][a] := arr[(i + 1)][a];
  end;
  SetLength(arr, h);
end;

// T2DPointArray
procedure DeleteATPAEx(var arr: T2DPointArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DIntegerArray
procedure DeleteATIAEx(var arr: T2DIntegerArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DExtendedArray
procedure DeleteATEAEx(var arr: T2DExtendedArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DStringArray
procedure DeleteATSAEx(var arr: T2DStringArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DCharArray
procedure DeleteATCAEx(var arr: T2DCharArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DBoolArray
procedure DeleteATBoAEx(var arr: T2DBoolArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;

// T2DBoxArray
procedure DeleteATBAEx(var arr: T2DBoxArray; IDs: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r, x, y: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
        remove[IDs[a]] := True;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        y := High(arr[i]);
        SetLength(arr[r], (y + 1));
        for x := 0 to y do
          arr[r][x] := arr[i][x];
        Inc(r);
      end;
    SetLength(arr, r);
  end;
end;
