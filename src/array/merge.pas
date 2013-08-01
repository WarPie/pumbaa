{==============================================================================]
 @action: Merges T2DPointArray (arr) to TPointArray.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================} 

// T2DPointArray
procedure MergeATPA(arr: T2DPointArray; var output: TPointArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

// T2DIntegerArray
procedure MergeATIA(arr: T2DIntegerArray; var output: TIntegerArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

// T2DExtendedArray
procedure MergeATEA(arr: T2DExtendedArray; var output: TExtendedArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

// T2DStringArray
procedure MergeATSA(arr: T2DStringArray; var output: TStringArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

// T2DCharArray
procedure MergeATCA(arr: T2DCharArray; var output: TCharArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

// T2DBoolArray
procedure MergeATBoA(arr: T2DBoolArray; var output: TBoolArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

// T2DBoxArray
procedure MergeATBA(arr: T2DBoxArray; var output: TBoxArray); callconv
var
  i, i2, h, h2, r: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    r := 0;
    for i := 0 to h do
      r := (r + Length(arr[i]));
    SetLength(output, r);
    r := 0;
    for i := 0 to h do
    begin
      h2 := High(arr[i]);
      for i2 := 0 to h2 do
      begin
        output[r] := arr[i][i2];
        Inc(r);
      end;
    end;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Returns arr1 and arr2 combined together.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure CombineTPA(arr1, arr2: TPointArray; var output: TPointArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;

// TIntegerArray
procedure CombineTIA(arr1, arr2: TIntegerArray; var output: TIntegerArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;

// TExtendedArray
procedure CombineTEA(arr1, arr2: TExtendedArray; var output: TExtendedArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;

// TStringArray
procedure CombineTSA(arr1, arr2: TStringArray; var output: TStringArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;

// TCharArray
procedure CombineTCA(arr1, arr2: TCharArray; var output: TCharArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;

// TBoolArray
procedure CombineTBoA(arr1, arr2: TBoolArray; var output: TBoolArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;

// TBoxArray
procedure CombineTBA(arr1, arr2: TBoxArray; var output: TBoxArray); callconv
var
  l1, l2, i: Integer;
begin
  l1 := Length(arr1);
  l2 := Length(arr2);
  SetLength(output, (l1 + l2));
  for i := 0 to (l1 - 1) do
    output[i] := arr1[i];
  for i := 0 to (l2 - 1) do
    output[(l1 + i)] := arr2[i];
end;
