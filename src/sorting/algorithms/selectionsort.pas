procedure SelectionSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  c, t, h, m, tmp: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] > arr[t]) then
          m := t;
      tmp := arr[m];
      arr[m] := arr[c];
      arr[c] := tmp;
    end;
    so_HighToLow:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] < arr[t]) then
          m := t;
      tmp := arr[m];
      arr[m] := arr[c];
      arr[c] := tmp;
    end;
  end;
end;

procedure SelectionSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  c, t, h, m: Integer;
  tmp: Extended;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] > arr[t]) then
          m := t;
      tmp := arr[m];
      arr[m] := arr[c];
      arr[c] := tmp;
    end;
    so_HighToLow:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] < arr[t]) then
          m := t;
      tmp := arr[m];
      arr[m] := arr[c];
      arr[c] := tmp;
    end;
  end;
end;

procedure SelectionSortTSA(var arr: TStringArray; order: TSortOrder);
var
  c, t, h, m: Integer;
  tmp: string;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] > arr[t]) then
          m := t;
      tmp := arr[m];
      arr[m] := arr[c];
      arr[c] := tmp;
    end;
    so_HighToLow:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] < arr[t]) then
          m := t;
      tmp := arr[m];
      arr[m] := arr[c];
      arr[c] := tmp;
    end;
  end;
end;

procedure SelectionSortTCA(var arr: TCharArray; order: TSortOrder);
var
  c, t, h, m: Integer;
  z: Char;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] > arr[t]) then
          m := t;
      z := arr[m];
      arr[m] := arr[c];
      arr[c] := z;
    end;
    so_HighToLow:
    for c := 0 to h do
    begin
      m := c;
      for t := (c + 1) to h do
        if (arr[m] < arr[t]) then
          m := t;
      z := arr[m];
      arr[m] := arr[c];
      arr[c] := z;
    end;
  end;
end;
