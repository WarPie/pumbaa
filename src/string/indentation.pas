{==============================================================================]
  @action: Indents str with spaces (just like the feature in SCAR, Ctrl+Shift+[I/U]).
           shift is the amount of spaces. It can be positive value (indent), 0 (no change) or negative value (unindent).
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrIndentation(var str: string; shift: Integer); callconv
var
  d, tmp, nl: TStringArray;
  p, h, i, x, m, l, y, z: Integer;
  s: string;
begin
  if ((str <> '') and (shift <> 0)) then
  begin
    i := 0;
    SetLength(d, 3);
    d[0] := #13#10;
    d[1] := #13;
    d[2] := #10;
    h := High(d);
    SetLength(tmp, Length(str));
    SetLength(nl, Length(str));
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
        tmp[i] := Copy(str, 1, (l - 1));
        nl[i] := d[m];
        Delete(str, 1, ((l + Length(d[m])) - 1));
        Inc(i);
      end else
        tmp[i] := Copy(str, 1, Length(str));
    until (l = 0);
    str := '';
    SetLength(tmp, (i + 1));
    SetLength(nl, i);
    if (shift > 0) then
    begin
      s := StringOfChar(' ', shift);
      for x := 0 to i do
      begin
        str  := (str + (s + tmp[x]));
        if (x < i) then
          str := (str + nl[x]);
      end;
    end else
    begin
      shift := Abs(shift);
      for x := 0 to i do
      begin
        y := 0;
        l := Length(tmp[x]);
        while ((y < shift) and (y < l) and (tmp[x][(y + 1)] = ' ')) do
          Inc(y);
        if (y > 0) then
          Delete(tmp[x], 1, y);
        str := (str + tmp[x]);
        if (x < i) then
          str := (str + nl[x]);
      end;
    end;
    SetLength(tmp, 0);
    SetLength(nl, 0);
  end;
end;
