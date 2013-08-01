procedure OptimizedBubbleSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  a, b, h, t: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] > arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
    so_HighToLow:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] < arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
  end;
end;

procedure OptimizedBubbleSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  a, b, h: Integer;
  t: Extended;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] > arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
    so_HighToLow:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] < arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
  end;
end;

procedure OptimizedBubbleSortTSA(var arr: TStringArray; order: TSortOrder);
var
  a, b, h: Integer;
  t: string;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] > arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
    so_HighToLow:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] < arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
  end;
end;

procedure OptimizedBubbleSortTCA(var arr: TCharArray; order: TSortOrder);
var
  t: Char;
  a, b, h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] > arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
    so_HighToLow:
    for a := 0 to (h - 1) do
      for b := 1 to (h - a) do
        if (arr[(b - 1)] < arr[b]) then
        begin
          t := arr[(b - 1)];
          arr[(b - 1)] := arr[b];
          arr[b] := t;
        end;
  end;
end;
