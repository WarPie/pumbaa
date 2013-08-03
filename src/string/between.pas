{==============================================================================]
 @action: Returns the string between s1 and s2 in str.
 @note: Between()!
 @contributors: Janilabo, slacky
[==============================================================================}

function StrBetween(s1, s2, str: string): string; callconv inline;
var
  b, e, l: Integer;
begin
  b := Pos(s1, str);
  if (b > 0) then
  begin
    l := Length(s1);
    e := StrPosEx(s2, str, (b + l));
    if (e > 0) then
      Result := Copy(str, (b + l), (e - (b + l)))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
 @action: Returns the string between s1 and s2 in str.
 @note: Supports offset.
 @contributors: Janilabo, slacky
[==============================================================================}

function StrBetweenEx(s1, s2, str: string; offset: Integer): string; inline;
var
  b, e, l: Integer;
begin
  Result := '';
  b := StrPosEx(s1, str, offset);
  if (b > 0) then
  begin
    l := Length(s1);
    e := StrPosEx(s2, str, (b + l));
    if (e > 0) then
      Result := Copy(str, (b + l), (e - (b + l)))
    else
      Result := '';
  end;
end;

{==============================================================================]
 @action: Returns the string between pos1 and pos2 of str.
 @note: Supports reversed result with pos1 > pos2!
 @contributors: Janilabo, slacky
[==============================================================================}

function StrBetweenPositions(str: string; pos1, pos2: Integer): string; callconv inline;
var
  i, l: Integer;
begin
  l := Length(str);
  if (pos1 < 0) then
    pos1 := 0;
  if (pos1 > (l + 1)) then
    pos1 := (l + 1);
  if (pos2 < 0) then
    pos2 := 0;
  if (pos2 > (l + 1)) then
    pos2 := (l + 1);
  if (pos1 < pos2) then
    Result := Copy(str, (pos1 + 1), ((pos2 - pos1) - 1))
  else
    if (pos1 <> pos2) then
    begin
      SetLength(Result, ((pos1 - pos2) - 1));
      for i := (pos1 - 1) downto (pos2 + 1) do
        Result[(pos1 - i)] := Char(str[i]);
    end else
      Result := '';
end;

{==============================================================================]
 @action: Outputs everything/all between s1's and s2's in str.
 @note: Doesn't include empty results ('')
 @contributors: Janilabo, slacky
[==============================================================================}

procedure StrAllBetween(s1, s2, str: string; var output: TStringArray); callconv
var
  s1L, s2L, sL, r, sp, start, fp, finish: Integer;
  tmp: string;
begin
  r := 0;
  sL := Length(str);
  s1L := Length(s1);
  s2L := Length(s2);
  if ((sL > 0) and (s1L > 0) and (s2L > 0) and (sL >= (s1L + s2L))) then
  begin
    start := 0;
    SetLength(output, (sL * (sL - (s1L + s2L))));
    repeat
      sp := StrPosEx(s1, str, (start + 1));
      if (sp > 0) then
      begin
        start := sp;
        finish := ((start + s1L) - 1);
        repeat
          fp := StrPosEx(s2, str, (finish + 1));
          if (fp > 0) then
          begin
            finish := fp;
            tmp := Copy(str, (start + s1L), (finish - (start + s1L)));
            if (tmp <> '') then
            begin
              output[r] := tmp;
              Inc(r);
              tmp := '';
            end;
          end;
        until (fp <= 0);
      end;
    until (sp <= 0);
  end;
  SetLength(output, r);
end;

procedure StrMultiBetween(str, s1, s2: string; var output: TStringArray); callconv
var
  strL, s1L, s2L, o, n, e, r: Integer;
begin
  r := 0;
  s1L := Length(s1);
  s2L := Length(s2);
  strL := Length(str);
  if ((s1 <> '') and (s2 <> '') and (strL > (s1L + s2L))) then
  begin
    n := 0;
    SetLength(output, (strL - (s1L + s2L)));
    repeat
      n := StrPosEx(s1, str, (n + 1));
      if (n < 1) then
        Break;
      e := StrPosEx(s2, str, (n + 1));
      if (e < 1) then
        Break;
      repeat
        o := n;
        n := StrPosEx(s1, str, (n + 1));
      until ((n >= e) or (n < 1));
      n := o;
      output[r] := StrBetween(s1, s2, Copy(str, n, (s1L + (e + s2L))));
      if (output[r] <> '') then
        Inc(r);
    until ((e < 1) or (n < 1));
  end;
  SetLength(output, r);
end;

procedure StrMultiBetweenEx(str, s1, s2: string; method: Integer; var output: TStringArray); callconv
var
  s1L, s2L, strL, s, o, n, e, r: Integer;
begin
  r := 0;
  strL := Length(str);
  s1L := Length(s1);
  s2L := Length(s2);
  if ((strL > Length(s1 + s2)) and (s1L >= 1) and (Length(s2) >= 1)) then
  begin
    n := 0;
    e := 0;
    s := 0;
    if not InRange(method, 0, 3) then
      method := 0;
    SetLength(output, (strL - (s1L + s2L)));
    case method of
      0:
      repeat
        n := StrPosEx(s1, str, (n + 1));
        if (n < 1) then
          Break;
        e := StrPosEx(s2, str, (n + 1));
        if (e < 1) then
          Break;
        repeat
          o := n;
          n := StrPosEx(s1, str, (n + 1));
        until ((n >= e) or (n < 1));
        n := o;
        output[r] := StrBetween(s1, s2, Copy(str, n, (s1L + (e + s2L))));
        if (output[r] <> '') then
          Inc(r);
      until ((e < 1) or (n < 1));
      1..3:
      repeat
        case method of
          1, 2: s := StrPosEx(s1, str, (e + 1));
          3: s := StrPosEx(s1, str, (s + 1));
        end;
        e := StrPosEx(s2, str, (s + 1));
        if ((s < 1) or (e < 1)) then
          Break;
        output[r] := Copy(str, (s + s1L), (e - (s + s1L)));
        if (output[r] <> '') then
          Inc(r)
        else
          if (method = 1) then
            e := ((s + s1L) - 1);
      until ((s < 1) or (e < 1));
    end;
  end;
  SetLength(output, r);
end;
