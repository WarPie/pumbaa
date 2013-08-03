{==============================================================================]
 @action: Returns true if arr is built ONLY with/using the allowed values.
 @note: Sets -1 to the ones that wasn't found from arr!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function BuiltWithTPA(arr, allowed: TPointArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if ((arr[i].X = allowed[x].X) and (arr[i].Y = allowed[x].Y)) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;

// TIntegerArray
function BuiltWithTIA(arr, allowed: TIntegerArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if (arr[i] = allowed[x]) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;

// TExtendedArray
function BuiltWithTEA(arr, allowed: TExtendedArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if (arr[i] = allowed[x]) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;

// TStringArray
function BuiltWithTSA(arr, allowed: TStringArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if (arr[i] = allowed[x]) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;

// TCharArray
function BuiltWithTCA(arr, allowed: TCharArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if (arr[i] = allowed[x]) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;

// TBoolArray
function BuiltWithTBoA(arr, allowed: TBoolArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if (arr[i] = allowed[x]) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;

// TBoxArray
function BuiltWithTBA(arr, allowed: TBoxArray): Boolean; callconv
var
  h, i, x, y: Integer;
begin
  Result := False;
  h := High(arr);
  y := High(allowed);
  if ((h > -1) and (y > -1)) then
  begin
    for i := 0 to h do
    begin
      for x := 0 to y do
        if ((arr[i].X1 = allowed[x].X1) and (arr[i].Y1 = allowed[x].Y1) and (arr[i].X2 = allowed[x].X2) and (arr[i].Y2 = allowed[x].Y2)) then
          Break;
      if (x > y) then
        Exit;
    end;
    Result := True;
  end;
end;
