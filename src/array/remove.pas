{==============================================================================]
 @action: Removes item from arr.
 @note: Removes only the first one from left.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveTPA(var arr: TPointArray; item: TPoint); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or ((arr[i].X <> item.X) or (arr[i].Y <> item.Y))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveTIA(var arr: TIntegerArray; item: Integer); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveTEA(var arr: TExtendedArray; item: Extended); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveTSA(var arr: TStringArray; item: string); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveTCA(var arr: TCharArray; item: Char); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveTBoA(var arr: TBoolArray; item: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveTBA(var arr: TBoxArray; item: TBox); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes item from arr. All of em, if all is set as True!
 @note: When all is set as False, this procedure removes only the first item, from left.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveExTPA(var arr: TPointArray; item: TPoint; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or ((arr[i].X <> item.X) or (arr[i].Y <> item.Y))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveExTIA(var arr: TIntegerArray; item: Integer; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveExTEA(var arr: TExtendedArray; item: Extended; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveExTSA(var arr: TStringArray; item: string; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveExTCA(var arr: TCharArray; item: Char; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveExTBoA(var arr: TBoolArray; item: Boolean; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveExTBA(var arr: TBoxArray; item: TBox; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    s := False;
    r := 0;
    for i := 0 to h do
      if (s or ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes first item on the left by items from arr.
 @note: Removes only first item.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveMultiTPA(var arr: TPointArray; items: TPointArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := ((arr[i].X = items[a].X) and (arr[i].Y = items[a].Y));
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveMultiTIA(var arr: TIntegerArray; items: TIntegerArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveMultiTEA(var arr: TExtendedArray; items: TExtendedArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveMultiTSA(var arr: TStringArray; items: TStringArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveMultiTCA(var arr: TCharArray; items: TCharArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveMultiTBoA(var arr: TBoolArray; items: TBoolArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveMultiTBA(var arr: TBoxArray; items: TBoxArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    for i := 0 to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := ((arr[i].X1 = items[a].X1) and (arr[i].Y1 = items[a].Y1) and (arr[i].X2 = items[a].X2) and (arr[i].Y2 = items[a].Y2));
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes items from arr. All of em, if all is set as True!
 @note: When all is set as False, this procedure removes only the first item, from left.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveMultiExTPA(var arr: TPointArray; items: TPointArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := ((arr[i].X = items[a].X) and (arr[i].Y = items[a].Y));
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveMultiExTIA(var arr: TIntegerArray; items: TIntegerArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveMultiExTEA(var arr: TExtendedArray; items: TExtendedArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveMultiExTSA(var arr: TStringArray; items: TStringArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveMultiExTCA(var arr: TCharArray; items: TCharArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveMultiExTBoA(var arr: TBoolArray; items: TBoolArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveMultiExTBA(var arr: TBoxArray; items: TBoxArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    r := 0;
    skip := False;
    for i := 0 to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := ((arr[i].X1 = items[a].X1) and (arr[i].Y1 = items[a].Y1) and (arr[i].X2 = items[a].X2) and (arr[i].Y2 = items[a].Y2));
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes item from arr. Starting from offset.
 @note: Removes only the first one from left.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveOTPA(var arr: TPointArray; offset: Integer; item: TPoint); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or ((arr[i].X <> item.X) or (arr[i].Y <> item.Y))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveOTIA(var arr: TIntegerArray; offset: Integer; item: Integer); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveOTEA(var arr: TExtendedArray; offset: Integer; item: Extended); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveOTSA(var arr: TStringArray; offset: Integer; item: string); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveOTCA(var arr: TCharArray; offset: Integer; item: Char); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveOTBoA(var arr: TBoolArray; offset: Integer; item: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveOTBA(var arr: TBoxArray; offset: Integer; item: TBox); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := True;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes item from arr. All of em, if all is set as True!
 @note: When all is set as False, this procedure removes only the first item, from left.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveExOTPA(var arr: TPointArray; offset: Integer; item: TPoint; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or ((arr[i].X <> item.X) or (arr[i].Y <> item.Y))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveExOTIA(var arr: TIntegerArray; offset: Integer; item: Integer; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveExOTEA(var arr: TExtendedArray; offset: Integer; item: Extended; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveExOTSA(var arr: TStringArray; offset: Integer; item: string; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveExOTCA(var arr: TCharArray; offset: Integer; item: Char; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveExOTBoA(var arr: TBoolArray; offset: Integer; item: Boolean; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or (arr[i] <> item)) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveExOTBA(var arr: TBoxArray; offset: Integer; item: TBox; all: Boolean); callconv
var
  h, i, r: Integer;
  s: Boolean;
begin
  h := High(arr);
  if (h > -1) then
  begin
    if (offset < 0) then
      offset := 0;
    s := False;
    r := 0;
    for i := offset to h do
      if (s or ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2))) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        s := not all;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes first item on the left by items from arr. Starting from offset.
 @note: Removes only first item.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveMultiOTPA(var arr: TPointArray; offset: Integer; items: TPointArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := ((arr[i].X = items[a].X) and (arr[i].Y = items[a].Y));
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveMultiOTIA(var arr: TIntegerArray; offset: Integer; items: TIntegerArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveMultiOTEA(var arr: TExtendedArray; offset: Integer; items: TExtendedArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveMultiOTSA(var arr: TStringArray; offset: Integer; items: TStringArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveMultiOTCA(var arr: TCharArray; offset: Integer; items: TCharArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveMultiOTBoA(var arr: TBoolArray; offset: Integer; items: TBoolArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveMultiOTBA(var arr: TBoxArray; offset: Integer; items: TBoxArray); callconv
var
  a, b, h, i, r: Integer;
  remove: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    for i := offset to h do
    begin
      if (i = r) then
      for a := 0 to b do
      begin
        remove := ((arr[i].X1 = items[a].X1) and (arr[i].Y1 = items[a].Y1) and (arr[i].X2 = items[a].X2) and (arr[i].Y2 = items[a].Y2));
        if remove then
          Break;
      end;
      if ((i > r) or not remove) then
      begin
        arr[r] := arr[i];
        Inc(r);
      end;
    end;
    SetLength(arr, r);
  end;
end;

{==============================================================================]
 @action: Removes items from arr. All of em, if all is set as True! Starting from offset.
 @note: When all is set as False, this procedure removes only the first item, from left.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RemoveMultiExOTPA(var arr: TPointArray; offset: Integer; items: TPointArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := ((arr[i].X = items[a].X) and (arr[i].Y = items[a].Y));
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TIntegerArray
procedure RemoveMultiExOTIA(var arr: TIntegerArray; offset: Integer; items: TIntegerArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TExtendedArray
procedure RemoveMultiExOTEA(var arr: TExtendedArray; offset: Integer; items: TExtendedArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TStringArray
procedure RemoveMultiExOTSA(var arr: TStringArray; offset: Integer; items: TStringArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TCharArray
procedure RemoveMultiExOTCA(var arr: TCharArray; offset: Integer; items: TCharArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TBoolArray
procedure RemoveMultiExOTBoA(var arr: TBoolArray; offset: Integer; items: TBoolArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := (arr[i] = items[a]);
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;

// TBoxArray
procedure RemoveMultiExOTBA(var arr: TBoxArray; offset: Integer; items: TBoxArray; all: Boolean); callconv
var
  a, b, h, i, r: Integer;
  remove, skip: Boolean;
begin
  h := High(arr);
  b := High(items);
  if ((h > -1) and (b > -1)) then
  begin
    if (offset < 0) then
      offset := 0;
    r := 0;
    skip := False;
    for i := offset to h do
    begin
      if not skip then
      for a := 0 to b do
      begin
        remove := ((arr[i].X1 = items[a].X1) and (arr[i].Y1 = items[a].Y1) and (arr[i].X2 = items[a].X2) and (arr[i].Y2 = items[a].Y2));
        if remove then
        begin
          skip := not all;
          Break;
        end;
      end;
      if not remove then
      begin
        arr[r] := arr[i];
        Inc(r);
      end else
        remove := not skip;
    end;
    SetLength(arr, r);
  end;
end;
