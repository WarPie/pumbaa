{==============================================================================]
 @action: Breaks arr to parts (arr => 2D arr). Contains 2 methods:
          -pm_BySize: (Breaks arr to 2D arr by size of the parts) [x = size]
          -pm_ByAmount: (Breaks arr to 2D arr by amount of the parts) [x = amount]
 @note: Based on TPartitionMethod - can be found from global.pas file.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure PartitionTPA(arr: TPointArray; method: TPartitionMethod; x: Integer; var output: T2DPointArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure PartitionTIA(arr: TIntegerArray; method: TPartitionMethod; x: Integer; var output: T2DIntegerArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure PartitionTEA(arr: TExtendedArray; method: TPartitionMethod; x: Integer; var output: T2DExtendedArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure PartitionTSA(arr: TStringArray; method: TPartitionMethod; x: Integer; var output: T2DStringArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure PartitionTCA(arr: TCharArray; method: TPartitionMethod; x: Integer; var output: T2DCharArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure PartitionTBoA(arr: TBoolArray; method: TPartitionMethod; x: Integer; var output: T2DBoolArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure PartitionTBA(arr: TBoxArray; method: TPartitionMethod; x: Integer; var output: T2DBoxArray); callconv
var
  a, e, h, h2, i, i2, p, z, l: Integer;
  f: Boolean;
begin
  h := High(arr);
  if ((h > -1) and (x > 0)) then
  begin
    f := False;
    a := 0;
    case method of
      pm_BySize:
      if (x <= h) then
      begin
        Inc(h);
        p := (h div x);
        if ((p * x) < h) then
          Inc(p);
        SetLength(output, p);
        for i := 0 to (p - 1) do
          for i2 := 0 to (x - 1) do
          begin
            SetLength(output[i], x);
            if (a < h) then
            begin
              output[i][i2] := arr[a];
              Inc(a);
            end else
            begin
              SetLength(output[i], i2);
              Exit;
            end;
          end;
      end else
        f := True;
      pm_ByAmount:
      if (h > -1) then
      begin
        if (h < (x - 1)) then
          x := (h + 1);
        p := Floor((h + 1) / x);
        if (p = 0) then
          p := 1;
        e := ((h + 1) - (p * x));
        if (e >= (h + 1)) then
          e := 0;
        SetLength(output, x);
        for i := 0 to (x - 1) do
        begin
          if ((e >= (i + 1)) and (e > 0)) then
            SetLength(output[i], (p + 1))
          else
            if (i <= h) then
              SetLength(output[i], p);
          h2 := High(output[i]);
          for i2 := 0 to h2 do
          begin
            output[i][i2] := arr[a];
            Inc(a);
          end;
        end;
      end else
        f := True;
    end;
    if f then
    begin
      SetLength(output, 1);
      l := Length(arr);
      SetLength(output[0], l);
      for z := 0 to (l - 1) do
        output[0][z] := arr[z];
    end;
  end else
    SetLength(output, 0);
end;
