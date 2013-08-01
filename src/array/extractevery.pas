{==============================================================================]
 @action: Extracts every/each X item from arr.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ExtractEveryTPA(var arr: TPointArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TIntegerArray
procedure ExtractEveryTIA(var arr: TIntegerArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TExtendedArray
procedure ExtractEveryTEA(var arr: TExtendedArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TStringArray
procedure ExtractEveryTSA(var arr: TStringArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TCharArray
procedure ExtractEveryTCA(var arr: TCharArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoolArray
procedure ExtractEveryTBoA(var arr: TBoolArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoxArray
procedure ExtractEveryTBA(var arr: TBoxArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if (X > 0) then
    for i := 0 to h do
      if ((i mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

{==============================================================================]
 @action: Extracts every/each X item from arr - starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ExtractEveryExTPA(var arr: TPointArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TIntegerArray
procedure ExtractEveryExTIA(var arr: TIntegerArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TExtendedArray
procedure ExtractEveryExTEA(var arr: TExtendedArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TStringArray
procedure ExtractEveryExTSA(var arr: TStringArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TCharArray
procedure ExtractEveryExTCA(var arr: TCharArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoolArray
procedure ExtractEveryExTBoA(var arr: TBoolArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoxArray
procedure ExtractEveryExTBA(var arr: TBoxArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if (h > -1) then
  begin
    t := 0;
    if ((X > 0) and ((offset > -1) and (offset <= h))) then
    for i := offset to h do
      if (((i - offset) mod X) = 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;
