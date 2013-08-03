{==============================================================================]
  @action: Returns string from left with x as the count of characters.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLeft(str: string; x: Integer): string; callconv
var
  l: Integer;
begin
  l := Length(str);
  if ((x > 0) and (l > 0)) then
    Result := Copy(str, 1, x)
  else
    Result := '';
end;

{==============================================================================]
  @action: Returns string from right with x as the count of characters.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrRight(str: string; x: Integer): string; callconv
var
  l: Integer;
begin
  l := Length(str);
  if ((x > 0) and (l > 0)) then
    Result := Copy(str, (l - (x - 1)), x)
  else
    Result := '';
end;

{==============================================================================]
  @action: Returns slice of string with pos1 and pos2.
  @note: Supports reversed slice, when pos1 is higher than pos2.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrSlice(str: string; pos1, pos2: Integer): string; callconv
var
  i, l: Integer;
begin
  l := Length(str);
  if (l > 0) then
  begin
    if (pos1 < 1) then
      pos1 := 1;
    if (pos1 > l) then
      pos1 := l;
    if (pos2 < 1) then
      pos2 := 1;
    if (pos2 > l) then
      pos2 := l;
    if (pos1 < pos2) then
      Result := Copy(str, pos1, ((pos2 - pos1) + 1))
    else
      if (pos1 <> pos2) then
      begin
        SetLength(Result, ((pos1 - pos2) + 1));
        for i := pos1 downto pos2 do
          Result[((pos1 - i) + 1)] := Char(str[i]);
      end else
        Result := Copy(str, pos1, 1);
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns reversed str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
function StrReverse(str: string): string; callconv
var
  i, l: Integer;
begin
  l := Length(str);
  SetLength(Result, l);
  for i := l downto 1 do
    Result[i] := Char(str[((l - i) + 1)]);
end;

{==============================================================================]
  @action: Returns True if str starts with s.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrStartsWith(s, str: string): Boolean; callconv
begin
  if ((s <> '') and (str <> '')) then
    Result := (s = Copy(str, 1, Length(s)))
  else
    Result := False;
end;

{==============================================================================]
  @action: Returns True if str ends with s.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrEndsWith(s, str: string): Boolean; callconv
var
  sL: Integer;
begin
  sL := Length(s);
  if ((s <> '') and (str <> '')) then
    Result := (s = Copy(str, (Length(str) - (sL - 1)), sL))
  else
    Result := False;
end;

{==============================================================================]
  @action: Returns true if s was found in str and it was set as the beginning of the str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrStartWith(s: string; var str: string): Boolean; callconv
var
  p, l: Integer;
begin
  l := Length(s);
  if ((str <> '') and (l <= Length(str))) then
  begin
    p := Pos(s, str);
    Result := (p > 0);
    if Result then
      str := Copy(str, p, (Length(str) - (p - 1)));
  end else
    Result := False;
end;

{==============================================================================]
  @action: Returns true if s was found in str and it was set as the ending of the str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrEndWith(s: string; var str: string): Boolean; callconv
var
  t, p, l: Integer;
begin
  l := Length(s);
  if ((str <> '') and (l <= Length(str))) then
  begin
    if (Length(s) <= l) then
    begin
      p := 0;
      repeat
        t := StrPosEx(s, str, (p + 1));
        if (t > 0) then
          p := t;
      until (t <= 0);
      Result := (p > 0);
      if Result then
        str := Copy(str, 1, ((p + l) - 1));
    end else
      Result := False;
  end else
    Result := False;
end;

{==============================================================================]
  @action: Returns str with left-side trimmed/cleaned of spaces.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrTrimStart(str: string): string; callconv
var
  i, l: Integer;
begin
  if (str <> '') then
  begin
    l := Length(str);
    for i := 1 to l do
      if (str[i] <> ' ') then
        Break;
    Result := Copy(str, i, ((l + 1) - i));
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns str with right-side trimmed/cleaned of spaces.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrTrimEnd(str: string): string; callconv
var
  i, l: Integer;
begin
  if (str <> '') then
  begin
    l := Length(str);
    for i := l downto 1 do
      if (str[i] <> ' ') then
        Break;
    Result := Copy(str, 1, i);
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string (with size) that is behind the position in data.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrBehind(data: string; position, size: Integer): string; callconv
var
  l, r: Integer;
begin
  l := Length(data);
  if ((l > 0) and (position > 1) and (size > 0)) then
  begin
    if ((position - size) < 1) then
      size := ((position - size) + (size - 1));
    if (position > (l + 1)) then
    begin
      r := ((position - l) - 1);
      size := (size - r);
    end;
    Result := Copy(data, ((position - size) - r), size);
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string (with size) that is behind the position in data.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrAhead(data: string; position, size: Integer): string; callconv
var
  l: Integer;
begin
  l := Length(data);
  if ((l > 0) and (position <= l) and (size > 0)) then
  begin
    if (position < 1) then
    begin
      size := (size - Abs(position - 1));
      position := 1;
    end;
    if ((size > 0) and ((position + size) > l)) then
      size := (size - (((position + size) - l) - 1));
    Result := Copy(data, position, size);
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string that is found after s in str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrAfter(s, str: string): string; callconv
var
  p, strL, sL: Integer;
begin
  sL := Length(s);
  strL := Length(str);
  if (sL < strL) then
  begin
    p := Pos(s, str);
    if (p > 0) then
      Result := Copy(str, (p + sL), ((1 + strL) - (p + sL)))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string that is found before s in str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrBefore(s, str: string): string; callconv
var
  p: Integer;
begin
  if (Length(s) < Length(str)) then
  begin
    p := Pos(s, str);
    if (p > 1) then
      Result := Copy(str, 1, (p - 1))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string that is found after s in str.
           Supports offset.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrAfterEx(s, str: string; offset: Integer): string; callconv
var
  p, sL, strL: Integer;
begin
  sL := Length(s);
  strL := Length(str);
  if ((sL < strL) and (offset < strL)) then
  begin
    p := StrPosEx(s, str, offset);
    if (p > 0) then
      Result := Copy(str, (p + sL), ((1 + strL) - (p + sL)))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string that is found before s in str.
           Supports offset.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrBeforeEx(s, str: string; offset: Integer): string; callconv
var
  p, strL: Integer;
begin
  strL := Length(str);
  if ((Length(s) < strL) and (offset < strL)) then
  begin
    p := StrPosEx(s, str, offset);
    if (p > 1) then
      Result := Copy(str, 1, (p - 1))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string that is found after last s in str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLastAfter(s, str: string): string; callconv
var
  sL, l, p, lp: Integer;
begin
  l := Length(str);
  sL := Length(s);
  if (sL <= l) then
  begin
    p := 0;
    repeat
      p := StrPosEx(s, str, (p + 1));
      if (p > 0) then
        lp := p;
    until (p <= 0);
    if (lp > 0) then
      Result := Copy(str, (lp + sL), ((1 + l) - (lp + sL)))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns string that is found before last s in str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLastBefore(s, str: string): string; callconv
var
  l, p, lp: Integer;
begin
  l := Length(str);
  if (Length(s) <= l) then
  begin
    p := 0;
    repeat
      p := StrPosEx(s, str, (p + 1));
      if (p > 0) then
        lp := p;
    until (p <= 0);
    if (lp > 0) then
      Result := Copy(str, 1, (lp - 1))
    else
      Result := '';
  end else
    Result := '';
end;

{==============================================================================]
  @action: Returns str centered with spaces where size is the length of the Result.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCenter(str: string; size: Integer): string; callconv
var
  l, p: Integer;
begin
  l := Length(str);
  if (l >= size) then
    Result := str
  else
    if (l > 0) then
    begin
      p := (((size - l) div 2) + 1);
      Result := (StringOfChar(' ', (p - 1)) + str + StringOfChar(' ', ((size - (p + l)) + 1)));
    end else
      Result := StringOfChar(' ', size)
end;

{==============================================================================]
  @action: Returns str centered with fill characters where size is the length of the Result.
  @note: Supports custom filling character by fill!
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCenterEx(str: string; size: Integer; fill: Char): string; callconv
var
  l, p: Integer;
begin
  l := Length(str);
  if (l >= size) then
    Result := str
  else
    if (l > 0) then
    begin
      p := (((size - l) div 2) + 1);
      Result := (StringOfChar(fill, (p - 1)) + str + StringOfChar(fill, ((size - (p + l)) + 1)));
    end else
      Result := StringOfChar(fill, size);
end;

{==============================================================================]
  @action: Returns str stuffed with s. Starting from iFrom and ending to iFrom + iCount.
  @note: Places s to iFrom position and replaces iCount amount of next characters in str with s.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrStuff(str, s: string; iFrom, iCount: Integer): string; callconv
begin
  Result := Copy(str, 1, Length(str));
  Delete(Result, iFrom, iCount);
  Insert(s, Result, iFrom);
end;

{==============================================================================]
  @action: Returns str stuffed with s - pos1=start position, pos2=finish position.
  @note: With pos1 > pos2 s will be reversed.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPatch(str, s: string; pos1, pos2: Integer): string; callconv
var
  i, l: Integer;
begin
  Result := str;
  l := Length(Result);
  if (pos1 < 1) then
    pos1 := 1;
  if (pos1 > l) then
    pos1 := l;
  if (pos2 < 1) then
    pos2 := 1;
  if (pos2 > l) then
    pos2 := l;
  if (pos1 > pos2) then
  begin
    Delete(Result, pos2, ((pos1 - pos2) + 1));
    l := Length(s);
    SetLength(str, l);
    for i := l downto 1 do
      str[i] := Char(s[((l - i) + 1)]);
    Insert(str, Result, pos2);
  end else
  begin
    Delete(Result, pos1, ((pos2 - pos1) + 1));
    Insert(s, Result, pos1);
  end;
end;

{==============================================================================]
  @action: Returns str * count (duplicated) times. Example: ('ha', 3) => 'hahaha'
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrDuplicate(str: string; count: Integer): string; callconv
var
  i: Integer;
begin
  Result := '';
  if (count > 0) then
    for i := 1 to count do
      Result := (Result + str);
end;

{==============================================================================]
  @action: Returns str * count times. Example: ('ha', 3, ' ') => 'ha ha ha'
           Places glue between the str positions to result.
  @note: Supports custom glue addition between duplicated str's.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrDuplicateEx(str: string; count: Integer; glue: string): string; callconv
var
  i: Integer;
begin
  Result := '';
  if (count > 0) then
    if (count > 1) then
    begin
      for i := 1 to (count - 1) do
        Result := (Result + str + glue);
      Result := (Result + str);
    end else
      Result := str;
end;
