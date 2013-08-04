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

{==============================================================================]
  @action: Returns string of all TSA items binded together.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function TSAConcat(TSA: TStringArray): string; callconv
var
  h, i: Integer;
begin
  Result := '';
  h := High(TSA);
  for i := 0 to h do
    Result := (Result + TSA[i]);
end;

{==============================================================================]
  @action: Returns string of all TSA items binded together.
           Places glue between the indexes.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function TSAConcatEx(TSA: TStringArray; glue: string): string; callconv
var
  h, i: Integer;
begin
  Result := '';
  h := High(TSA);
  if (h > -1) then
  begin
    for i := 0 to (h - 1) do
      Result := ((Result + TSA[i]) + glue);
    Result := (Result + TSA[i]);
  end;
end;

{==============================================================================]
  @action: Compares s1 with s2.
  @note: Results: 0=EQUAL, 1=s1>s2, -1=s1<s2
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCompare(s1, s2: string): Integer; callconv
begin
  if (s1 = s2) then
    Result := 0
  else
    if (s1 > s2) then
      Result := 1
    else
      Result := -1;
end;

{==============================================================================]
  @action: Returns the quoted version of str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrQuotatation(str: string): string; callconv
begin
  Result := ('''' + StringReplace(str, '''', '''''', [rfReplaceAll]) + '''');
end;

{==============================================================================]
  @action: Returns string with all characters escaped that are part of the regular expression syntax.
  @note: Based on the character set below...
         '.', '\', '+', '*', '?', '[', '^', ']', '$', '(', ')', '{', '}', '=', '!', '<', '>', '|', ':', '-'
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPregQuote(str: string): string; callconv
var
  l, i: Integer;
  r: string;
begin
  Result := str;
  r := '.\+*?[^]$(){}=!<>|:-';
  l := Length(str);
  if (l > 0) then
  for i := l downto 1 do
    if (Pos(str[i], r) > 0) then
      Insert('\', Result, i);
end;

{==============================================================================]
  @action: Returns string with all characters escaped that are part of regexChars.
  @note: Supports custom character set with regexChars.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPregQuoteEx(str, regexChars: string): string; callconv
var
  l, i: Integer;
begin
  Result := str;
  l := Length(str);
  if ((l > 0) and (regexChars <> '')) then
  for i := l downto 1 do
    if (Pos(str[i], regexChars) > 0) then
      Insert('\', Result, i);
end;

{==============================================================================]
  @action: Splits string (str) from position stores the 2 halves to a and b variables.
  @note: Does not include the char from position!
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrSplit(str: string; var a, b: string; position: Integer); callconv
var
  l: Integer;
begin
  a := '';
  b := '';
  l := Length(str);
  if (l > 0) then
  begin
    if (position < 1) then
      position := 1;
    a := Copy(str, 1, (position - 1));
    Inc(position);
    b := Copy(str, position, ((l - position) + 1));
  end;
end;

{==============================================================================]
  @action: Splits string (str) from position stores the 2 halves to a and b variables.
           If includeCenter is set as true, char from position will be included to b variable.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrSplitEx(str: string; var a, b: string; position: Integer; includeCenter: Boolean); callconv
var
  l, e: Integer;
begin
  a := '';
  b := '';
  l := Length(str);
  if (l > 0) then
  begin
    e := 0;
    if (position < 1) then
      position := 1;
    a := Copy(str, 1, (position - 1));
    if not includeCenter then
      e := 1;
    position := (position + e);
    b := Copy(str, position, ((l - position) + 1));
  end;
end;
