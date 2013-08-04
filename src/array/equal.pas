{==============================================================================]
 @action: Explanation: Returns true if arr1 is identical with arr2.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function EqualTPA(arr1, arr2: TPointArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if ((arr1[i].X <> arr2[i].X) or (arr1[i].Y <> arr2[i].Y)) then
        Exit;
    Result := True;
  end;
end;

// TIntegerArray
function EqualTIA(arr1, arr2: TIntegerArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if (arr1[i] <> arr2[i]) then
        Exit;
    Result := True;
  end;
end;

// TExtendedArray
function EqualTEA(arr1, arr2: TExtendedArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if (arr1[i] <> arr2[i]) then
        Exit;
    Result := True;
  end;
end;

// TStringArray
function EqualTSA(arr1, arr2: TStringArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if (arr1[i] <> arr2[i]) then
        Exit;
    Result := True;
  end;
end;

// TCharArray
function EqualTCA(arr1, arr2: TCharArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if (arr1[i] <> arr2[i]) then
        Exit;
    Result := True;
  end;
end;

// TBoolArray
function EqualTBoA(arr1, arr2: TBoolArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if (arr1[i] <> arr2[i]) then
        Exit;
    Result := True;
  end;
end;

// TBoxArray
function EqualTBA(arr1, arr2: TBoxArray): Boolean; callconv
var
  h, i: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
      if ((arr1[i].X1 <> arr2[i].X1) or (arr1[i].Y1 <> arr2[i].Y1) or (arr1[i].X2 <> arr2[i].X2) or (arr1[i].Y2 <> arr2[i].Y2)) then
        Exit;
    Result := True;
  end;
end;

// T2DPointArray
function EqualATPA(arr1, arr2: T2DPointArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if ((arr1[i][a].X <> arr2[i][a].X) or (arr1[i][a].Y <> arr2[i][a].Y)) then
          Exit;
    end;
    Result := True;
  end;
end;

// T2DIntegerArray
function EqualATIA(arr1, arr2: T2DIntegerArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if (arr1[i][a] <> arr2[i][a]) then
          Exit;
    end;
    Result := True;
  end;
end;

// T2DExtendedArray
function EqualATEA(arr1, arr2: T2DExtendedArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if (arr1[i][a] <> arr2[i][a]) then
          Exit;
    end;
    Result := True;
  end;
end;

// T2DStringArray
function EqualATSA(arr1, arr2: T2DStringArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if (arr1[i][a] <> arr2[i][a]) then
          Exit;
    end;
    Result := True;
  end;
end;

// T2DCharArray
function EqualATCA(arr1, arr2: T2DCharArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if (arr1[i][a] <> arr2[i][a]) then
          Exit;
    end;
    Result := True;
  end;
end;

// T2DBoolArray
function EqualATBoA(arr1, arr2: T2DBoolArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if (arr1[i][a] <> arr2[i][a]) then
          Exit;
    end;
    Result := True;
  end;
end;

// T2DBoxArray
function EqualATBA(arr1, arr2: T2DBoxArray): Boolean; callconv
var
  h, i, a, b: Integer;
begin
  Result := False;
  h := High(arr1);
  if (h = High(arr2)) then
  begin
    for i := 0 to h do
    begin
      b := High(arr1[i]);
      if (b <> High(arr2[i])) then
        Exit;
      for a := 0 to b do
        if ((arr1[i][a].X1 <> arr2[i][a].X1) or (arr1[i][a].Y1 <> arr2[i][a].Y1) or (arr1[i][a].X2 <> arr2[i][a].X2) or (arr1[i][a].Y2 <> arr2[i][a].Y2)) then
          Exit;
    end;
    Result := True;
  end;
end;
