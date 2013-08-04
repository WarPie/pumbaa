{==============================================================================]
  @action: Returns the line text from str by number.
  @note: Line numbers start from 1!
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLine(str: string; number: Integer): string; callconv
var
  p, h, i, x, m, l, y, z: Integer;
  d: TStringArray;
begin
  if ((str <> '') and (number > 0)) then
  begin
    i := 0;
    SetLength(d, 3);
    d[0] := #13#10;
    d[1] := #13;
    d[2] := #10;
    h := High(d);
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
        Inc(i);
        if (i >= number) then
          Result := Copy(str, 1, (l - 1))
        else
          Delete(str, 1, ((l + Length(d[m])) - 1));
      end else
        if ((i + 1) >= number) then
          Result := Copy(str, 1, Length(str))
        else
          Result := '';
    until ((i > number) or (l < 1));
    SetLength(d, 0);
  end else
    Result := '';
end;

{==============================================================================]
  @action: Outputs the lines of str as TStringArray.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrLines(str: string; var output: TStringArray); callconv
var
  p, h, i, x, m, l, y, z: Integer;
  d: TStringArray;
begin
  if (str <> '') then
  begin
    i := 0;
    SetLength(d, 3);
    d[0] := #13#10;
    d[1] := #13;
    d[2] := #10;
    h := High(d);
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

{==============================================================================]
  @action: Outputs ALL the positions of lines from str as TIntegerArray.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrLinePositions(str: string; var output: TIntegerArray); callconv
var
  s: TStringArray;
  c, i, l, h, p, m, t, o, r: Integer;
begin
  if (str <> '') then
  begin
    c := 0;
    r := 1;
    t := (Length(str) + 1);
    SetLength(output, t);
    output[c] := r;
    Inc(c);
    l := 1;
    SetLength(s, 3);
    s[0] := #13#10;
    s[1] := #13;
    s[2] := #10;
    h := High(s);
    repeat
      m := t;
      for i := 0 to h do
      begin
        p := StrPosEx(s[i], str, r);
        if ((p > 0) and (p < m)) then
        begin
          m := p;
          o := Length(s[i]);
        end;
      end;
      if (m < t) then
      begin
        r := (m + o);
        output[c] := r;
        Inc(c);
        Inc(l);
      end;
    until (m = t);
    SetLength(output, c);
  end else
  begin
    SetLength(output, 1);
    output[0] := 1;
  end;
end;

{==============================================================================]
  @action: Returns the total count of lines that str contains.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLineCount(str: string): Integer; callconv
var
  h, l, p, o, i, t, x, y: Integer;
  s: TStringArray;
begin
  Result := 1;
  if (str <> '') then
  begin
    l := 0;
    SetLength(s, 3);
    s[0] := #13#10;
    s[1] := #13;
    s[2] := #10;
    h := High(s);
    o := 1;
    repeat
      p := 0;
      x := 0;
      while (x <= h) do
      begin
        t := StrPosEx(s[x], str, (l + o));
        if (t < 1) then
        begin
          for y := x to (h - 1) do
            s[y] := s[(y + 1)];
          SetLength(s, h);
          Dec(x);
          Dec(h);
        end else
          if ((p = 0) or (t < p)) then
          begin
            p := t;
            i := x;
          end;
        Inc(x);
      end;
      if (p > 0) then
      begin
        Inc(Result);
        l := p;
        o := Length(s[i]);
      end;
    until (p <= 0);
    SetLength(s, 0);
  end;
end;

{==============================================================================]
  @action: Returns line from str by position.
  @note: Results as 0 with invalid position (<1)
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLineByPos(str: string; position: Integer): Integer; callconv
var
  s: TStringArray;
  i, n, o: Integer;
begin
  if (position > 0) then
  begin
    Result := 1;
    str := Copy(str, 1, position);
    SetLength(s, 3);
    s[0] := #13#10;
    s[1] := #13;
    s[2] := #10;
    for i := 0 to 2 do
    begin
      o := Length(str);
      str := StringReplace(str, s[i], '', [rfReplaceAll]);
      n := ((o - Length(str)) div Length(s[i]));
      Result := (Result + n);
    end;
  end else
    Result := 0;
end;

{==============================================================================]
  @action: Returns position from str by line.
  @note: Results as 0 with invalid line (<1 OR <line)!
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPosByLine(str: string; line: Integer): Integer; callconv
var
  s: TStringArray;
  i, l, h, p, m, t, o: Integer;
begin
  if (line > 0) then
  begin
    Result := 1;
    t := (Length(str) + 1);
    if ((t > 1) and (line > 1)) then
    begin
      l := 1;
      SetLength(s, 3);
      s[0] := #13#10;
      s[1] := #13;
      s[2] := #10;
      h := High(s);
      repeat
        m := t;
        for i := 0 to h do
        begin
          p := StrPosEx(s[i], str, Result);
          if ((p > 0) and (p < m)) then
          begin
            m := p;
            o := Length(s[i]);
          end;
        end;
        if (m < t) then
        begin
          Result := (m + o);
          Inc(l);
        end;
      until ((m = t) or (l >= line));
      if (l < line) then
        Result := 0;
    end;
  end else
    Result := 0;
end;
