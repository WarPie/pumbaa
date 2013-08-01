procedure CoctailSort2TIA(var arr: TIntegerArray; order: TSortOrder);
var
  b, e, t: Integer;
  i: Integer;
  s: Boolean;
begin
  b := -1;
  e := (Length(arr) - 2);
  case order of
    so_LowToHigh:
    repeat
      s := False;
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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

procedure CoctailSort2TEA(var arr: TExtendedArray; order: TSortOrder);
var
  b, e, i: Integer;
  s: Boolean;
  t: Extended;
begin
  b := -1;
  e := (Length(arr) - 2);
  case order of
    so_LowToHigh:
    repeat
      s := False;
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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

procedure CoctailSort2TSA(var arr: TStringArray; order: TSortOrder);
var
  b, e, i: Integer;
  s: Boolean;
  t: string;
begin
  b := -1;
  e := (Length(arr) - 2);
  case order of
    so_LowToHigh:
    repeat
      s := False;
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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

procedure CoctailSort2TCA(var arr: TCharArray; order: TSortOrder);
var
  b, e, i: Integer;
  s: Boolean;
  t: Char;
begin
  b := -1;
  e := (Length(arr) - 2);
  case order of
    so_LowToHigh:
    repeat
      s := False;
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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
      Inc(b);
      for i := b to e do
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
      Dec(e);
      for i := e downto b do
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