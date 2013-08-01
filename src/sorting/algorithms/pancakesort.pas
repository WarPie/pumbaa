procedure PancakeSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  h, i, j, l, maxpos, x, t: Integer;
begin
  h := High(arr);
  l := Low(arr);
  case order of
    so_LowToHigh:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] > arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := t;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := t;
      end;
    end;
    so_HighToLow:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] < arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := t;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := t;
      end;
    end;
  end;
end;

procedure PancakeSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  h, i, j, l, maxpos, x: Integer;
  t: Extended;
begin
  h := High(arr);
  l := Low(arr);
  case order of
    so_LowToHigh:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] > arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := t;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := t;
      end;
    end;
    so_HighToLow:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] < arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := t;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := t;
      end;
    end;
  end;
end;

procedure PancakeSortTSA(var arr: TStringArray; order: TSortOrder);
var
  h, i, j, l, maxpos, x: Integer;
  t: string;
begin
  h := High(arr);
  l := Low(arr);
  case order of
    so_LowToHigh:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] > arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := t;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := t;
      end;
    end;
    so_HighToLow:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] < arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := t;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        t := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := t;
      end;
    end;
  end;
end;

procedure PancakeSortTCA(var arr: TCharArray; order: TSortOrder);
var
  h, i, j, l, maxpos, x: Integer;
  c: Char;
begin
  h := High(arr);
  l := Low(arr);
  case order of
    so_LowToHigh:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] > arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        c := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := c;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        c := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := c;
      end;
    end;
    so_HighToLow:
    for i := h downto l do
    begin
      maxpos := i;
      for j := l to (i - 1) do
        if (arr[j] < arr[maxpos]) then
          maxpos := j;
      if (maxpos = i) then
        Continue;
      if (maxpos <> l) then
      for x := l to (((maxpos - l) - 1) div 2) do
      begin
        c := arr[x];
        arr[x] := arr[(maxpos - (x - l))];
        arr[(maxpos - (x - l))] := c;
      end;
      for x := l to (((i - l) - 1) div 2) do
      begin
        c := arr[x];
        arr[x] := arr[(i - (x - l))];
        arr[(i - (x - l))] := c;
      end;
    end;
  end;
end;