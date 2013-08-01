{==============================================================================]
 @action: Outputs slice of arr from sFrom to sTo.
 @note: Supports reversed slicing, when sFrom value is higher than sTo!
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure SliceTPA(arr: TPointArray; sFrom, sTo: Integer; var output: TPointArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure SliceTIA(arr: TIntegerArray; sFrom, sTo: Integer; var output: TIntegerArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure SliceTEA(arr: TExtendedArray; sFrom, sTo: Integer; var output: TExtendedArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure SliceTSA(arr: TStringArray; sFrom, sTo: Integer; var output: TStringArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure SliceTCA(arr: TCharArray; sFrom, sTo: Integer; var output: TCharArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure SliceTBoA(arr: TBoolArray; sFrom, sTo: Integer; var output: TBoolArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure SliceTBA(arr: TBoxArray; sFrom, sTo: Integer; var output: TBoxArray); callconv
var
  i, l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
          output[(i - sFrom)] := arr[i];
      end else
        for i := sFrom downto sTo do
          output[(sFrom - i)] := arr[i];
    end else
    begin
      SetLength(output, 1);
      output[0] := arr[sFrom];
    end;
  end else
    SetLength(output, 0);
end;

// T2DPointArray
procedure SliceATPA(arr: T2DPointArray; sFrom, sTo: Integer; var output: T2DPointArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DIntegerArray
procedure SliceATIA(arr: T2DIntegerArray; sFrom, sTo: Integer; var output: T2DIntegerArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DExtendedArray
procedure SliceATEA(arr: T2DExtendedArray; sFrom, sTo: Integer; var output: T2DExtendedArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DStringArray
procedure SliceATSA(arr: T2DStringArray; sFrom, sTo: Integer; var output: T2DStringArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DCharArray
procedure SliceATCA(arr: T2DCharArray; sFrom, sTo: Integer; var output: T2DCharArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DBoolArray
procedure SliceATBoA(arr: T2DBoolArray; sFrom, sTo: Integer; var output: T2DBoolArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;

// T2DBoxArray
procedure SliceATBA(arr: T2DBoxArray; sFrom, sTo: Integer; var output: T2DBoxArray); callconv
var
  i, l, a, b: Integer;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    if (sFrom < 0) then
      sFrom := 0;
    if (sFrom > (l - 1)) then
      sFrom := (l - 1);
    if (sTo < 0) then
      sTo := 0;
    if (sTo > (l - 1)) then
      sTo := (l - 1);
    if (sFrom <> sTo) then
    begin
      SetLength(output, Integer(Abs(sFrom - sTo) + 1));
      if (sFrom < sTo) then
      begin
        for i := sFrom to sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(i - sFrom)], (b + 1));
          for a := 0 to b do
            output[(i - sFrom)][a] := arr[i][a];
        end;
      end else
        for i := sFrom downto sTo do
        begin
          b := High(arr[i]);
          SetLength(output[(sFrom - i)], (b + 1));
          for a := 0 to b do
            output[(sFrom - i)][a] := arr[i][a];
        end;
    end else
    begin
      SetLength(output, 1);
      b := High(arr[sFrom]);
      SetLength(output[0], (b + 1));
      for a := 0 to b do
        output[0][a] := arr[sFrom][a];
    end;
  end else
    SetLength(output, 0);
end;
