{==============================================================================]
 @action: Replaces all oldItem's in arr with newItem.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ReplaceTPA(var arr: TPointArray; oldItem, newItem: TPoint); callconv
var
  h, i: Integer;
begin
  if ((oldItem.X <> newItem.X) or (oldItem.Y <> newItem.Y)) then
  begin
    h := High(arr);
    for i := 0 to h do
      if ((arr[i].X = oldItem.X) and (arr[i].Y = oldItem.Y)) then
        arr[i] := newItem;
  end;
end;

// TIntegerArray
procedure ReplaceTIA(var arr: TIntegerArray; oldItem, newItem: Integer); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TExtendedArray
procedure ReplaceTEA(var arr: TExtendedArray; oldItem, newItem: Extended); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TStringArray
procedure ReplaceTSA(var arr: TStringArray; oldItem, newItem: string); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TCharArray
procedure ReplaceTCA(var arr: TCharArray; oldItem, newItem: Char); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TBoolArray
procedure ReplaceTBoA(var arr: TBoolArray; oldItem, newItem: Boolean); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TBoxArray
procedure ReplaceTBA(var arr: TBoxArray; oldItem, newItem: TBox); callconv
var
  h, i: Integer;
begin
  if ((oldItem.X1 <> newItem.X1) or (oldItem.Y1 <> newItem.Y1) or (oldItem.X2 <> newItem.X2) or (oldItem.Y2 <> newItem.Y2)) then
  begin
    h := High(arr);
    for i := 0 to h do
      if ((arr[i].X1 = oldItem.X1) and (arr[i].Y1 = oldItem.Y1) and (arr[i].X2 = oldItem.X2) and (arr[i].Y2 = oldItem.Y2)) then
        arr[i] := newItem;
  end;
end;

{==============================================================================]
 @action: Replaces all oldItems' in arr with newItem.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ReplaceExTPA(var arr: TPointArray; oldItems: TPointArray; newItem: TPoint); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if ((arr[a].X = oldItems[x].X) and (arr[a].Y = oldItems[x].Y)) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TIntegerArray
procedure ReplaceExTIA(var arr: TIntegerArray; oldItems: TIntegerArray; newItem: Integer); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TExtendedArray
procedure ReplaceExTEA(var arr: TExtendedArray; oldItems: TExtendedArray; newItem: Extended); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TStringArray
procedure ReplaceExTSA(var arr: TStringArray; oldItems: TStringArray; newItem: string); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TCharArray
procedure ReplaceExTCA(var arr: TCharArray; oldItems: TCharArray; newItem: Char); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TBoolArray
procedure ReplaceExTBoA(var arr: TBoolArray; oldItems: TBoolArray; newItem: Boolean); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TBoxArray
procedure ReplaceExTBA(var arr: TBoxArray; oldItems: TBoxArray; newItem: TBox); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
      for x := 0 to y do
        if ((arr[a].X1 = oldItems[x].X1) and (arr[a].Y1 = oldItems[x].Y1) and (arr[a].X2 = oldItems[x].X2) and (arr[a].Y2 = oldItems[x].Y2)) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// T2DPointArray
procedure ReplaceATPA(var arr: T2DPointArray; oldItem, newItem: TPoint); callconv
var
  h, i, a, b: Integer;
begin
  if ((oldItem.X <> newItem.X) and (oldItem.Y <> newItem.Y)) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if ((arr[i][a].X = oldItem.X) and (arr[i][a].Y = oldItem.Y)) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DIntegerArray
procedure ReplaceATIA(var arr: T2DIntegerArray; oldItem, newItem: Integer); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DExtendedArray
procedure ReplaceATEA(var arr: T2DExtendedArray; oldItem, newItem: Extended); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DStringArray
procedure ReplaceATSA(var arr: T2DStringArray; oldItem, newItem: string); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DCharArray
procedure ReplaceATCA(var arr: T2DCharArray; oldItem, newItem: Char); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DBoolArray
procedure ReplaceATBoA(var arr: T2DBoolArray; oldItem, newItem: Boolean); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DBoxArray
procedure ReplaceATBA(var arr: T2DBoxArray; oldItem, newItem: TBox); callconv
var
  h, i, a, b: Integer;
begin
  if ((oldItem.X1 <> newItem.X1) or (oldItem.Y1 <> newItem.Y1) or (oldItem.Y1 <> newItem.Y1) or (oldItem.Y1 <> newItem.Y1)) then
  begin
    h := High(arr);
    for i := 0 to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if ((arr[i][a].X1 = oldItem.X1) and (arr[i][a].Y1 = oldItem.Y1) and (arr[i][a].X2 = oldItem.X2) and (arr[i][a].Y2 = oldItem.Y2)) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DPointArray
procedure ReplaceExATPA(var arr: T2DPointArray; oldItems: TPointArray; newItem: TPoint); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if ((arr[a][i].X = oldItems[x].X) and (arr[a][i].Y = oldItems[x].Y)) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DIntegerArray
procedure ReplaceExATIA(var arr: T2DIntegerArray; oldItems: TIntegerArray; newItem: Integer); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DExtendedArray
procedure ReplaceExATEA(var arr: T2DExtendedArray; oldItems: TExtendedArray; newItem: Extended); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DStringArray
procedure ReplaceExATSA(var arr: T2DStringArray; oldItems: TStringArray; newItem: string); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DCharArray
procedure ReplaceExATCA(var arr: T2DCharArray; oldItems: TCharArray; newItem: Char); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DBoolArray
procedure ReplaceExATBoA(var arr: T2DBoolArray; oldItems: TBoolArray; newItem: Boolean); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DBoxArray
procedure ReplaceExATBA(var arr: T2DBoxArray; oldItems: TBoxArray; newItem: TBox); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    b := High(arr);
    for a := 0 to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if ((arr[a][i].X1 = oldItems[x].X1) and (arr[a][i].Y1 = oldItems[x].Y1) and (arr[a][i].X2 = oldItems[x].X2) and (arr[a][i].Y2 = oldItems[x].Y2)) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

{==============================================================================]
 @action: Replaces all oldItem's in arr with newItem. Starting from offset.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ReplaceOTPA(var arr: TPointArray; offset: Integer; oldItem, newItem: TPoint); callconv
var
  h, i: Integer;
begin
  if ((oldItem.X <> newItem.X) or (oldItem.Y <> newItem.Y)) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if ((arr[i].X = oldItem.X) and (arr[i].Y = oldItem.Y)) then
        arr[i] := newItem;
  end;
end;

// TIntegerArray
procedure ReplaceOTIA(var arr: TIntegerArray; offset: Integer; oldItem, newItem: Integer); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TExtendedArray
procedure ReplaceOTEA(var arr: TExtendedArray; offset: Integer; oldItem, newItem: Extended); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TStringArray
procedure ReplaceOTSA(var arr: TStringArray; offset: Integer; oldItem, newItem: string); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TCharArray
procedure ReplaceOTCA(var arr: TCharArray; offset: Integer; oldItem, newItem: Char); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TBoolArray
procedure ReplaceOTBoA(var arr: TBoolArray; offset: Integer; oldItem, newItem: Boolean); callconv
var
  h, i: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if (arr[i] = oldItem) then
        arr[i] := newItem;
  end;
end;

// TBoxArray
procedure ReplaceOTBA(var arr: TBoxArray; offset: Integer; oldItem, newItem: TBox); callconv
var
  h, i: Integer;
begin
  if ((oldItem.X1 <> newItem.X1) or (oldItem.Y1 <> newItem.Y1) or (oldItem.X2 <> newItem.X2) or (oldItem.Y2 <> newItem.Y2)) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
      if ((arr[i].X1 = oldItem.X1) and (arr[i].Y1 = oldItem.Y1) and (arr[i].X2 = oldItem.X2) and (arr[i].Y2 = oldItem.Y2)) then
        arr[i] := newItem;
  end;
end;

{==============================================================================]
 @action: Replaces all oldItems' in arr with newItem.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure ReplaceExOTPA(var arr: TPointArray; offset: Integer; oldItems: TPointArray; newItem: TPoint); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if ((arr[a].X = oldItems[x].X) and (arr[a].Y = oldItems[x].Y)) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TIntegerArray
procedure ReplaceExOTIA(var arr: TIntegerArray; offset: Integer; oldItems: TIntegerArray; newItem: Integer); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TExtendedArray
procedure ReplaceExOTEA(var arr: TExtendedArray; offset: Integer; oldItems: TExtendedArray; newItem: Extended); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TStringArray
procedure ReplaceExOTSA(var arr: TStringArray; offset: Integer; oldItems: TStringArray; newItem: string); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TCharArray
procedure ReplaceExOTCA(var arr: TCharArray; offset: Integer; oldItems: TCharArray; newItem: Char); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TBoolArray
procedure ReplaceExOTBoA(var arr: TBoolArray; offset: Integer; oldItems: TBoolArray; newItem: Boolean); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if (arr[a] = oldItems[x]) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// TBoxArray
procedure ReplaceExOTBA(var arr: TBoxArray; offset: Integer; oldItems: TBoxArray; newItem: TBox); callconv
var
  a, b, x, y: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
      for x := 0 to y do
        if ((arr[a].X1 = oldItems[x].X1) and (arr[a].Y1 = oldItems[x].Y1) and (arr[a].X2 = oldItems[x].X2) and (arr[a].Y2 = oldItems[x].Y2)) then
        begin
          arr[a] := newItem;
          Break;
        end;
  end;
end;

// T2DPointArray
procedure ReplaceOATPA(var arr: T2DPointArray; offset: Integer; oldItem, newItem: TPoint); callconv
var
  h, i, a, b: Integer;
begin
  if ((oldItem.X <> newItem.X) and (oldItem.Y <> newItem.Y)) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if ((arr[i][a].X = oldItem.X) and (arr[i][a].Y = oldItem.Y)) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DIntegerArray
procedure ReplaceOATIA(var arr: T2DIntegerArray; offset: Integer; oldItem, newItem: Integer); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DExtendedArray
procedure ReplaceOATEA(var arr: T2DExtendedArray; offset: Integer; oldItem, newItem: Extended); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DStringArray
procedure ReplaceOATSA(var arr: T2DStringArray; offset: Integer; oldItem, newItem: string); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DCharArray
procedure ReplaceOATCA(var arr: T2DCharArray; offset: Integer; oldItem, newItem: Char); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DBoolArray
procedure ReplaceOATBoA(var arr: T2DBoolArray; offset: Integer; oldItem, newItem: Boolean); callconv
var
  h, i, a, b: Integer;
begin
  if (oldItem <> newItem) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if (arr[i][a] = oldItem) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DBoxArray
procedure ReplaceOATBA(var arr: T2DBoxArray; offset: Integer; oldItem, newItem: TBox); callconv
var
  h, i, a, b: Integer;
begin
  if ((oldItem.X1 <> newItem.X1) or (oldItem.Y1 <> newItem.Y1) or (oldItem.Y1 <> newItem.Y1) or (oldItem.Y1 <> newItem.Y1)) then
  begin
    if (offset < 0) then
      offset := 0;
    h := High(arr);
    for i := offset to h do
    begin
      b := High(arr[i]);
      for a := 0 to b do
        if ((arr[i][a].X1 = oldItem.X1) and (arr[i][a].Y1 = oldItem.Y1) and (arr[i][a].X2 = oldItem.X2) and (arr[i][a].Y2 = oldItem.Y2)) then
          arr[i][a] := newItem;
    end;
  end;
end;

// T2DPointArray
procedure ReplaceExOATPA(var arr: T2DPointArray; offset: Integer; oldItems: TPointArray; newItem: TPoint); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if ((arr[a][i].X = oldItems[x].X) and (arr[a][i].Y = oldItems[x].Y)) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DIntegerArray
procedure ReplaceExOATIA(var arr: T2DIntegerArray; offset: Integer; oldItems: TIntegerArray; newItem: Integer); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DExtendedArray
procedure ReplaceExOATEA(var arr: T2DExtendedArray; offset: Integer; oldItems: TExtendedArray; newItem: Extended); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DStringArray
procedure ReplaceExOATSA(var arr: T2DStringArray; offset: Integer; oldItems: TStringArray; newItem: string); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DCharArray
procedure ReplaceExOATCA(var arr: T2DCharArray; offset: Integer; oldItems: TCharArray; newItem: Char); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DBoolArray
procedure ReplaceExOATBoA(var arr: T2DBoolArray; offset: Integer; oldItems: TBoolArray; newItem: Boolean); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if (arr[a][i] = oldItems[x]) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;

// T2DBoxArray
procedure ReplaceExOATBA(var arr: T2DBoxArray; offset: Integer; oldItems: TBoxArray; newItem: TBox); callconv
var
  a, b, x, y, h, i: Integer;
begin
  y := High(oldItems);
  if (y > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    b := High(arr);
    for a := offset to b do
    begin
      h := High(arr[a]);
      for i := 0 to h do
        for x := 0 to y do
          if ((arr[a][i].X1 = oldItems[x].X1) and (arr[a][i].Y1 = oldItems[x].Y1) and (arr[a][i].X2 = oldItems[x].X2) and (arr[a][i].Y2 = oldItems[x].Y2)) then
          begin
            arr[a][i] := newItem;
            Break;
          end;
    end;
  end;
end;
