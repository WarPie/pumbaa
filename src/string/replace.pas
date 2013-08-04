{==============================================================================]
  @action: Replace() function with support for offset.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrReplaceEx(text, findStr, replaceStr: string; offset: Integer; flags: TReplaceFlags): string; callconv
var
  tL: Integer;
begin
  tL := Length(text);
  if (offset < 1) then
    offset := 1;
  if ((Length(findStr) <= tL) and (offset <= tL)) then
    Result := (Copy(text, 1, (offset - 1)) + StringReplace(Copy(text, offset, ((tL - offset) + 1)), findStr, replaceStr, flags))
  else
    Result := text;
end;

{==============================================================================]
  @action: Replace() function with support for offset.
  @note: Without flags.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrReplace(text, findStr, replaceStr: string; offset: Integer): string; callconv
var
  tL: Integer;
begin
  tL := Length(text);
  if (offset < 1) then
    offset := 1;
  if ((Length(findStr) <= tL) and (offset <= tL)) then
    Result := (Copy(text, 1, (offset - 1)) + StringReplace(Copy(text, offset, ((tL - offset) + 1)), findStr, replaceStr, [rfReplaceAll]))
  else
    Result := text;
end;

{==============================================================================]
  @action: Replaces all findStrs in text with replaceStr. Starting from offset.
  @note: Supports custom flags.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrReplaceMultiEx(text: string; findStrs: TStringArray; replaceStr: string; offset: Integer; flags: TReplaceFlags): string; callconv
var
  h, i, l, t: Integer;
  tmp: string;
begin
  t := Length(text);
  if (offset < 1) then
    offset := 1;
  h := High(findStrs);
  Result := text;
  if ((h > -1) and (offset <= t)) then
  for i := 0 to h do
  begin
    l := Length(findStrs[i]);
    if ((l > 0) and (l <= t)) then
    begin
      tmp := Result;
      Result := (Copy(tmp, 1, (offset - 1)) + StringReplace(Copy(tmp, offset, ((t - offset) + 1)), findStrs[i], replaceStr, flags));
    end;
  end;
end;

{==============================================================================]
  @action: Replaces all findStrs in text with replaceStr. Starting from offset.
  @note: Without flags.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrReplaceMulti(text: string; findStrs: TStringArray; replaceStr: string; offset: Integer): string; callconv
begin
  Result := StrReplaceMultiEx(text, findStrs, replaceStr, offset, [rfReplaceAll]);
end;
