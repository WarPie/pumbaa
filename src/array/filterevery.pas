{==============================================================================]
 @action: Filters every/each X item from arr.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FilterEveryTPA(var arr: TPointArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    t := 0;
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TIntegerArray
procedure FilterEveryTIA(var arr: TIntegerArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    t := 0;
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TExtendedArray
procedure FilterEveryTEA(var arr: TExtendedArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  t := 0;
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TStringArray
procedure FilterEveryTSA(var arr: TStringArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  t := 0;
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TCharArray
procedure FilterEveryTCA(var arr: TCharArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  t := 0;
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoolArray
procedure FilterEveryTBoA(var arr: TBoolArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  t := 0;
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoxArray
procedure FilterEveryTBA(var arr: TBoxArray; X: Integer); callconv
var
  i, h, t: Integer;
begin
  t := 0;
  h := High(arr);
  if ((h > -1) and (X > 0)) then
  begin
    for i := 0 to h do
      if ((i mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

{==============================================================================]
 @action: Filters every/each X item from arr - starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure FilterEveryExTPA(var arr: TPointArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TIntegerArray
procedure FilterEveryExTIA(var arr: TIntegerArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TExtendedArray
procedure FilterEveryExTEA(var arr: TExtendedArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TStringArray
procedure FilterEveryExTSA(var arr: TStringArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TCharArray
procedure FilterEveryExTCA(var arr: TCharArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoolArray
procedure FilterEveryExTBoA(var arr: TBoolArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;

// TBoxArray
procedure FilterEveryExTBA(var arr: TBoxArray; offset: Integer; X: Integer); callconv
var
  i, h, t: Integer;
begin
  h := High(arr);
  if ((h > -1) and (X > 0) and ((offset > -1) and (offset <= h))) then
  begin
    t := offset;
    for i := offset to h do
      if (((i - offset) mod X) <> 0) then
      begin
        arr[t] := arr[i];
        Inc(t);
      end;
    SetLength(arr, t);
  end;
end;
