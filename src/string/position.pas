{==============================================================================]
  @action: Returns s position from str.
  @note: Pos()
  @contributors: Janilabo, slacky
[==============================================================================}
function StrPos(s, str: string): Integer; callconv
begin
  Result := Pos(s, str);
end;

{==============================================================================]
  @action: Returns s position from str. Starts scanning from offset.
           If s doesn't exist in str, result will be set as 0.
  @note: PosEx()
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPosEx(s, str: string; offset: Integer): Integer; callconv inline;
var
  a, b: Integer;
begin
  a := Length(str);
  b := Length(s);
  if ((a > 0) and (b > 0) and (b <= a) and (offset < ((a - b) + 2))) then
  begin
    if (offset < 1) then
      offset := 1;
    for Result := offset to ((a - b) + 1) do
      if (s = Copy(str, Result, b)) then
        Exit;
  end;
  Result := 0;
end;

{==============================================================================]
  @action: Finds position from s items in str.
           The importance order for s items is from left to right (=>).
  @note: So, place the important ones first and then less important after those.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPosMulti(s: TStringArray; str: string): Integer; callconv
var
  h, i, p, t: Integer;
begin
  h := High(s);
  if ((h > -1) and (str <> '')) then
  begin
    t := (Length(str) + 1);
    Result := t;
    for i := 0 to h do
    begin
      p := Pos(s[i], str);
      if ((p > 0) and (p < Result)) then
        Result := p;
    end;
    if (Result = t) then
      Result := 0;
  end else
    Result := 0;
end;

{==============================================================================]
  @action: Finds position from s items in str. Contains field for offset.
           The importance order for s items is from left to right (=>).
  @note: So, place the important ones first and then less important after those.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPosMultiEx(s: TStringArray; str: string; offset: Integer): Integer; callconv
var
  h, i, p, t: Integer;
begin
  h := High(s);
  if ((h > -1) and (str <> '')) then
  begin
    if (offset < 1) then
      offset := 1;
    t := (Length(str) + 1);
    Result := t;
    for i := 0 to h do
    begin
      p := StrPosEx(s[i], str, offset);
      if ((p > 0) and (p < Result)) then
        Result := p;
    end;
    if (Result = t) then
      Result := 0;
  end else
    Result := 0;
end;

{==============================================================================]
  @action: Finds position from s items in str. Stores the ID of the found s item to index variable.
           Contains field for offset.
           The importance order for s items is from left to right (=>).
  @note: So, place the important ones first and then less important after those.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrPosMultiIDEx(s: TStringArray; str: string; offset: Integer; var index: Integer): Integer; callconv
var
  h, i, p, t: Integer;
begin
  if (offset < 1) then
    offset := 1;
  Result := 0;
  index := -1;
  h := High(s);
  if ((h > -1) and (str <> '')) then
  begin
    t := (Length(str) + 1);
    Result := t;
    for i := 0 to h do
    begin
      p := StrPosEx(s[i], str, offset);
      if ((p > 0) and (p < Result)) then
      begin
        Result := p;
        index := i;
      end;
    end;
    if (Result = t) then
      Result := 0;
  end;
end;

{==============================================================================]
  @action: Returns the last s position in str.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLastPos(s, str: string): Integer; callconv
var
  l, p: Integer;
begin
  Result := 0;
  l := Length(str);
  if (Length(s) <= l) then
  begin
    p := 0;
    repeat
      p := StrPosEx(s, str, (p + 1));
      if (p > 0) then
        Result := p;
    until (p <= 0);
  end;
end;

{==============================================================================]
  @action: Returns the last s position in str. Contains field for offset.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrLastPosEx(s, str: string; offset: Integer): Integer; callconv
var
  l, p: Integer;
begin
  Result := 0;
  l := Length(str);
  if ((Length(s) > l) or (offset > l) or (offset < 1)) then
    Exit;
  p := 0;
  str := Copy(str, 1, offset);
  repeat
    p := StrPosEx(s, str, (p + 1));
    if (p > 0) then
      Result := p;
  until (p <= 0);
end;

{==============================================================================]
  @action: Returns the closest position of s found in str based on trgt_pos (target position).
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrClosestPos(s, str: string; trgt_pos: Integer): Integer; callconv
var
  strL, o, p: Integer;
begin
  Result := 0;
  strL := Length(str);
  if ((Length(s) <= strL) and (trgt_pos >= 1) and (trgt_pos <= strL)) then
  begin
    o := 0;
    repeat
      p := StrPosEx(s, str, (o + 1));
      if (p > 0) then
      begin
        if (Result = 0) then
          Result := p
        else
          if (Abs(trgt_pos - p) < Abs(trgt_pos - Result)) then
            Result := p
          else
            Exit;
        o := p;
      end;
    until (p <= 0);
  end;
end;

{==============================================================================]
  @action: Returns the farthest position of s found in str based on trgt_pos (target position).
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function StrFarthestPos(s, str: string; trgt_pos: Integer): Integer; callconv
var
  strL, o, p: Integer;
begin
  Result := 0;
  strL := Length(str);
  if ((Length(s) <= strL) and (trgt_pos >= 1) and (trgt_pos <= strL)) then
  begin
    o := 0;
    repeat
      p := StrPosEx(s, str, (o + 1));
      if (p > 0) then
      begin
        if (Result = 0) then
          Result := p
        else
          if (Abs(trgt_pos - p) > Abs(trgt_pos - Result)) then
            Result := p;
        o := p;
      end;
    until (p <= 0);
  end;
end;

{==============================================================================]
  @action: Outputs all s positions in str.
  @note: Doesn't allow string overlapping!
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrPosAll(s, str: string; var output: TIntegerArray); callconv
var
  sL, strL, o, p, r: Integer;
begin
  r := 0;
  sL := Length(s);
  strL := Length(str);
  if (sL <= strL) then
  begin
    o := 0;
    SetLength(output, strL);
    repeat
      p := StrPosEx(s, str, (o + 1));
      if (p > 0) then
      begin
        output[r] := p;
        o := p;
        Inc(r);
      end;
    until (p <= 0);
  end;
  SetLength(output, r);
end;

{==============================================================================]
  @action: Outputs all the s positions in str.
           ('aa', 'baaaah', False) => [2,3,4]
           ('aa', 'baaaah', True) => [2,4]
  @note: If overlap is set to true, strings can overlap.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrPosAllEx(s, str: string; overlap: Boolean; var output: TIntegerArray); callconv
var
  sL, strL, o, p, r: Integer;
begin
  r := 0;
  sL := Length(s);
  strL := Length(str);
  if (sL <= strL) then
  begin
    p := 0;
    if not overlap then
    begin
      o := Length(s);
      p := (p - (o - 1));
    end else
      o := 1;
    SetLength(output, ((strL div sL) + 1));
    repeat
      p := StrPosEx(s, str, (p + o));
      if (p > 0) then
      begin
        output[r] := p;
        Inc(r);
      end;
    until (p <= 0);
  end;
  SetLength(output, r);
end;

{==============================================================================]
  @action: Outputs all the s positions in str.
           ('aa', 'baaaah', False) => [2,3,4]
           ('aa', 'baaaah', True) => [2,4]
  @note: If overlap is set to true, strings can overlap.
  @contributors: Janilabo, slacky
[==============================================================================}

procedure StrPosAllMulti(s: TStringArray; str: string; overlap: Boolean; var output: TIntegerArray); callconv
var
  h, l, p, o, x, i, t, r, y, d: Integer;
begin
  r := 0;
  h := High(s);
  y := Length(str);
  if ((y > 0) and (h > -1)) then
  begin
    l := 0;
    SetLength(output, y);
    o := 1;
    repeat
      p := 0;
      x := 0;
      while (x <= h) do
      begin
        t := StrPosEx(s[x], str, (l + o));
        if (t < 1) then
        begin
          for d := x to (h - 1) do
            s[d] := s[(d + 1)];
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
        output[r] := p;
        Inc(r);
        l := p;
        if not overlap then
          o := Length(s[i]);
      end;
    until (p <= 0);
  end;
  SetLength(output, r);
end;
