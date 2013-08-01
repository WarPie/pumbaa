{==============================================================================]
 @action: Outputs array of items from arr by indexes (IDs).
 @note: Ignores invalid ID's (doesn't include those to result, they will be left out).
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure GetTPA(arr: TPointArray; IDs: TIntegerArray; var output: TPointArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TIntegerArray
procedure GetTIA(arr: TIntegerArray; IDs: TIntegerArray; var output: TIntegerArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TExtendedArray
procedure GetTEA(arr: TExtendedArray; IDs: TIntegerArray; var output: TExtendedArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TStringArray
procedure GetTSA(arr: TStringArray; IDs: TIntegerArray; var output: TStringArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TCharArray
procedure GetTCA(arr: TCharArray; IDs: TIntegerArray; var output: TCharArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TBoolArray
procedure GetTBoA(arr: TBoolArray; IDs: TIntegerArray; var output: TBoolArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// TBoxArray
procedure GetTBA(arr: TBoxArray; IDs: TIntegerArray; var output: TBoxArray); callconv
var
  i, h, h2, r: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DPointArray
procedure GetATPA(arr: T2DPointArray; IDs: TIntegerArray; var output: T2DPointArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DIntegerArray
procedure GetATIA(arr: T2DIntegerArray; IDs: TIntegerArray; var output: T2DIntegerArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DExtendedArray
procedure GetATEA(arr: T2DExtendedArray; IDs: TIntegerArray; var output: T2DExtendedArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DStringArray
procedure GetATSA(arr: T2DStringArray; IDs: TIntegerArray; var output: T2DStringArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DCharArray
procedure GetATCA(arr: T2DCharArray; IDs: TIntegerArray; var output: T2DCharArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DBoolArray
procedure GetATBoA(arr: T2DBoolArray; IDs: TIntegerArray; var output: T2DBoolArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;

// T2DBoxArray
procedure GetATBA(arr: T2DBoxArray; IDs: TIntegerArray; var output: T2DBoxArray); callconv
var
  i, h, h2, r, a, b: Integer;
begin
  h := High(arr);
  h2 := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h2 do
      if ((IDs[i] <= h) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
      end;
  end;
  SetLength(output, r);
end;
