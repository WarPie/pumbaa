{==============================================================================]
 @action: Reverses arr.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ReverseTPA(var arr: TPointArray); callconv
var
  g, h, i: Integer;
  t: TPoint;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;

// TIntegerArray
procedure ReverseTIA(var arr: TIntegerArray); callconv
var
  g, h, i, t: Integer;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;

// TExtendedArray
procedure ReverseTEA(var arr: TExtendedArray); callconv
var
  g, h, i: Integer;
  t: Extended;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;

// TStringArray
procedure ReverseTSA(var arr: TStringArray); callconv
var
  g, h, i: Integer;
  t: string;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;

// TCharArray
procedure ReverseTCA(var arr: TCharArray); callconv
var
  g, h, i: Integer;
  t: Char;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;

// TBoolArray
procedure ReverseTBoA(var arr: TBoolArray); callconv
var
  g, h, i: Integer;
  t: Boolean;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;

// TBoxArray
procedure ReverseTBA(var arr: TBoxArray); callconv
var
  g, h, i: Integer;
  t: TBox;
begin
  h := High(arr);
  if (h < 1) then
    Exit;
  g := (h div 2);
  for i := 0 to g do
  begin
    t := arr[i];
    arr[i] := arr[(h - i)];
    arr[(h - i)] := t;
  end;
end;
