{==============================================================================]
 @action: Outputs items with indexes (IDs) from arr and deletes while picking em.
 @note: Ignores invalid ID's (doesn't include those to output, they will be left out).
        DYNAMIC - you might need to set indexes in reversed order, in order to get em correctly!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PickTPA(var arr: TPointArray; IDs: TIntegerArray; var output: TPointArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure PickTIA(var arr: TIntegerArray; IDs: TIntegerArray; var output: TIntegerArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure PickTEA(var arr: TExtendedArray; IDs: TIntegerArray; var output: TExtendedArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure PickTSA(var arr: TStringArray; IDs: TIntegerArray; var output: TStringArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure PickTCA(var arr: TCharArray; IDs: TIntegerArray; var output: TCharArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure PickTBoA(var arr: TBoolArray; IDs: TIntegerArray; var output: TBoolArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure PickTBA(var arr: TBoxArray; IDs: TIntegerArray; var output: TBoxArray); callconv
var
  h, h2, t, i, r: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        output[r] := arr[IDs[i]];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
          arr[t] := arr[(t + 1)];
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DPointArray
procedure PickATPA(var arr: T2DPointArray; IDs: TIntegerArray; var output: T2DPointArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DIntegerArray
procedure PickATIA(var arr: T2DIntegerArray; IDs: TIntegerArray; var output: T2DIntegerArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DExtendedArray
procedure PickATEA(var arr: T2DExtendedArray; IDs: TIntegerArray; var output: T2DExtendedArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DStringArray
procedure PickATSA(var arr: T2DStringArray; IDs: TIntegerArray; var output: T2DStringArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DCharArray
procedure PickATCA(var arr: T2DCharArray; IDs: TIntegerArray; var output: T2DCharArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DBoolArray
procedure PickATBoA(var arr: T2DBoolArray; IDs: TIntegerArray; var output: T2DBoolArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;

// T2DBoxArray
procedure PickATBA(var arr: T2DBoxArray; IDs: TIntegerArray; var output: T2DBoxArray); callconv
var
  h, h2, t, i, r, a, b: Integer;
begin
  h2 := High(arr);
  h := High(IDs);
  if ((h2 > -1) and (h > -1)) then
  begin
    r := 0;
    SetLength(output, (h2 + 1));
    for i := 0 to h do
      if ((IDs[i] <= h2) and (IDs[i] > -1)) then
      begin
        b := High(arr[IDs[i]]);
        SetLength(output[r], (b + 1));
        for a := 0 to b do
          output[r][a] := arr[IDs[i]][a];
        Inc(r);
        for t := IDs[i] to (h2 - 1) do
        begin
          b := High(arr[(t + 1)]);
          SetLength(arr[t], (b + 1));
          for a := 0 to b do
            arr[t][a] := arr[(t + 1)][a];
        end;
        SetLength(arr, h2);
        Dec(h2);
        if (h2 < 0) then
          Break;
      end;
    SetLength(output, r);
  end else
    SetLength(output, 0);
end;
