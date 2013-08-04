{==============================================================================]
 @action: Breaks arr to parts (arr => 2D arr). Contains 3 methods:
          -pm_BySize: (Breaks arr to 2D arr by size of the parts) [x = size]
          -pm_ByAmount: (Breaks arr to 2D arr by amount of the parts) [x = amount]
          -pm_ByItem: (Breaks arr to 2D arr by item values) [ignores x]
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := ((arr[i].X = output[i2][0].X) and (arr[i].Y = output[i2][0].Y));
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := (arr[i] = output[i2][0]);
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := (arr[i] = output[i2][0]);
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := (arr[i] = output[i2][0]);
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := (arr[i] = output[i2][0]);
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := (arr[i] = output[i2][0]);
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
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
  if ((h > -1) and ((method = pm_ByItem) or (x > 0))) then
  begin
    f := False;
    if not (method = pm_ByItem) then
    begin
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
    begin
      SetLength(output, 0);
      for i := 0 to h do
      begin
        z := High(output);
        f := False;
        for i2 := 0 to z do
        begin
          h2 := High(output[i2]);
          f := ((arr[i].X1 = output[i2][0].X1) and (arr[i].Y1 = output[i2][0].Y1) and (arr[i].X2 = output[i2][0].X2) and (arr[i].Y2 = output[i2][0].Y2));
          if f then
          begin
            l := Length(output[i2]);
            SetLength(output[i2], (l + 1));
            output[i2][l] := arr[i];
            Break;
          end;
        end;
        if not f then
        begin
          SetLength(output, (z + 2));
          SetLength(output[(z + 1)], 1);
          output[(z + 1)][0] := arr[i];
        end;
      end;
    end;
  end else
    SetLength(output, 0);
end;

// Commands below for overloading purposes.

procedure PartitionTPA2(arr: TPointArray; method: TPartitionMethod; var output: T2DPointArray); callconv
begin
  PartitionTPA(arr, method, 1, output);
end;

procedure PartitionTIA2(arr: TIntegerArray; method: TPartitionMethod; var output: T2DIntegerArray); callconv
begin
  PartitionTIA(arr, method, 1, output);
end;

procedure PartitionTEA2(arr: TExtendedArray; method: TPartitionMethod; var output: T2DExtendedArray); callconv
begin
  PartitionTEA(arr, method, 1, output);
end;

procedure PartitionTSA2(arr: TStringArray; method: TPartitionMethod; var output: T2DStringArray); callconv
begin
  PartitionTSA(arr, method, 1, output);
end;

procedure PartitionTCA2(arr: TCharArray; method: TPartitionMethod; var output: T2DCharArray); callconv
begin
  PartitionTCA(arr, method, 1, output);
end;

procedure PartitionTBoA2(arr: TBoolArray; method: TPartitionMethod; var output: T2DBoolArray); callconv
begin
  PartitionTBoA(arr, method, 1, output);
end;

procedure PartitionTBA2(arr: TBoxArray; method: TPartitionMethod; var output: T2DBoxArray); callconv
begin
  PartitionTBA(arr, method, 1, output);
end;

procedure PartitionTPA3(arr: TPointArray; var output: T2DPointArray); callconv
begin
  PartitionTPA(arr, pm_ByItem, 1, output);
end;

procedure PartitionTIA3(arr: TIntegerArray; var output: T2DIntegerArray); callconv
begin
  PartitionTIA(arr, pm_ByItem, 1, output);
end;

procedure PartitionTEA3(arr: TExtendedArray; var output: T2DExtendedArray); callconv
begin
  PartitionTEA(arr, pm_ByItem, 1, output);
end;

procedure PartitionTSA3(arr: TStringArray; var output: T2DStringArray); callconv
begin
  PartitionTSA(arr, pm_ByItem, 1, output);
end;

procedure PartitionTCA3(arr: TCharArray; var output: T2DCharArray); callconv
begin
  PartitionTCA(arr, pm_ByItem, 1, output);
end;

procedure PartitionTBoA3(arr: TBoolArray; var output: T2DBoolArray); callconv
begin
  PartitionTBoA(arr, pm_ByItem, 1, output);
end;

procedure PartitionTBA3(arr: TBoxArray; var output: T2DBoxArray); callconv
begin
  PartitionTBA(arr, pm_ByItem, 1, output);
end;
