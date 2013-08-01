{==============================================================================]
 @action: Moves item from oldIndex to newIndex in arr.
 @note: Returns true, if movement was succesfully done!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function MoveTPA(var arr: TPointArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i: Integer;
  t: TPoint;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// TIntegerArray
function MoveTIA(var arr: TIntegerArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, t: Integer;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// TExtendedArray
function MoveTEA(var arr: TExtendedArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i: Integer;
  t: Extended;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// TStringArray
function MoveTSA(var arr: TStringArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i: Integer;
  t: string;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// TCharArray
function MoveTCA(var arr: TCharArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i: Integer;
  t: Char;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// TBoolArray
function MoveTBoA(var arr: TBoolArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i: Integer;
  t: Boolean;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// TBoxArray
function MoveTBA(var arr: TBoxArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i: Integer;
  t: TBox;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    t := arr[oldIndex];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
        arr[i] := arr[(i - 1)];
    end else
      for i := oldIndex to (newIndex - 1) do
        arr[i] := arr[(i + 1)];
    arr[newIndex] := t;
  end;
end;

// T2DPointArray
function MoveATPA(var arr: T2DPointArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TPointArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;

// T2DIntegerArray
function MoveATIA(var arr: T2DIntegerArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TIntegerArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;

// T2DExtendedArray
function MoveATEA(var arr: T2DExtendedArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TExtendedArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;

// T2DStringArray
function MoveATSA(var arr: T2DStringArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TStringArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;

// T2DCharArray
function MoveATCA(var arr: T2DCharArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TCharArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;

// T2DBoolArray
function MoveATBoA(var arr: T2DBoolArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TBoolArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;

// T2DBoxArray
function MoveATBA(var arr: T2DBoxArray; oldIndex, newIndex: Integer): Boolean; callconv
var
  h, i, a, b: Integer;
  t: TBoxArray;
begin
  h := High(arr);
  Result := ((h > 0) and (oldIndex <> newIndex) and InRange(oldIndex, 0, h) and InRange(newIndex, 0, h));
  if Result then
  begin
    b := High(arr[oldIndex]);
    SetLength(t, (b + 1));
    for a := 0 to b do
      t[a] := arr[oldIndex][a];
    if (oldIndex > newIndex) then
    begin
      for i := oldIndex downto (newIndex + 1) do
      begin
        b := High(arr[(i - 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i - 1)][a];
      end;
    end else
      for i := oldIndex to (newIndex - 1) do
      begin
        b := High(arr[(i + 1)]);
        SetLength(arr[i], (b + 1));
        for a := 0 to b do
          arr[i][a] := arr[(i + 1)][a];
      end;
    b := High(t);
    SetLength(arr[newIndex], (b + 1));
    for a := 0 to b do
      arr[newIndex][a] := t[a];
  end;
end;
