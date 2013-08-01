{==============================================================================]
 @action: Creates array with item where size is length of the array.
 @note: item is placed on every index in result.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure CreateTPA(item: TPoint; size: Integer; var output: TPointArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure CreateTIA(item: Integer; size: Integer; var output: TIntegerArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure CreateTEA(item: Extended; size: Integer; var output: TExtendedArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure CreateTSA(item: string; size: Integer; var output: TStringArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure CreateTCA(item: Char; size: Integer; var output: TCharArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure CreateTBoA(item: Boolean; size: Integer; var output: TBoolArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure CreateTBA(item: TBox; size: Integer; var output: TBoxArray); callconv
var
  i: Integer;
begin
  if (size > 0) then
  begin
    SetLength(output, size);
    for i := 0 to (size - 1) do
      output[i] := item;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Creates array with items where size is length of the array.
 @note: items are placed on every index in result.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure CreateExTPA(items: TPointArray; size: Integer; var output: TPointArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure CreateExTIA(items: TIntegerArray; size: Integer; var output: TIntegerArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure CreateExTEA(items: TExtendedArray; size: Integer; var output: TExtendedArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure CreateExTSA(items: TStringArray; size: Integer; var output: TStringArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure CreateExTCA(items: TCharArray; size: Integer; var output: TCharArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure CreateExTBoA(items: TBoolArray; size: Integer; var output: TBoolArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure CreateExTBA(items: TBoxArray; size: Integer; var output: TBoxArray); callconv
var
  x, y: Integer;
begin
  if (size > 0) then
  begin
    y := Length(items);
    if (y = 0) then
      SetLength(output, 0);
    SetLength(output, size);
    if (y > 0) then
    for x := 0 to (size - 1) do
      output[x] := items[(x mod y)];
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Creates array with item, where size1D is length of the array 1st dimension,
          size2D is the size of the 2nd dimension (for each 1D array section).
 @note: Fills the built array with default values!
        TPoint: Point(0, 0) | Integer/Extended: 0 | string: ''
 @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
procedure CreateATPA(item: TPoint; size1D, size2D: Integer; var output: T2DPointArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;

// T2DIntegerArray
procedure CreateATIA(item: Integer; size1D, size2D: Integer; var output: T2DIntegerArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;

// T2DExtendedArray
procedure CreateATEA(item: Extended; size1D, size2D: Integer; var output: T2DExtendedArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;

// T2DStringArray
procedure CreateATSA(item: string; size1D, size2D: Integer; var output: T2DStringArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;

// T2DCharArray
procedure CreateATCA(item: Char; size1D, size2D: Integer; var output: T2DCharArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;

// T2DBoolArray
procedure CreateATBoA(item: Boolean; size1D, size2D: Integer; var output: T2DBoolArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;

// T2DBoxArray
procedure CreateATBA(item: TBox; size1D, size2D: Integer; var output: T2DBoxArray); callconv
var
  a, b: Integer;
begin
  if (size1D < 0) then
    size1D := 0;
  if (size2D < 0) then
    size2D := 0;
  SetLength(output, size1D);
  for a := 0 to (size1D - 1) do
  begin
    SetLength(output[a], size2D);
    for b := 0 to (size2D - 1) do
      output[a][b] := item;
  end;
end;
