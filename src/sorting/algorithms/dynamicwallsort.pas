procedure DynamicWallSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  a, b, x, i, l, s, tmp: Integer;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    s := ((l - 1) div 2);
    case order of
      so_LowToHigh:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[b] < arr[a]) then
        begin
          tmp := arr[b];
          arr[b] := arr[a];
          arr[a] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[a]) then
          begin
            tmp := arr[x];
            arr[x] := arr[a];
            arr[a] := tmp;
          end else
            if (arr[x] > arr[b]) then
            begin
              tmp := arr[x];
              arr[x] := arr[b];
              arr[b] := tmp;
            end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[a] < arr[b]) then
        begin
          tmp := arr[a];
          arr[a] := arr[b];
          arr[b] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[a]) then
          begin
            tmp := arr[x];
            arr[x] := arr[a];
            arr[a] := tmp;
          end else
            if (arr[x] < arr[b]) then
            begin
              tmp := arr[x];
              arr[x] := arr[b];
              arr[b] := tmp;
            end;
      end;
    end;
  end;
end;

procedure DynamicWallSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  a, b, x, i, l, s: Integer;
  tmp: Extended;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    s := ((l - 1) div 2);
    case order of
      so_LowToHigh:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[b] < arr[a]) then
        begin
          tmp := arr[b];
          arr[b] := arr[a];
          arr[a] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[a]) then
          begin
            tmp := arr[x];
            arr[x] := arr[a];
            arr[a] := tmp;
          end else
            if (arr[x] > arr[b]) then
            begin
              tmp := arr[x];
              arr[x] := arr[b];
              arr[b] := tmp;
            end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[a] < arr[b]) then
        begin
          tmp := arr[a];
          arr[a] := arr[b];
          arr[b] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[a]) then
          begin
            tmp := arr[x];
            arr[x] := arr[a];
            arr[a] := tmp;
          end else
            if (arr[x] < arr[b]) then
            begin
              tmp := arr[x];
              arr[x] := arr[b];
              arr[b] := tmp;
            end;
      end;
    end;
  end;
end;

procedure DynamicWallSortTSA(var arr: TStringArray; order: TSortOrder);
var
  a, b, x, i, l, s: Integer;
  tmp: string;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    s := ((l - 1) div 2);
    case order of
      so_LowToHigh:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[b] < arr[a]) then
        begin
          tmp := arr[b];
          arr[b] := arr[a];
          arr[a] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[a]) then
          begin
            tmp := arr[x];
            arr[x] := arr[a];
            arr[a] := tmp;
          end else
            if (arr[x] > arr[b]) then
            begin
              tmp := arr[x];
              arr[x] := arr[b];
              arr[b] := tmp;
            end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[a] < arr[b]) then
        begin
          tmp := arr[a];
          arr[a] := arr[b];
          arr[b] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[a]) then
          begin
            tmp := arr[x];
            arr[x] := arr[a];
            arr[a] := tmp;
          end else
            if (arr[x] < arr[b]) then
            begin
              tmp := arr[x];
              arr[x] := arr[b];
              arr[b] := tmp;
            end;
      end;
    end;
  end;
end;

procedure DynamicWallSortTCA(var arr: TCharArray; order: TSortOrder);
var
  a, b, x, i, l, s: Integer;
  t: Char;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    s := ((l - 1) div 2);
    case order of
      so_LowToHigh:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[b] < arr[a]) then
        begin
          t := arr[b];
          arr[b] := arr[a];
          arr[a] := t;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[a]) then
          begin
            t := arr[x];
            arr[x] := arr[a];
            arr[a] := t;
          end else
            if (arr[x] > arr[b]) then
            begin
              t := arr[x];
              arr[x] := arr[b];
              arr[b] := t;
            end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        a := i;
        b := ((l - 1) - i);
        if (arr[a] < arr[b]) then
        begin
          t := arr[a];
          arr[a] := arr[b];
          arr[b] := t;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[a]) then
          begin
            t := arr[x];
            arr[x] := arr[a];
            arr[a] := t;
          end else
            if (arr[x] < arr[b]) then
            begin
              t := arr[x];
              arr[x] := arr[b];
              arr[b] := t;
            end;
      end;
    end;
  end;
end;
