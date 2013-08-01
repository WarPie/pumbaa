procedure GnomeSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  p, t: Integer;
begin
  p := 1;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
    so_HighToLow:
    while (p < Length(arr)) do
      if (arr[p] > arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
  end;
end;

procedure GnomeSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  p: Integer;
  t: Extended;
begin
  p := 1;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
    so_HighToLow:
    while (p < Length(arr)) do
      if (arr[p] > arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
  end;
end;

procedure GnomeSortTSA(var arr: TStringArray; order: TSortOrder);
var
  p: Integer;
  t: string;
begin
  p := 1;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
    so_HighToLow:
    while (p < Length(arr)) do
      if (arr[p] > arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
  end;
end;

procedure GnomeSortTCA(var arr: TCharArray; order: TSortOrder);
var
  p: Integer;
  t: Char;
begin
  p := 1;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
    so_HighToLow:
    while (p < Length(arr)) do
      if (arr[p] > arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
          Dec(p);
      end else
        Inc(p);
  end;
end;