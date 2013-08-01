procedure OptimizedGnomeSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  p, l, t: Integer;
begin
  p := 1;
  l := 0;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
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
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
        end else
          Inc(p);
  end;
end;

procedure OptimizedGnomeSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  p, l: Integer;
  t: Extended;
begin
  p := 1;
  l := 0;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
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
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
        end else
          Inc(p);
  end;
end;

procedure OptimizedGnomeSortTSA(var arr: TStringArray; order: TSortOrder);
var
  p, l: Integer;
  t: string;
begin
  p := 1;
  l := 0;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
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
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
        end else
          Inc(p);
  end;
end;

procedure OptimizedGnomeSortTCA(var arr: TCharArray; order: TSortOrder);
var
  p, l: Integer;
  t: Char;
begin
  p := 1;
  l := 0;
  case order of
    so_LowToHigh:
    while (p < Length(arr)) do
      if (arr[p] < arr[(p - 1)]) then
      begin
        t := arr[p];
        arr[p] := arr[(p - 1)];
        arr[(p - 1)] := t;
        if (p > 1) then
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
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
        begin
          if (l <> 0) then
            l := p
          else
            Dec(p);
        end else
          Inc(p);
      end else
        if (l <> 0) then
        begin
          p := l;
          l := 0;
        end else
          Inc(p);
  end;
end;