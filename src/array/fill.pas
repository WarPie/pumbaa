{==============================================================================]
 @action: Fills whole arr with item.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FillTPA(var arr: TPointArray; item: TPoint); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

// TIntegerArray
procedure FillTIA(var arr: TIntegerArray; item: Integer); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

// TExtendedArray
procedure FillTEA(var arr: TExtendedArray; item: Extended); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

// TStringArray
procedure FillTSA(var arr: TStringArray; item: string); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

// TCharArray
procedure FillTCA(var arr: TCharArray; item: Char); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

// TBoolArray
procedure FillTBoA(var arr: TBoolArray; item: Boolean); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

// TBoxArray
procedure FillTBA(var arr: TBoxArray; item: TBox); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  for i := 0 to h do
    arr[i] := item;
end;

{==============================================================================]
 @action: Fills whole arr with items.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FillExTPA(var arr: TPointArray; items: TPointArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

// TIntegerArray
procedure FillExTIA(var arr: TIntegerArray; items: TIntegerArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

// TExtendedArray
procedure FillExTEA(var arr: TExtendedArray; items: TExtendedArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

// TStringArray
procedure FillExTSA(var arr: TStringArray; items: TStringArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

// TCharArray
procedure FillExTCA(var arr: TCharArray; items: TCharArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

// TBoolArray
procedure FillExTBoA(var arr: TBoolArray; items: TBoolArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

// TBoxArray
procedure FillExTBA(var arr: TBoxArray; items: TBoxArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  for i := 0 to h do
    arr[i] := items[(i mod l)];
end;

{==============================================================================]
 @action: Fills arr indexes (IDs) with item.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FillIDsTPA(var arr: TPointArray; IDs: TIntegerArray; item: TPoint); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

// TIntegerArray
procedure FillIDsTIA(var arr: TIntegerArray; IDs: TIntegerArray; item: Integer); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

// TExtendedArray
procedure FillIDsTEA(var arr: TExtendedArray; IDs: TIntegerArray; item: Extended); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

// TStringArray
procedure FillIDsTSA(var arr: TStringArray; IDs: TIntegerArray; item: string); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

// TCharArray
procedure FillIDsTCA(var arr: TCharArray; IDs: TIntegerArray; item: Char); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

// TBoolArray
procedure FillIDsTBoA(var arr: TBoolArray; IDs: TIntegerArray; item: Boolean); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

// TBoxArray
procedure FillIDsTBA(var arr: TBoxArray; IDs: TIntegerArray; item: TBox); callconv
var
  h, l, i: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  if ((l > 0) and (h > -1)) then
  for i := 0 to h do
    if ((IDs[i] < l) and (IDs[i] > -1)) then
      arr[IDs[i]] := item;
end;

{==============================================================================]
 @action: Fills arr indexes (IDs) with items.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FillIDsExTPA(var arr: TPointArray; IDs: TIntegerArray; items: TPointArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

// TIntegerArray
procedure FillIDsExTIA(var arr: TIntegerArray; IDs: TIntegerArray; items: TIntegerArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

// TExtendedArray
procedure FillIDsExTEA(var arr: TExtendedArray; IDs: TIntegerArray; items: TExtendedArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

// TStringArray
procedure FillIDsExTSA(var arr: TStringArray; IDs: TIntegerArray; items: TStringArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

// TCharArray
procedure FillIDsExTCA(var arr: TCharArray; IDs: TIntegerArray; items: TCharArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

// TBoolArray
procedure FillIDsExTBoA(var arr: TBoolArray; IDs: TIntegerArray; items: TBoolArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

// TBoxArray
procedure FillIDsExTBA(var arr: TBoxArray; IDs: TIntegerArray; items: TBoxArray); callconv
var
  h, l, i, m, r: Integer;
begin
  l := Length(arr);
  h := High(IDs);
  m := Length(items);
  if ((l > 0) and (h > -1) and (m > 0)) then
  begin
    r := 0;
    for i := 0 to h do
      if ((IDs[i] < l) and (IDs[i] > -1)) then
      begin
        arr[IDs[i]] := items[(r mod m)];
        Inc(r);
      end;
  end;
end;

{==============================================================================]
 @action: Fills whole arr with item. Starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FillOTPA(var arr: TPointArray; offset: Integer; item: TPoint); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

// TIntegerArray
procedure FillOTIA(var arr: TIntegerArray; offset: Integer; item: Integer); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

// TExtendedArray
procedure FillOTEA(var arr: TExtendedArray; offset: Integer; item: Extended); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

// TStringArray
procedure FillOTSA(var arr: TStringArray; offset: Integer; item: string); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

// TCharArray
procedure FillOTCA(var arr: TCharArray; offset: Integer; item: Char); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

// TBoolArray
procedure FillOTBoA(var arr: TBoolArray; offset: Integer; item: Boolean); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

// TBoxArray
procedure FillOTBA(var arr: TBoxArray; offset: Integer; item: TBox); callconv
var
  h, i: Integer;
begin
  h := High(arr);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := item;
end;

{==============================================================================]
 @action: Fills whole arr with items.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FillExOTPA(var arr: TPointArray; offset: Integer; items: TPointArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

// TIntegerArray
procedure FillExOTIA(var arr: TIntegerArray; offset: Integer; items: TIntegerArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

// TExtendedArray
procedure FillExOTEA(var arr: TExtendedArray; offset: Integer; items: TExtendedArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

// TStringArray
procedure FillExOTSA(var arr: TStringArray; offset: Integer; items: TStringArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

// TCharArray
procedure FillExOTCA(var arr: TCharArray; offset: Integer; items: TCharArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

// TBoolArray
procedure FillExOTBoA(var arr: TBoolArray; offset: Integer; items: TBoolArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

// TBoxArray
procedure FillExOTBA(var arr: TBoxArray; offset: Integer; items: TBoxArray); callconv
var
  i, h, l: Integer;
begin
  h := High(arr);
  l := Length(items);
  if (offset < 0) then
    offset := 0;
  for i := offset to h do
    arr[i] := items[((i - offset) mod l)];
end;

{==============================================================================]
 @action: Fills whole arr with item.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
procedure FillATPA(var arr: T2DPointArray; item: TPoint); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;

// T2DIntegerArray
procedure FillATIA(var arr: T2DIntegerArray; item: Integer); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;

// T2DExtendedArray
procedure FillATEA(var arr: T2DExtendedArray; item: Extended); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;

// T2DStringArray
procedure FillATSA(var arr: T2DStringArray; item: string); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;

// T2DCharArray
procedure FillATCA(var arr: T2DCharArray; item: Char); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;

// T2DBoolArray
procedure FillATBoA(var arr: T2DBoolArray; item: Boolean); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;

// T2DBoxArray
procedure FillATBA(var arr: T2DBoxArray; item: TBox); callconv
var
  h, i, a, b: Integer;
begin
  h := High(arr);
  for i := 0 to h do
  begin
    b := High(arr[i]);
    for a := 0 to b do
      arr[i][a] := item;
  end;
end;
