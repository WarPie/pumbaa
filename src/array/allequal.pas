{==============================================================================]
 @action: Returns true if all values in arr are equal (arr contains only equal values).
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function AllEqualTPA(arr: TPointArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if ((arr[i].X <> arr[0].X) or (arr[i].Y <> arr[0].Y)) then
      Exit;
  Result := True;
end;

// TIntegerArray
function AllEqualTIA(arr: TIntegerArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if (arr[i] <> arr[0]) then
      Exit;
  Result := True;
end;

// TExtendedArray
function AllEqualTEA(arr: TExtendedArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if (arr[i] <> arr[0]) then
      Exit;
  Result := True;
end;

// TStringArray
function AllEqualTSA(arr: TStringArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if (arr[i] <> arr[0]) then
      Exit;
  Result := True;
end;

// TCharArray
function AllEqualTCA(arr: TCharArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if (arr[i] <> arr[0]) then
      Exit;
  Result := True;
end;

// TBoolArray
function AllEqualTBoA(arr: TBoolArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if (arr[i] <> arr[0]) then
      Exit;
  Result := True;
end;

// TBoxArray
function AllEqualTBA(arr: TBoxArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (h < 1) then
  begin
    Result := (h = 0);
    Exit;
  end else
    Result := False;
  for i := 1 to h do
    if ((arr[i].X1 <> arr[0].X1) or (arr[i].Y1 <> arr[0].Y1) or (arr[i].X2 <> arr[0].X2) or (arr[i].Y2 <> arr[0].Y2)) then
      Exit;
  Result := True;
end;
