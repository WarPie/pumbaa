{==============================================================================]
 @action: Outputs all indexes from arr where the points are unique compared to other points in array.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure UniquesTPA(arr: TPointArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and ((arr[x].X = arr[y].X) and (arr[x].Y = arr[y].Y)));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;

// TIntegerArray
procedure UniquesTIA(arr: TIntegerArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and (arr[x] = arr[y]));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;

// TExtendedArray
procedure UniquesTEA(arr: TExtendedArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and (arr[x] = arr[y]));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;

// TStringArray
procedure UniquesTSA(arr: TStringArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and (arr[x] = arr[y]));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;

// TCharArray
procedure UniquesTCA(arr: TCharArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and (arr[x] = arr[y]));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;

// TBoolArray
procedure UniquesTBoA(arr: TBoolArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and (arr[x] = arr[y]));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;

// TBoxArray
procedure UniquesTBA(arr: TBoxArray; var output: TIntegerArray); callconv
var
  h, r, x, y: Integer;
  match: Boolean;
begin
  h := High(arr);
  SetLength(output, (h + 1));
  if (h > -1) then
    if (h > 0) then
    begin
      r := 0;
      for x := 0 to h do
      begin
        for y := 0 to h do
        begin
          match := ((y <> x) and ((arr[x].X1 = arr[y].X1) and (arr[x].Y1 = arr[y].Y1) and (arr[x].X2 = arr[y].X2) and (arr[x].Y2 = arr[y].Y2)));
          if match then
            Break;
        end;
        if not match then
        begin
          output[r] := x;
          Inc(r);
        end;
      end;
      SetLength(output, r);
    end else
      output[0] := 0;
end;
