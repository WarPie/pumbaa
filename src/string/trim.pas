{==============================================================================]
  @action: Returns str with left-side trimmed/cleaned of spaces.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrTrimStart(str: string): string; callconv inline;
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

function StrTrimEnd(str: string): string; callconv inline;
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
  @action: Returns string trimmed using custom side trimming by TTrimSide.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrTrimEx(str: string; side: TTrimSide): string; callconv inline;
begin
  case side of
    ts_Left, ts_Start: Result := StrTrimStart(str);
    ts_Right, ts_End: Result := StrTrimEnd(str);
    ts_Both: Result := Trim(str);
  end;
end;

{==============================================================================]
  @action: Trims all TSA items. Supports custom side trimming by side.
  @note: If delEmpty is set as true, procedure will delete all empty items.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TSATrimEx(var TSA: TStringArray; delEmpty: Boolean; side: TTrimSide); callconv
var
  l, i, r: Integer;
  tmp: TStringArray;
begin
  l := Length(TSA);
  if (l > 0) then
    if delEmpty then
    begin
      r := 0;
      SetLength(tmp, l);
      for i := 0 to (l - 1) do
        if (TSA[i] <> '') then
        begin
          tmp[r] := StrTrimEx(TSA[i], side);
          if (tmp[r] <> '') then
            Inc(r);
        end;
      SetLength(tmp, r);
      SetLength(TSA, r);
      for i := 0 to (r - 1) do
        TSA[i] := tmp[i];
      SetLength(tmp, 0);
    end else
      for i := 0 to (l - 1) do
        TSA[i] := StrTrimEx(TSA[i], side);
end;

{==============================================================================]
  @action: Trims all TSA items. Based on normal Trim().
  @note: If delEmpty is set as true, procedure will delete all empty items.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TSATrim2(var TSA: TStringArray; delEmpty: Boolean); callconv
begin
  TSATrimEx(TSA, delEmpty, ts_Both);
end;

{==============================================================================]
  @action: Trims all TSA items. Supports custom side trimming by side.
  @note: None.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TSATrim3(var TSA: TStringArray; side: TTrimSide); callconv
begin
  TSATrimEx(TSA, False, side);
end;

{==============================================================================]
  @action: Simply trims all TSA items using normal Trim().
  @note: None.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure TSATrim(var TSA: TStringArray); callconv
var
  h, i: Integer;
begin
  h := High(TSA);
  for i := 0 to h do
    TSA[i] := Trim(TSA[i]);
end;
