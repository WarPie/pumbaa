{==============================================================================]
 @action: Outputs index positions for all items in arr.
 @note: Sets -1 to the ones that wasn't found from arr!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure TraceTPA(arr: TPointArray; items: TPointArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1; 
      for v := 0 to (l - 1) do
        if ((arr[v].X = items[i].X) and (arr[v].Y = items[i].Y)) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure TraceTIA(arr: TIntegerArray; items: TIntegerArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1; 
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure TraceTEA(arr: TExtendedArray; items: TExtendedArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1; 
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure TraceTSA(arr: TStringArray; items: TStringArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1; 
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure TraceTCA(arr: TCharArray; items: TCharArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure TraceTBoA(arr: TBoolArray; items: TBoolArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure TraceTBA(arr: TBoxArray; items: TBoxArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if ((arr[v].X1 = items[i].X1) and (arr[v].Y1 = items[i].Y1) and (arr[v].X2 = items[i].X2) and (arr[v].Y2 = items[i].Y2)) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Outputs index positions for all items in arr. Starting from offset.
 @note: Sets -1 to the ones that wasn't found from arr!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure TraceOTPA(arr: TPointArray; offset: Integer; items: TPointArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if ((arr[v].X = items[i].X) and (arr[v].Y = items[i].Y)) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure TraceOTIA(arr: TIntegerArray; offset: Integer; items: TIntegerArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure TraceOTEA(arr: TExtendedArray; offset: Integer; items: TExtendedArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure TraceOTSA(arr: TStringArray; offset: Integer; items: TStringArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure TraceOTCA(arr: TCharArray; offset: Integer; items: TCharArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure TraceOTBoA(arr: TBoolArray; offset: Integer; items: TBoolArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if (arr[v] = items[i]) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure TraceOTBA(arr: TBoxArray; offset: Integer; items: TBoxArray; var output: TIntegerArray); callconv
var
  i, v, h, l: Integer;
begin
  h := High(items);
  l := Length(arr);
  if ((l > 0) and (h > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
    begin
      output[i] := -1;
      for v := 0 to (l - 1) do
        if ((arr[v].X1 = items[i].X1) and (arr[v].Y1 = items[i].Y1) and (arr[v].X2 = items[i].X2) and (arr[v].Y2 = items[i].Y2)) then
        begin
          output[i] := v;
          Break;
        end;
    end;
  end else
    SetLength(output, 0);
end;
