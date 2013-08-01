procedure WallSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  a, b, x, i, l, hi, lo, s, tmp: Integer;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    s := ((l - 1) div 2);
    case order of
      so_LowToHigh:
      for i := 0 to s do
      begin
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] < arr[lo]) then
        begin
          tmp := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[lo]) then
            lo := x
          else
            if (arr[x] > arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          tmp := arr[a];
          arr[a] := arr[lo];
          arr[lo] := tmp;
        end;
        if (hi <> b) then
        begin
          tmp := arr[b];
          arr[b] := arr[hi];
          arr[hi] := tmp;
        end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] > arr[lo]) then
        begin
          tmp := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[lo]) then
            lo := x
          else
            if (arr[x] < arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          tmp := arr[a];
          arr[a] := arr[lo];
          arr[lo] := tmp;
        end;
        if (hi <> b) then
        begin
          tmp := arr[b];
          arr[b] := arr[hi];
          arr[hi] := tmp;
        end;
      end;
    end;
  end;
end;

procedure WallSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  a, b, x, i, l, hi, lo, s: Integer;
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
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] < arr[lo]) then
        begin
          tmp := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[lo]) then
            lo := x
          else
            if (arr[x] > arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          tmp := arr[a];
          arr[a] := arr[lo];
          arr[lo] := tmp;
        end;
        if (hi <> b) then
        begin
          tmp := arr[b];
          arr[b] := arr[hi];
          arr[hi] := tmp;
        end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] > arr[lo]) then
        begin
          tmp := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[lo]) then
            lo := x
          else
            if (arr[x] < arr[hi]) then
              hi := x;
        if (lo < a) then
        begin
          tmp := arr[a];
          arr[a] := arr[lo];
          arr[lo] := tmp;
        end;
        if (hi > b) then
        begin
          tmp := arr[b];
          arr[b] := arr[hi];
          arr[hi] := tmp;
        end;
      end;
    end;
  end;
end;

procedure WallSortTSA(var arr: TStringArray; order: TSortOrder);
var
  a, b, x, i, l, hi, lo, s: Integer;
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
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] < arr[lo]) then
        begin
          tmp := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[lo]) then
            lo := x
          else
            if (arr[x] > arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          tmp := arr[a];
          arr[a] := arr[lo];
          arr[lo] := tmp;
        end;
        if (hi <> b) then
        begin
          tmp := arr[b];
          arr[b] := arr[hi];
          arr[hi] := tmp;
        end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] > arr[lo]) then
        begin
          tmp := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := tmp;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[lo]) then
            lo := x
          else
            if (arr[x] < arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          tmp := arr[a];
          arr[a] := arr[lo];
          arr[lo] := tmp;
        end;
        if (hi <> b) then
        begin
          tmp := arr[b];
          arr[b] := arr[hi];
          arr[hi] := tmp;
        end;
      end;
    end;
  end;
end;

procedure WallSortTCA(var arr: TCharArray; order: TSortOrder);
var
  a, b, x, i, l, hi, lo, s: Integer;
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
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] < arr[lo]) then
        begin
          t := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := t;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] < arr[lo]) then
            lo := x
          else
            if (arr[x] > arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          t := arr[a];
          arr[a] := arr[lo];
          arr[lo] := t;
        end;
        if (hi <> b) then
        begin
          t := arr[b];
          arr[b] := arr[hi];
          arr[hi] := t;
        end;
      end;
      so_HighToLow:
      for i := 0 to s do
      begin
        lo := i;
        hi := ((l - 1) - i);
        a := lo;
        b := hi;
        if (arr[hi] > arr[lo]) then
        begin
          t := arr[hi];
          arr[hi] := arr[lo];
          arr[lo] := t;
        end;
        for x := (a + 1) to (b - 1) do
          if (arr[x] > arr[lo]) then
            lo := x
          else
            if (arr[x] < arr[hi]) then
              hi := x;
        if (lo <> a) then
        begin
          t := arr[a];
          arr[a] := arr[lo];
          arr[lo] := t;
        end;
        if (hi <> b) then
        begin
          t := arr[b];
          arr[b] := arr[hi];
          arr[hi] := t;
        end;
      end;
    end;
  end;
end;
