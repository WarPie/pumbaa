{==============================================================================]
 @action: Removes all duplicates from arr.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure UniqueTPA(var arr: TPointArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if ((arr[i].X = arr[i2].X) and (arr[i].Y = arr[i2].Y)) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;

// TIntegerArray
procedure UniqueTIA(var arr: TIntegerArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if (arr[i] = arr[i2]) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;

// TExtendedArray
procedure UniqueTEA(var arr: TExtendedArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if (arr[i] = arr[i2]) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;

// TStringArray
procedure UniqueTSA(var arr: TStringArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if (arr[i] = arr[i2]) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;

// TCharArray
procedure UniqueTCA(var arr: TCharArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if (arr[i] = arr[i2]) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;

// TBoolArray
procedure UniqueTBoA(var arr: TBoolArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if (arr[i] = arr[i2]) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;

// TBoxArray
procedure UniqueTBA(var arr: TBoxArray); callconv
var
  h, h2, i, i2, i3, d: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  d := 0;
  for i := (h - d) downto 1 do
    for i2 := (i - 1) downto 0 do
      if ((arr[i].X1 = arr[i2].X1) and (arr[i].Y1 = arr[i2].Y1) and (arr[i].X2 = arr[i2].X2) and (arr[i].Y2 = arr[i2].Y2)) then
      begin
        h2 := High(arr);
        for i3 := i to (h2 - 1) do
          arr[i3] := arr[(i3 + 1)];
        SetLength(arr, h2);
        Inc(d);
        Break;
      end;
end;
