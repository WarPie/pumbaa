{==============================================================================]
 @action: Creates copy of arr safely to clone.
 @note: Outputs exactly same array as arr is!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure CloneTPA(arr: TPointArray; var output: TPointArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// TIntegerArray
procedure CloneTIA(arr: TIntegerArray; var output: TIntegerArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// TExtendedArray
procedure CloneTEA(arr: TExtendedArray; var output: TExtendedArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// TStringArray
procedure CloneTSA(arr: TStringArray; var output: TStringArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// TCharArray
procedure CloneTCA(arr: TCharArray; var output: TCharArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// TBoolArray
procedure CloneTBoA(arr: TBoolArray; var output: TBoolArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// TBoxArray
procedure CloneTBA(arr: TBoxArray; var output: TBoxArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := arr[i];
end;

// T2DPointArray
procedure CloneATPA(arr: T2DPointArray; var output: T2DPointArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;

// T2DIntegerArray
procedure CloneATIA(arr: T2DIntegerArray; var output: T2DIntegerArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;

// T2DExtendedArray
procedure CloneATEA(arr: T2DExtendedArray; var output: T2DExtendedArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;

// T2DStringArray
procedure CloneATSA(arr: T2DStringArray; var output: T2DStringArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;

// T2DCharArray
procedure CloneATCA(arr: T2DCharArray; var output: T2DCharArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;

// T2DBoolArray
procedure CloneATBoA(arr: T2DBoolArray; var output: T2DBoolArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;

// T2DBoxArray
procedure CloneATBA(arr: T2DBoxArray; var output: T2DBoxArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  SetLength(output, l);
  for i := 0 to (l - 1) do
  begin
    b := Length(arr[i]);
    SetLength(output[i], b);
    for a := 0 to (b - 1) do
      output[i][a] := arr[i][a];
  end;
end;
