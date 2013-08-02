{==============================================================================]
 @action: Swaps arr1 and arr2.
 @note: Swaps values from arr1 to arr2 and arr2 to arr1.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure SwapTPA(var arr1, arr2: TPointArray); callconv
  procedure _Clone(arr: TPointArray; var clone: TPointArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TPointArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// TIntegerArray
procedure SwapTIA(var arr1, arr2: TIntegerArray); callconv
  procedure _Clone(arr: TIntegerArray; var clone: TIntegerArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TIntegerArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// TExtendedArray
procedure SwapTEA(var arr1, arr2: TExtendedArray); callconv
  procedure _Clone(arr: TExtendedArray; var clone: TExtendedArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TExtendedArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// TStringArray
procedure SwapTSA(var arr1, arr2: TStringArray); callconv
  procedure _Clone(arr: TStringArray; var clone: TStringArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TStringArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// TCharArray
procedure SwapTCA(var arr1, arr2: TCharArray); callconv
  procedure _Clone(arr: TCharArray; var clone: TCharArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TCharArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// TBoolArray
procedure SwapTBoA(var arr1, arr2: TBoolArray); callconv
  procedure _Clone(arr: TBoolArray; var clone: TBoolArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TBoolArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// TBoxArray
procedure SwapTBA(var arr1, arr2: TBoxArray); callconv
  procedure _Clone(arr: TBoxArray; var clone: TBoxArray); inline;
  var
    l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
      clone[i] := arr[i];
  end;
var
  t: TBoxArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DPointArray
procedure SwapATPA(var arr1, arr2: T2DPointArray); callconv
  procedure _Clone(arr: T2DPointArray; var clone: T2DPointArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DPointArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DIntegerArray
procedure SwapATIA(var arr1, arr2: T2DIntegerArray); callconv
  procedure _Clone(arr: T2DIntegerArray; var clone: T2DIntegerArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DIntegerArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DExtendedArray
procedure SwapATEA(var arr1, arr2: T2DExtendedArray); callconv
  procedure _Clone(arr: T2DExtendedArray; var clone: T2DExtendedArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DExtendedArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DStringArray
procedure SwapATSA(var arr1, arr2: T2DStringArray); callconv
  procedure _Clone(arr: T2DStringArray; var clone: T2DStringArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DStringArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DCharArray
procedure SwapATCA(var arr1, arr2: T2DCharArray); callconv
  procedure _Clone(arr: T2DCharArray; var clone: T2DCharArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DCharArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DBoolArray
procedure SwapATBoA(var arr1, arr2: T2DBoolArray); callconv
  procedure _Clone(arr: T2DBoolArray; var clone: T2DBoolArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DBoolArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;

// T2DBoxArray
procedure SwapATBA(var arr1, arr2: T2DBoxArray); callconv
  procedure _Clone(arr: T2DBoxArray; var clone: T2DBoxArray); inline;
  var
    a, b, l, i: Integer;
  begin
    l := Length(arr);
    SetLength(clone, l);
    for i := 0 to (l - 1) do
    begin
      b := Length(arr[i]);
      SetLength(clone[i], b);
      for a := 0 to (b - 1) do
        clone[i][a] := arr[i][a];
    end;
  end;
var
  t: T2DBoxArray;
begin
  _Clone(arr1, t);
  _Clone(arr2, arr1);
  _Clone(t, arr2);
  SetLength(t, 0);
end;
