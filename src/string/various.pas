function PosEx(subStr, s: string; offset: Integer): Integer; inline;
var
  a, b: Integer;
begin
  a := Length(s);
  b := Length(subStr);
  if ((a > 0) and (b > 0) and (b <= a) and (offset > 0) and (offset <= ((a - b) + 1))) then
  for Result := offset to ((a - b) + 1) do
    if (subStr = Copy(s, Result, b)) then
      Exit;
  Result := 0;
end;

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
        t := PosEx(s, str, (p + 1));
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
