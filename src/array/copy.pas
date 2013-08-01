{==============================================================================]
 @action: Copies items from array (arr), starting from startIndex.
          Amount of items to copy is set using count.
 @note: Version of Copy() function for arrays!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure CopyTPA(arr: TPointArray; startIndex, count: Integer; var output: TPointArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure CopyTIA(arr: TIntegerArray; startIndex, count: Integer; var output: TIntegerArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure CopyTEA(arr: TExtendedArray; startIndex, count: Integer; var output: TExtendedArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure CopyTSA(arr: TStringArray; startIndex, count: Integer; var output: TStringArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure CopyTCA(arr: TCharArray; startIndex, count: Integer; var output: TCharArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure CopyTBoA(arr: TBoolArray; startIndex, count: Integer; var output: TBoolArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure CopyTBA(arr: TBoxArray; startIndex, count: Integer; var output: TBoxArray); callconv
var
  i, l, t: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
      output[(i - startIndex)] := arr[i];
  end else
    SetLength(output, 0);
end;

// T2DPointArray
procedure CopyATPA(arr: T2DPointArray; startIndex, count: Integer; var output: T2DPointArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DIntegerArray
procedure CopyATIA(arr: T2DIntegerArray; startIndex, count: Integer; var output: T2DIntegerArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DExtendedArray
procedure CopyATEA(arr: T2DExtendedArray; startIndex, count: Integer; var output: T2DExtendedArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DStringArray
procedure CopyATSA(arr: T2DStringArray; startIndex, count: Integer; var output: T2DStringArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DCharArray
procedure CopyATCA(arr: T2DCharArray; startIndex, count: Integer; var output: T2DCharArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DBoolArray
procedure CopyATBoA(arr: T2DBoolArray; startIndex, count: Integer; var output: T2DBoolArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DBoxArray
procedure CopyATBA(arr: T2DBoxArray; startIndex, count: Integer; var output: T2DBoxArray); callconv
var
  i, l, t, a, b: Integer;
begin
  l := Length(arr);
  if (startIndex < 0) then
    startIndex := 0;
  if ((l >= startIndex) and (count > 0)) then
  begin
    t := (l - startIndex);
    if (count > t) then
      count := t;
    SetLength(output, count);
    for i := startIndex to ((startIndex + count) - 1) do
    begin
      b := High(arr[i]);
      SetLength(output[(i - startIndex)], (b + 1));
      for a := 0 to b do
        output[(i - startIndex)][a] := arr[i][a];
    end;
  end else
    SetLength(output, 0);
end;
