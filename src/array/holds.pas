{==============================================================================]
 @action: Returns true if arr contains (holds) WHOLE chain of items in it.
 @note: Starting from any index and ending to any index!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function HoldsTPA(arr, chain: TPointArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := ((arr[(a + x)].X <> chain[x].X) or (arr[(a + x)].Y <> chain[x].Y));
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// TIntegerArray
function HoldsTIA(arr, chain: TIntegerArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// TExtendedArray
function HoldsTEA(arr, chain: TExtendedArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// TStringArray
function HoldsTSA(arr, chain: TStringArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// TCharArray
function HoldsTCA(arr, chain: TCharArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// TBoolArray
function HoldsTBoA(arr, chain: TBoolArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// TBoxArray
function HoldsTBA(arr, chain: TBoxArray): Boolean; callconv
var
  a, b, x, y, z: Integer;
  next: Boolean;
begin
  z := High(arr);
  y := High(chain);
  if ((z >= y) and (z > -1) and (y > -1)) then
  begin
    b := (z - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := ((arr[(a + x)].X1 <> chain[x].X1) or (arr[(a + x)].Y1 <> chain[x].Y1) or (arr[(a + x)].X2 <> chain[x].X2) or (arr[(a + x)].Y2 <> chain[x].Y2));
        if next then
          Break;
      end;
      if not next then
        Break;
    end;
    Result := not next;
  end else
    Result := False;
end;

// T2DPointArray
function HoldsATPA(arr: T2DPointArray; chain: TPointArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := ((arr[i][(a + x)].X <> chain[x].X) or (arr[i][(a + x)].Y <> chain[x].Y));
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DIntegerArray
function HoldsATIA(arr: T2DIntegerArray; chain: TIntegerArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[i][(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DExtendedArray
function HoldsATEA(arr: T2DExtendedArray; chain: TExtendedArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[i][(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DStringArray
function HoldsATSA(arr: T2DStringArray; chain: TStringArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[i][(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DCharArray
function HoldsATCA(arr: T2DCharArray; chain: TCharArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[i][(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DBoolArray
function HoldsATBoA(arr: T2DBoolArray; chain: TBoolArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := (arr[i][(a + x)] <> chain[x]);
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;

// T2DBoxArray
function HoldsATBA(arr: T2DBoxArray; chain: TBoxArray): Boolean; callconv
var
  a, b, x, y, i, l: Integer;
  next: Boolean;
begin
  l := Length(arr);
  y := High(chain);
  if ((l > 0) and (y > -1)) then
  for i := 0 to (l - 1) do
  begin
    b := (High(arr[i]) - y);
    for a := 0 to b do
    begin
      for x := 0 to y do
      begin
        next := ((arr[i][(a + x)].X1 <> chain[x].X1) or (arr[i][(a + x)].Y1 <> chain[x].Y1) or (arr[i][(a + x)].X2 <> chain[x].X2) or (arr[i][(a + x)].Y2 <> chain[x].Y2));
        if next then
          Break;
      end;
      Result := not next;
      if Result then
        Exit;
    end;
  end;
  Result := False;
end;
