procedure CombSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  i, gap, t: Integer;
  swapped: Boolean;
begin
  gap := Length(arr);
  swapped := true;
  case order of
    so_LowToHigh:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] > arr[(i + gap)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := t;
          swapped := True;
        end;
    end;
    so_HighToLow:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] < arr[(i + gap)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := t;
          swapped := True;
        end;
    end;
  end;
end;

procedure CombSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  i, gap: Integer;
  swapped: Boolean;
  t: Extended;
begin
  gap := Length(arr);
  swapped := true;
  case order of
    so_LowToHigh:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] > arr[(i + gap)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := t;
          swapped := True;
        end;
    end;
    so_HighToLow:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] < arr[(i + gap)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := t;
          swapped := True;
        end;
    end;
  end;
end;

procedure CombSortTSA(var arr: TStringArray; order: TSortOrder);
var
  i, gap: Integer;
  swapped: Boolean;
  t: string;
begin
  gap := Length(arr);
  swapped := true;
  case order of
    so_LowToHigh:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] > arr[(i + gap)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := t;
          swapped := True;
        end;
    end;
    so_HighToLow:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] < arr[(i + gap)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := t;
          swapped := True;
        end;
    end;
  end;
end;

procedure CombSortTCA(var arr: TCharArray; order: TSortOrder);
var
  i, gap: Integer;
  swapped: Boolean;
  temp: Char;
begin
  gap := Length(arr);
  swapped := true;
  case order of
    so_LowToHigh:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] > arr[(i + gap)]) then
        begin
          temp := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := temp;
          swapped := True;
        end;
    end;
    so_HighToLow:
    while ((gap > 1) or swapped) do
    begin
      gap := Trunc(gap / 1.3);
      if (gap < 1) then
        gap := 1;
      swapped := False;
      for i := 0 to (High(arr) - gap) do
        if (arr[i] < arr[(i + gap)]) then
        begin
          temp := arr[i];
          arr[i] := arr[(i + gap)];
          arr[(i + gap)] := temp;
          swapped := True;
        end;
    end;
  end;
end;