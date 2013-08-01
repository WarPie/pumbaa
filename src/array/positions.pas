{==============================================================================]
 @action: Outputs all positions of arr which match with item.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PositionsTPA(arr: TPointArray; item: TPoint; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if ((arr[i].X = item.X) and (arr[i].Y = item.Y)) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TIntegerArray
procedure PositionsTIA(arr: TIntegerArray; item: Integer; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TExtendedArray
procedure PositionsTEA(arr: TExtendedArray; item: Extended; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TStringArray
procedure PositionsTSA(arr: TStringArray; item: string; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TCharArray
procedure PositionsTCA(arr: TCharArray; item: Char; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TBoolArray
procedure PositionsTBoA(arr: TBoolArray; item: Boolean; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TBoxArray
procedure PositionsTBA(arr: TBoxArray; item: TBox; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      if ((arr[i].X1 = item.X1) and (arr[i].Y1 = item.Y1) and (arr[i].X2 = item.X2) and (arr[i].Y2 = item.Y2)) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Returns all positions of arr which match with any item from items.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PositionsExTPA(arr: TPointArray; items: TPointArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if ((arr[i].X = items[a].X) and (arr[i].Y = items[a].Y)) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TIntegerArray
procedure PositionsExTIA(arr: TIntegerArray; items: TIntegerArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TExtendedArray
procedure PositionsExTEA(arr: TExtendedArray; items: TExtendedArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TStringArray
procedure PositionsExTSA(arr: TStringArray; items: TStringArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TCharArray
procedure PositionsExTCA(arr: TCharArray; items: TCharArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TBoolArray
procedure PositionsExTBoA(arr: TBoolArray; items: TBoolArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TBoxArray
procedure PositionsExTBA(arr: TBoxArray; items: TBoxArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    SetLength(output, (h + 1));
    for i := 0 to h do
      for a := 0 to (b - 1) do
        if ((arr[i].X1 = items[a].X1) and (arr[i].Y1 = items[a].Y1) and (arr[i].X2 = items[a].X2) and (arr[i].Y2 = items[a].Y2)) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Outputs all positions of arr which match with item. Starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PositionsOTPA(arr: TPointArray; offset: Integer; item: TPoint; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if ((arr[i].X = item.X) and (arr[i].Y = item.Y)) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TIntegerArray
procedure PositionsOTIA(arr: TIntegerArray; offset: Integer; item: Integer; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TExtendedArray
procedure PositionsOTEA(arr: TExtendedArray; offset: Integer; item: Extended; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TStringArray
procedure PositionsOTSA(arr: TStringArray; offset: Integer; item: string; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TCharArray
procedure PositionsOTCA(arr: TCharArray; offset: Integer; item: Char; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TBoolArray
procedure PositionsOTBoA(arr: TBoolArray; offset: Integer; item: Boolean; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if (arr[i] = item) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TBoxArray
procedure PositionsOTBA(arr: TBoxArray; offset: Integer; item: TBox; var output: TIntegerArray); callconv
var
  i, r, h: Integer;
begin
  r := 0;
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      if ((arr[i].X1 = item.X1) and (arr[i].Y1 = item.Y1) and (arr[i].X2 = item.X2) and (arr[i].Y2 = item.Y2)) then
      begin
        output[r] := i;
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Returns all positions of arr which match with any item from items. Starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PositionsExOTPA(arr: TPointArray; offset: Integer; items: TPointArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if ((arr[i].X = items[a].X) and (arr[i].Y = items[a].Y)) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TIntegerArray
procedure PositionsExOTIA(arr: TIntegerArray; offset: Integer; items: TIntegerArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TExtendedArray
procedure PositionsExOTEA(arr: TExtendedArray; offset: Integer; items: TExtendedArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TStringArray
procedure PositionsExOTSA(arr: TStringArray; offset: Integer; items: TStringArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TCharArray
procedure PositionsExOTCA(arr: TCharArray; offset: Integer; items: TCharArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TBoolArray
procedure PositionsExOTBoA(arr: TBoolArray; offset: Integer; items: TBoolArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if (arr[i] = items[a]) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;

// TBoxArray
procedure PositionsExOTBA(arr: TBoxArray; offset: Integer; items: TBoxArray; var output: TIntegerArray); callconv
var
  i, r, h, a, b: Integer;
begin
  r := 0;
  h := High(arr);
  b := Length(items);
  if ((h > -1) and (b > 0)) then
  begin
    if (offset < 0) then
      offset := 0;
    SetLength(output, (h + 1));
    for i := offset to h do
      for a := 0 to (b - 1) do
        if ((arr[i].X1 = items[a].X1) and (arr[i].Y1 = items[a].Y1) and (arr[i].X2 = items[a].X2) and (arr[i].Y2 = items[a].Y2)) then
        begin
          output[r] := i;
          Inc(r);
          Break;
        end;
  end;
  SetLength(output, r);
end;
