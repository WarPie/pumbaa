{==============================================================================]
 @action: Removes all the empty indexes from arr.
 @note: Empty index = []
 @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
procedure CleanATPA(var arr: T2DPointArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;

// T2DIntegerArray
procedure CleanATIA(var arr: T2DIntegerArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;

// T2DExtendedArray
procedure CleanATEA(var arr: T2DExtendedArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;

// T2DStringArray
procedure CleanATSA(var arr: T2DStringArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;

// T2DCharArray
procedure CleanATCA(var arr: T2DCharArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;

// T2DBoolArray
procedure CleanATBoA(var arr: T2DBoolArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;

// T2DBoxArray
procedure CleanATBA(var arr: T2DBoxArray); callconv
var
  a, b, c: Integer;
begin
  c := 0;
  b := High(arr);
  for a := 0 to b do
    if (Length(arr[a]) > 0) then
    begin
      arr[c] := arr[a];
      Inc(c);
    end;
  SetLength(arr, c);
end;
