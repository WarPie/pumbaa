{==============================================================================]
 @action: Returns the last item from arr and deletes it during pick.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PopLastTPA(var arr: TPointArray): TPoint; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
    Result := Point(0, 0);
end;

// TIntegerArray
function PopLastTIA(var arr: TIntegerArray): Integer; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
    Result := -1;
end;

// TExtendedArray
function PopLastTEA(var arr: TExtendedArray): Extended; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
    Result := -1;
end;

// TStringArray
function PopLastTSA(var arr: TStringArray): string; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
    Result := '';
end;

// TCharArray
function PopLastTCA(var arr: TCharArray): Char; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
    Result := ' ';
end;

// TBoolArray
function PopLastTBoA(var arr: TBoolArray): Boolean; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
    Result := False;
end;

// TBoxArray
function PopLastTBA(var arr: TBoxArray): TBox; callconv
var
  h: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    Result := arr[h];
    SetLength(arr, h);
  end else
  begin
    Result.X1 := 0;
    Result.Y1 := 0;
    Result.X2 := 0;
    Result.Y2 := 0;
  end;
end;

{==============================================================================]
 @action: Returns item with index from arr and deletes it during pick.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function PopTPA(var arr: TPointArray; index: Integer): TPoint; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
    Result := Point(0, 0);
end;

// TIntegerArray
function PopTIA(var arr: TIntegerArray; index: Integer): Integer; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
    Result := -1;
end;

// TExtendedArray
function PopTEA(var arr: TExtendedArray; index: Integer): Extended; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
    Result := -1;
end;

// TStringArray
function PopTSA(var arr: TStringArray; index: Integer): string; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
    Result := '';
end;

// TCharArray
function PopTCA(var arr: TCharArray; index: Integer): Char; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
    Result := ' ';
end;

// TBoolArray
function PopTBoA(var arr: TBoolArray; index: Integer): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
    Result := False;
end;

// TBoxArray
function PopTBA(var arr: TBoxArray; index: Integer): TBox; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if ((h > -1) and (h >= index)) then
  begin
    Result := arr[index];
    for i := index to (h - 1) do
      arr[i] := arr[(i + 1)];
    SetLength(arr, h);
  end else
  begin
    Result.X1 := 0;
    Result.Y1 := 0;
    Result.X2 := 0;
    Result.Y2 := 0;
  end;
end;

{==============================================================================]
 @action: Outputs items with indexes (IDs) from arr and deletes em after.
 @note: Works with non-unique IDs - not dynamic like Pick method is.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PopTPAEx(var arr: TPointArray; IDs: TIntegerArray; var output: TPointArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
        output[a] := Point(0, 0);
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure PopTIAEx(var arr: TIntegerArray; IDs: TIntegerArray; var output: TIntegerArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
        output[a] := -1;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure PopTEAEx(var arr: TExtendedArray; IDs: TIntegerArray; var output: TExtendedArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
        output[a] := -1;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure PopTSAEx(var arr: TStringArray; IDs: TIntegerArray; var output: TStringArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
        output[a] := '';
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure PopTCAEx(var arr: TCharArray; IDs: TIntegerArray; var output: TCharArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
        output[a] := ' ';
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure PopTBoAEx(var arr: TBoolArray; IDs: TIntegerArray; var output: TBoolArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
        output[a] := False;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure PopTBAEx(var arr: TBoxArray; IDs: TIntegerArray; var output: TBoxArray); callconv
var
  remove: TBoolArray;
  a, b, h, i, r: Integer;
begin
  h := High(arr);
  b := High(IDs);
  if ((h > -1) and (b > -1)) then
  begin
    SetLength(output, (b + 1));
    SetLength(remove, (h + 1));
    for a := 0 to b do
      if ((IDs[a] > -1) and (IDs[a] <= h)) then
      begin
        output[a] := arr[IDs[a]];
        remove[IDs[a]] := True;
      end else
      begin
        output[a].X1 := 0;
        output[a].Y1 := 0;
        output[a].X2 := 0;
        output[a].Y2 := 0;
      end;
    r := 0;
    for i := 0 to h do
      if not remove[i] then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
  end else
    SetLength(output, 0);
end;
