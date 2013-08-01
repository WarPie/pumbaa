{==============================================================================]
 @action: Returns random boolean.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function RandomBool: Boolean; callconv inline;
begin
  Result := (Random(2) = 0);
end;

{==============================================================================]
 @action: Returns random boolean by chance.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function RandomBoolEx(chance: Integer): Boolean; callconv inline;
begin
  if (chance > 0) then
  begin
    if (chance > 1) then
      Result := (Random(chance) = 0)
    else
      Result := True;
  end else
    Result := False;
end;

{==============================================================================]
 @action: Random() with support for negative Range.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Random2(range: Integer): Integer; callconv inline;
begin
  if (range > -1) then
    Result := Random(range)
  else
    Result := (Random(Abs(range)) * -1);
end;

{==============================================================================]
 @action: Generates an array of random numbers from aFrom to aTo.
          Amount is the size of the array.
          If duplicates is set as true, the values wont be unique to each other.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure RandomRangeEx(aFrom, aTo, amount: Integer; duplicates: Boolean; var output: TIntegerArray); callconv
  procedure _Swap(var value1, value2: Integer); inline;
  var
    s: Integer;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  a, d, e, m, n, r, i, t, x, y: Integer;
  tmp: TIntegerArray;
  b, f: Boolean;
begin
  if (amount > 0) then
  begin
    if not duplicates then
    begin
      if (aFrom > aTo) then
        _Swap(aFrom, aTo);
      a := Abs(aTo - aFrom);
      if (a < amount) then
        amount := a;
      SetLength(output, amount);
      if (amount > 0) then
      begin
        if (amount < 20000) then
        begin
          i := 0;
          for r := 0 to (amount - 1) do
          repeat
            n := RandomRange(aFrom, aTo);
            y := High(output);
            for x := 0 to y do
            begin
              f := (output[x] = n);
              if f then
                Break;
            end;
            if not f then
            begin
              output[i] := n;
              Inc(i);
            end;
          until (i > r);
        end else
        begin
          SetLength(output, amount);
          m := Abs(aFrom - aTo);
          if (m > 10) then
            b := (m > Trunc(amount * 1.1))
          else
            b := False;
          if b then
          begin
            t := 0;
            d := (Trunc(m / amount) + 3);
            e := aFrom;
            for i := 0 to (amount - 1) do
            begin
              r := Random(d);
              IncreaseEx(e, r);
              IncreaseEx(t, (r + 1));
              output[i] := (e + i);
              _Swap(output[Random(i)], output[Random(i)]);
              d := (Trunc(((m - t) / (amount - i))) * 2);
            end;
            for i := 0 to (amount div 2) do
              _Swap(output[Random(amount)], output[Random(amount)]);
          end else
          begin
            SetLength(tmp, (aTo - aFrom));
            for i := aFrom to (aTo - 1) do
              tmp[(i - aFrom)] := i;
            for i := 0 to (amount - 1) do
            begin
              r := Random((aTo - aFrom) - i);
              output[i] := tmp[r];
              y := High(tmp);
              if ((r <= y) and (r > -1)) then
              begin
                for x := r to (y - 1) do
                  tmp[x] := tmp[(x + 1)];
                SetLength(tmp, y);
              end;
            end;
            SetLength(tmp, 0);
          end;
        end;
      end else
      begin
        SetLength(output, 1);
        output[0] := aFrom;
      end;
    end else
    begin
      SetLength(output, amount);
      for i := 0 to (amount - 1) do
        output[i] := RandomRange(aFrom, aTo);
    end;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Generates an array of random numbers by range.
          Amount is the size of the array.
          If duplicates is set as true, the values wont be unique to each other.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure RandomEx(range, amount: Integer; duplicates: Boolean; var output: TIntegerArray); callconv
begin
  if (amount < 1) then
    SetLength(output, 0)
  else
    if (range < 0) then
      RandomRangeEx((range + 1), 1, amount, duplicates, output)
    else
      RandomRangeEx(0, range, amount, duplicates, output);
end;
