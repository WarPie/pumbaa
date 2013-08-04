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
  a, b, i, l, p, r, s, z, g: Integer;
  m: Boolean;
begin;
  SetLength(output, 1);
  l := Length(str);
  s := Length(d);
  if ((l > 0) and (s > 0)) then
  begin
    r := 0;
    z := 0;
    for a := 0 to (s - 1) do
      if (d[a] <> '') then
      begin
        if (z = 0) then
          z := Length(d[a])
        else
          if (Length(d[a]) < z) then
            z := Length(d[a]);
        d[r] := d[a];
        Inc(r);
      end;
    if (r > 0) then
    begin
      s := r;
      a := 1;
      p := 1;
      r := 0;
      while ((a + (z - 1)) <= l) do
      begin
        m := False;
        for i := 0 to (s - 1) do
        begin
          g := Length(d[i]);
          if ((a + (g - 1)) <= l) then
          begin
            for b := 1 to g do
            begin
              m := (str[((a + b) - 1)] = d[i][b]);
              if not m then
                Break;
            end;
            if m then
              Break;
          end;
        end;
        if m then
        begin
          output[r] := Copy(str, p, (a - p));
          if ((a + (g + 1)) = l) then
            Exit;
          p := (a + g);
          a := ((a + g) - 1);
          Inc(r);
          SetLength(output, (r + 1));
        end;
        Inc(a);
      end;
      output[r] := Copy(str, p, ((l - p) + 1));
    end else
      output[0] := '';
  end else
    output[0] := '';
end;

{==============================================================================]
  @action: Explodes str with multiple separators/delimiters (d).
           The importance order for d items is from left to right (=>).
           So place the important ones first and then less important after those.
  @note: Supports limit.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrExplodeMultiEx(d: TStringArray; str: string; limit: Integer; var output: TStringArray); callconv
var
  a, b, i, l, p, r, s, z, g: Integer;
  m: Boolean;
begin;
  SetLength(output, 1);
  l := Length(str);
  s := Length(d);
  if ((l > 0) and (s > 0)) then
  begin
    r := 0;
    z := 0;
    for a := 0 to (s - 1) do
      if (d[a] <> '') then
      begin
        if (z = 0) then
          z := Length(d[a])
        else
          if (Length(d[a]) < z) then
            z := Length(d[a]);
        d[r] := d[a];
        Inc(r);
      end;
    if (r > 0) then
    begin
      s := r;
      a := 1;
      p := 1;
      r := 0;
      while (((r + 1) < limit) and ((a + (z - 1)) <= l)) do
      begin
        m := False;
        for i := 0 to (s - 1) do
        begin
          g := Length(d[i]);
          if ((a + (g - 1)) <= l) then
          begin
            for b := 1 to g do
            begin
              m := (str[((a + b) - 1)] = d[i][b]);
              if not m then
                Break;
            end;
            if m then
              Break;
          end;
        end;
        if m then
        begin
          output[r] := Copy(str, p, (a - p));
          if ((a + (g + 1)) = l) then
            Exit;
          p := (a + g);
          a := ((a + g) - 1);
          Inc(r);
          SetLength(output, (r + 1));
        end;
        Inc(a);
      end;
      output[r] := Copy(str, p, ((l - p) + 1));
    end else
      output[0] := '';
  end else
    output[0] := '';
end;
