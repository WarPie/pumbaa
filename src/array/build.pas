{==============================================================================]
 @action: Builds array (arr) where size is length of the array.
 @note: Fills the built array with default values!
        TPoint: Point(0, 0) | Integer/Extended: 0 | string: ''
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure BuildTPA(var arr: TPointArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
    arr[i] := Point(0, 0);
end;

// TIntegerArray
procedure BuildTIA(var arr: TIntegerArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
    arr[i] := 0;
end;

// TExtendedArray
procedure BuildTEA(var arr: TExtendedArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
    arr[i] := 0;
end;

// TStringArray
procedure BuildTSA(var arr: TStringArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
    arr[i] := '';
end;

// TCharArray
procedure BuildTCA(var arr: TCharArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
    arr[i] := ' ';
end;

// TBoolArray
procedure BuildTBoA(var arr: TBoolArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
    arr[i] := False;
end;

// TBoxArray
procedure BuildTBA(var arr: TBoxArray; size: Integer); callconv
var
  i: Integer;
begin
  if (size < 0) then
    size := 0;
  SetLength(arr, size);
  for i := 0 to (size - 1) do
  begin
    arr[i].X1 := 0;
    arr[i].Y1 := 0;
    arr[i].X2 := 0;
    arr[i].Y2 := 0;
  end;
end;

{==============================================================================]
 @action: Builds array (arr) where size1D is length of the array 1st dimension,
          size2D is the size of the 2nd dimension (for each 1D array section).
 @note: Fills the built array with default values!
        TPoint: Point(0, 0) | Integer/Extended: 0 | string: ''
 @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
procedure BuildATPA(var arr: T2DPointArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
      arr[a][b] := Point(0, 0);
  end;
end;

// T2DIntegerArray
procedure BuildATIA(var arr: T2DIntegerArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
      arr[a][b] := 0;
  end;
end;

// T2DExtendedArray
procedure BuildATEA(var arr: T2DExtendedArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
      arr[a][b] := 0;
  end;
end;

// T2DStringArray
procedure BuildATSA(var arr: T2DStringArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
      arr[a][b] := '';
  end;
end;

// T2DCharArray
procedure BuildATCA(var arr: T2DCharArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
      arr[a][b] := ' ';
  end;
end;

// T2DBoolArray
procedure BuildATBoA(var arr: T2DBoolArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
      arr[a][b] := False;
  end;
end;

// T2DBoxArray
procedure BuildATBA(var arr: T2DBoxArray; size1D, size2D: Integer); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(arr, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(arr[a], size2D);
    for b := 0 to (size2D - 1) do
    begin
      arr[a][b].X1 := 0;
      arr[a][b].Y1 := 0;
      arr[a][b].X2 := 0;
      arr[a][b].Y2 := 0;
    end;
  end;
end;
