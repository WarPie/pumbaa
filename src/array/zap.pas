{==============================================================================]
 @action: Zaps item(s) from arr.
 @note: Keeps only the first one from left, others will be Zap'd out.
        So, this action is the OPPOSITE from pp_Remove().
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ZapTPA(var arr: TPointArray; item: TPoint); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or ((arr[i].X <> item.X) or (arr[i].Y <> item.Y))) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if ((arr[i].X = item.X) and (arr[i].Y = item.Y)) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure ZapTIA(var arr: TIntegerArray; item: Integer); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure ZapTEA(var arr: TExtendedArray; item: Extended); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure ZapTSA(var arr: TStringArray; item: string); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure ZapTCA(var arr: TCharArray; item: Char); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure ZapTBoA(var arr: TBoolArray; item: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure ZapTBA(var arr: TBoxArray; item: TBox); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (not s or ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2))) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if ((arr[i].X1 = item.X1) and (arr[i].Y1 = item.Y1) and (arr[i].X2 = item.X2) and (arr[i].Y2 = item.Y2)) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Zaps item(s) from arr. Starting from offset.
 @note: Keeps only the first one from left, others will be Zap'd out.
        So, this action is the OPPOSITE from pp_Remove().
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ZapOTPA(var arr: TPointArray; offset: Integer; item: TPoint); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or ((arr[i].X <> item.X) or (arr[i].Y <> item.Y))) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if ((arr[i].X = item.X) and (arr[i].Y = item.Y)) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure ZapOTIA(var arr: TIntegerArray; offset: Integer; item: Integer); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure ZapOTEA(var arr: TExtendedArray; offset: Integer; item: Extended); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure ZapOTSA(var arr: TStringArray; offset: Integer; item: string); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure ZapOTCA(var arr: TCharArray; offset: Integer; item: Char); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure ZapOTBoA(var arr: TBoolArray; offset: Integer; item: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if (arr[i] = item) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure ZapOTBA(var arr: TBoxArray; offset: Integer; item: TBox); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (not s or ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2))) then
      begin
        arr[r] := arr[i];
        Inc(r);
        if ((arr[i].X1 = item.X1) and (arr[i].Y1 = item.Y1) and (arr[i].X2 = item.X2) and (arr[i].Y2 = item.Y2)) then
          s := True;
      end;
    SetLength(arr, r);
  end;
end;
