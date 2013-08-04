{==============================================================================]
  @action: Explodes str with delimiter (d).
  @note: Explode()
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrExplode(d, str: string; var output: TStringArray); callconv
var
  a, b, l, p, r, s: Integer;
  m: Boolean;
begin;
  SetLength(output, 1);
  l := Length(str);
  s := Length(d);
  if ((l > 0) and (s > 0)) then
  begin
    a := 1;
    p := 1;
    r := 0;
    while ((a + (s - 1)) <= l) do
    begin
      for b := 1 to s do
      begin
        m := (str[((a + b) - 1)] = d[b]);
        if not m then
          Break;
      end;
      if m then
      begin
        output[r] := Copy(str, p, (a - p));
        if (((a + s) - 1) = l) then
          Exit;
        p := (a + s);
        a := ((a + s) - 1);
        Inc(r);
        SetLength(output, (r + 1));
      end;
      Inc(a);
    end;
    output[r] := Copy(str, p, ((l - p) + 1));
  end else
    output[0] := '';
end;

{==============================================================================]
  @action: Explodes str with delimiter (d).
  @note: Explodes up to (maximum) limit.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrExplodeEx(d, str: string; limit: Integer; var output: TStringArray); callconv
var
  a, b, l, p, r, s: Integer;
  m: Boolean;
begin;
  SetLength(output, 1);
  l := Length(str);
  s := Length(d);
  if ((l > 0) and (s > 0)) then
  begin
    a := 1;
    p := 1;
    r := 0;
    while (((r + 1) < limit) and ((a + (s - 1)) <= l)) do
    begin
      for b := 1 to s do
      begin
        m := (str[((a + b) - 1)] = d[b]);
        if not m then
          Break;
      end;
      if m then
      begin
        output[r] := Copy(str, p, (a - p));
        if (((a + s) - 1) = l) then
          Exit;
        p := (a + s);
        a := ((a + s) - 1);
        Inc(r);
        SetLength(output, (r + 1));
      end;
      Inc(a);
    end;
    output[r] := Copy(str, p, ((l - p) + 1));
  end else
    output[0] := '';
end;

{==============================================================================]
  @action: Explodes str with multiple separators/delimiters (d).
           The importance order for d items is from left to right (=>).
           So place the important ones first and then less important after those.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrExplodeMulti(d: TStringArray; str: string; var output: TStringArray); callconv
var
  p, h, i, x, m, l, y, z: Integer;
begin
  h := High(d);
  if ((h > -1) and (str <> '')) then
  begin
    i := 0;
    SetLength(output, Length(str));
    repeat
      l := 0;
      x := 0;
      while (x <= h) do
      begin
        p := Pos(d[x], str);
        if (p < 1) then
        begin
          z := High(d);
          if ((x <= z) and (x > -1)) then
          begin
            for y := x to (z - 1) do
              d[y] := d[(y + 1)];
            SetLength(d, z);
          end;
          Dec(x);
          Dec(h);
        end else
          if ((l = 0) or (p < l)) then
          begin
            m := x;
            l := p;
          end;
        Inc(x);
      end;
      if (l > 0) then
      begin
        output[i] := Copy(str, 1, (l - 1));
        Delete(str, 1, ((l + Length(d[m])) - 1));
        Inc(i);
      end else
        output[i] := Copy(str, 1, Length(str));
    until (l = 0);
    SetLength(output, (i + 1));
  end else
  begin
    SetLength(output, 1);
    output[0] := str;
  end;
end;
