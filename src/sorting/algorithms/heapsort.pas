procedure HeapSortTIA(var arr: TIntegerArray; order: TSortOrder);
var
  a, b, r, c, l, tmp: Integer;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    a := ((l - 1) div 2);
    b := (l - 1);
    case order of
      so_LowToHigh:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          tmp := arr[b];
          arr[b] := arr[0];
          arr[0] := tmp;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
        end;
      end;
      so_HighToLow:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          tmp := arr[b];
          arr[b] := arr[0];
          arr[0] := tmp;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
        end;
      end;
    end;
  end;
end;

procedure HeapSortTEA(var arr: TExtendedArray; order: TSortOrder);
var
  a, b, r, c, l: Integer;
  tmp: Extended;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    a := ((l - 1) div 2);
    b := (l - 1);
    case order of
      so_LowToHigh:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          tmp := arr[b];
          arr[b] := arr[0];
          arr[0] := tmp;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
        end;
      end;
      so_HighToLow:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          tmp := arr[b];
          arr[b] := arr[0];
          arr[0] := tmp;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
        end;
      end;
    end;
  end;
end;

procedure HeapSortTSA(var arr: TStringArray; order: TSortOrder);
var
  a, b, r, c, l: Integer;
  tmp: string;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    a := ((l - 1) div 2);
    b := (l - 1);
    case order of
      so_LowToHigh:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          tmp := arr[b];
          arr[b] := arr[0];
          arr[0] := tmp;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
        end;
      end;
      so_HighToLow:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          tmp := arr[b];
          arr[b] := arr[0];
          arr[0] := tmp;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              tmp := arr[r];
              arr[r] := arr[c];
              arr[c] := tmp;
              r := c;
            end else
              Break;
          end;
        end;
      end;
    end;
  end;
end;

procedure HeapSortTCA(var arr: TCharArray; order: TSortOrder);
var
  a, b, r, c, l: Integer;
  t: Char;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    a := ((l - 1) div 2);
    b := (l - 1);
    case order of
      so_LowToHigh:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              t := arr[r];
              arr[r] := arr[c];
              arr[c] := t;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          t := arr[b];
          arr[b] := arr[0];
          arr[0] := t;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] < arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] < arr[c]) then
            begin
              t := arr[r];
              arr[r] := arr[c];
              arr[c] := t;
              r := c;
            end else
              Break;
          end;
        end;
      end;
      so_HighToLow:
      begin
        while (a >= 0) do
        begin
          r := a;
          while (((r * 2) + 1) <= (l - 1)) do
          begin
            c := ((r * 2) + 1);
            if ((c < (l - 1)) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              t := arr[r];
              arr[r] := arr[c];
              arr[c] := t;
              r := c;
            end else
              Break;
          end;
          a := (a - 1);
        end;
        while (b > 0) do
        begin
          t := arr[b];
          arr[b] := arr[0];
          arr[0] := t;
          b := (b - 1);
          r := 0;
          while (((r * 2) + 1) <= b) do
          begin
            c := ((r * 2) + 1);
            if ((c < b) and (arr[c] > arr[(c + 1)])) then
              c := (c + 1);
            if (arr[r] > arr[c]) then
            begin
              t := arr[r];
              arr[r] := arr[c];
              arr[c] := t;
              r := c;
            end else
              Break;
          end;
        end;
      end;
    end;
  end;
end;
