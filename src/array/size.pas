{==============================================================================]
 @action: Returns total amount of items that arr contains in it.
 @note: Result is based on the "real" size of the 2D array, without counting empty indexes.
 @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
function SizeATPA(arr: T2DPointArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;

// T2DIntegerArray
function SizeATIA(arr: T2DIntegerArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;

// T2DExtendedArray
function SizeATEA(arr: T2DExtendedArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;

// T2DStringArray
function SizeATSA(arr: T2DStringArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;

// T2DCharArray
function SizeATCA(arr: T2DCharArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;

// T2DBoolArray
function SizeATBoA(arr: T2DBoolArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;

// T2DBoxArray
function SizeATBA(arr: T2DBoxArray): Integer; callconv
var
  a, b: Integer;
begin
  Result := 0;
  b := High(arr);
  for a := 0 to b do
    Result := (Result + Length(arr[a]));
end;
