procedure CoctailSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  i, t: Integer;
  s: Boolean;
begin
  case order of
    so_LowToHigh:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
    so_HighToLow:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
  end;
end;

procedure CoctailSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  i: Integer;
  s: Boolean;
  t: Extended;
begin
  case order of
    so_LowToHigh:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
    so_HighToLow:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
  end;
end;

procedure CoctailSortTSA(var arr: TStringArray; order: TSortOrder);
var
  i: Integer;
  s: Boolean;
  t: string;
begin
  case order of
    so_LowToHigh:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
    so_HighToLow:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
  end;
end;

procedure CoctailSortTCA(var arr: TCharArray; order: TSortOrder);
var
  i: Integer;
  s: Boolean;
  t: Char;
begin
  case order of
    so_LowToHigh:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] > arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
    so_HighToLow:
    repeat
      s := False;
      for i := 0 to (Length(arr) - 2) do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
      if not s then
        Break;
      s := False;
      for i := (Length(arr) - 2) downto 0 do
        if (arr[i] < arr[(i + 1)]) then
        begin
          t := arr[i];
          arr[i] := arr[(i + 1)];
          arr[(i + 1)] := t;
          s := True;
        end;
    until not s;
  end;
end;