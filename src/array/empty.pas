{==============================================================================]
 @action: Returns true if arr is empty (Length(arr) = 0).
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function EmptyTPA(arr: TPointArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

// TIntegerArray
function EmptyTIA(arr: TIntegerArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

// TExtendedArray
function EmptyTEA(arr: TExtendedArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

// TStringArray
function EmptyTSA(arr: TStringArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

// TCharArray
function EmptyTCA(arr: TCharArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

// TBoolArray
function EmptyTBoA(arr: TBoolArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

// TBoxArray
function EmptyTBA(arr: TBoxArray): Boolean; callconv
begin
  Result := (Length(arr) = 0);
end;

{==============================================================================]
 @action: Returns true if arr does not contain any ITEMS in it.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
function EmptyATPA(arr: T2DPointArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;

// T2DIntegerArray
function EmptyATIA(arr: T2DIntegerArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;

// T2DExtendedArray
function EmptyATEA(arr: T2DExtendedArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;

// T2DStringArray
function EmptyATSA(arr: T2DStringArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;

// T2DCharArray
function EmptyATCA(arr: T2DCharArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;

// T2DBoolArray
function EmptyATBoA(arr: T2DBoolArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;

// T2DBoxArray
function EmptyATBA(arr: T2DBoxArray): Boolean;
var
  a, b: Integer;
begin
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
      Break;
  Result := (a > b);
end;
