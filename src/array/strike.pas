{==============================================================================]
 @action: Removes items from array (arr) by indexes (IDs).
 @note: RECURSIVE/DYNAMIC! Pay attention to IDs.. In most cases you'll need to use reversed order.
        Also, being dynamic means that this doesn't pay attention to duplicate indexes in IDs,
        so this will delete any of those duplicate IDs then multiple times, when it is possible!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure StrikeTPA(var arr: TPointArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;

// TIntegerArray
procedure StrikeTIA(var arr: TIntegerArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;

// TExtendedArray
procedure StrikeTEA(var arr: TExtendedArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;

// TStringArray
procedure StrikeTSA(var arr: TStringArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;

// TCharArray
procedure StrikeTCA(var arr: TCharArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;

// TBoolArray
procedure StrikeTBoA(var arr: TBoolArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;

// TBoxArray
procedure StrikeTBA(var arr: TBoxArray; IDs: TIntegerArray); callconv
var
  i, i2, h, h2: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h < 0) or (h2 < 0)) then
    Exit;
  for i2 := 0 to h2 do
    if ((IDs[i2] <= h) and (IDs[i2] > -1)) then
    begin
      for i := IDs[i2] to (h - 1) do
        arr[i] := arr[(i + 1)];
      Dec(h);
    end;
  SetLength(arr, (h + 1));
end;
