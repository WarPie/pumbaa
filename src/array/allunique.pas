{==============================================================================]
 @action: Returns true if all values in arr are unique (arr contains only unique values).
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function AllUniqueTPA(arr: TPointArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := ((arr[i].X <> arr[i2].X) or (arr[i].Y <> arr[i2].Y));
        if not Result then
          Exit;
      end;
end;

// TIntegerArray
function AllUniqueTIA(arr: TIntegerArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := (arr[i] <> arr[i2]);
        if not Result then
          Exit;
      end;
end;

// TExtendedArray
function AllUniqueTEA(arr: TExtendedArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := (arr[i] <> arr[i2]);
        if not Result then
          Exit;
      end;
end;

// TStringArray
function AllUniqueTSA(arr: TStringArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := (arr[i] <> arr[i2]);
        if not Result then
          Exit;
      end;
end;

// TCharArray
function AllUniqueTCA(arr: TCharArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := (arr[i] <> arr[i2]);
        if not Result then
          Exit;
      end;
end;

// TBoolArray
function AllUniqueTBoA(arr: TBoolArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := (arr[i] <> arr[i2]);
        if not Result then
          Exit;
      end;
end;

// TBoxArray
function AllUniqueTBA(arr: TBoxArray): Boolean; callconv
var
  h, i, i2: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 0 to (h - 1) do
    for i2 := (i + 1) to h do
      if (i <> i2) then
      begin
        Result := ((arr[i].X1 <> arr[i2].X1) or (arr[i].Y1 <> arr[i2].Y1) or (arr[i].X2 <> arr[i2].X2) or (arr[i].Y2 <> arr[i2].Y2));
        if not Result then
          Exit;
      end;
end;
