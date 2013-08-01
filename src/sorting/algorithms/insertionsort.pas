procedure InsertionSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  a, b, h, tmp: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] < arr[(b - 1)]) then
          Break;
        tmp := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := tmp;
      end;
    so_HighToLow:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] > arr[(b - 1)]) then
          Break;
        tmp := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := tmp;
      end;
  end;
end;

procedure InsertionSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  a, b, h: Integer;
  tmp: Extended;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] < arr[(b - 1)]) then
          Break;
        tmp := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := tmp;
      end;
    so_HighToLow:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] > arr[(b - 1)]) then
          Break;
        tmp := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := tmp;
      end;
  end;
end;

procedure InsertionSortTSA(var arr: TStringArray; order: TSortOrder);
var
  a, b, h: Integer;
  tmp: string;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] < arr[(b - 1)]) then
          Break;
        tmp := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := tmp;
      end;
    so_HighToLow:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] > arr[(b - 1)]) then
          Break;
        tmp := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := tmp;
      end;
  end;
end;

procedure InsertionSortTCA(var arr: TCharArray; order: TSortOrder);
var
  t: Char;
  a, b, h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] < arr[(b - 1)]) then
          Break;
        t := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := t;
      end;
    so_HighToLow:
    for a := 1 to h do
      for b := a downto 1 do
      begin
        if not (arr[b] > arr[(b - 1)]) then
          Break;
        t := arr[(b - 1)];
        arr[(b - 1)] := arr[b];
        arr[b] := t;
      end;
  end;
end;
