{==============================================================================]
  @action: Returns the line text from str by number.
  @note: Line numbers start from 1!
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLine(str: string; number: Integer): string; callconv
var
  d, r: TStringArray;
begin
  if ((str <> '') and (number > 0)) then
  begin
    SetLength(d, 3);
    d[0] := #13#10;
    d[1] := #13;
    d[2] := #10;
    StrExplodeMultiEx(d, str, (number + 1), r);
    if (Length(r) >= number) then
      Result := r[(number - 1)]
    else
      Result := '';
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
  d: TStringArray;
begin
  if (str <> '') then
  begin
    SetLength(d, 3);
    d[0] := #13#10;
    d[1] := #13;
    d[2] := #10;
    StrExplodeMulti(d, str, output);
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
  s: TStringArray;
begin
  if (str <> '') then
  begin
    StrLines(str, s);
    Result := Length(s);
  end else
    Result := 1;
end;

{==============================================================================]
  @action: Returns line from str by position.
  @note: Results as 0 with invalid position (<1)
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLineByPos(str: string; position: Integer): Integer; callconv
var
  c, l: Integer;
begin
  if (position > 0) then
  begin
    l := Length(str);
    if (l > 0) then
    begin
      if (position > l) then
        position := l;
      str := Copy(str, 1, position);
      c := StrCount(#13#10, str);
      Result := (c + (StrCount(#10, str) - c) + (StrCount(#13, str) - c) + 1);
    end else
      Result := 1;
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
