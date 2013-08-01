procedure ShellSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  x, a, b, l, tmp: Integer;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    x := 0;
    while (x < (l div 3)) do
      x := ((x * 3) + 1);
    case order of
      so_HighToLow:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] > arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] < arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
      so_LowToHigh:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] < arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] > arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
    end;
  end;
end;

procedure ShellSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  x, a, b, l: Integer;
  tmp: Extended;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    x := 0;
    while (x < (l div 3)) do
      x := ((x * 3) + 1);
    case order of
      so_HighToLow:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] > arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] < arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
      so_LowToHigh:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] < arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] > arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
    end;
  end;
end;

procedure ShellSortTSA(var arr: TStringArray; order: TSortOrder);
var
  x, a, b, l: Integer;
  tmp: string;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    x := 0;
    while (x < (l div 3)) do
      x := ((x * 3) + 1);
    case order of
      so_HighToLow:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] > arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] < arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
      so_LowToHigh:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] < arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] > arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
    end;
  end;
end;

procedure ShellSortTCA(var arr: TCharArray; order: TSortOrder);
var
  x, a, b, l: Integer;
  tmp: Char;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    x := 0;
    while (x < (l div 3)) do
      x := ((x * 3) + 1);
    case order of
      so_HighToLow:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] > arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] < arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
      so_LowToHigh:
      if (l > 2) then
      begin
        while (x >= 1) do
        begin
          for a := x to (l - 1) do
          begin
            b := a;
            while ((b >= x) and (arr[b] < arr[(b - x)])) do
            begin
              tmp := arr[b];
              arr[b] := arr[(b - x)];
              arr[(b - x)] := tmp;
              b := (b - x);
            end;
          end;
          x := (x div 3);
        end;
      end else
        if (arr[0] > arr[1]) then
        begin
          tmp := arr[0];
          arr[0] := arr[1];
          arr[1] := tmp;
        end;
    end;
  end;
end;
