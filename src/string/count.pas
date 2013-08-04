{==============================================================================]
  @action: Simply returns the count of s in str.
  @note: Doesn't allow overlapping.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCount(s, str: string): Integer; callconv
var
  p, sL: Integer;
begin
  Result := 0;
  p := 0;
  sL := Length(s);
  p := (p - (sL - 1));
  if (sL <= Length(str)) then
  repeat
    p := StrPosEx(s, str, (p + sL));
    if (p > 0) then
      Inc(Result);
  until (p <= 0);
end;

{==============================================================================]
  @action: Simply returns the count of s in str.
  @note: Contains support for overlapping (overlap)
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCountEx(s, str: string; overlap: Boolean): Integer; callconv
var
  p, o: Integer;
begin
  Result := 0;
  p := 0;
  if not overlap then
  begin
    o := Length(s);
    p := (p - (o - 1));
  end else
    o := 1;
  if (o <= Length(str)) then
  repeat
    p := StrPosEx(s, str, (p + o));
    if (p > 0) then
      Inc(Result);
  until (p <= 0);
end;

{==============================================================================]
  @action: Returns count of s items in str.
  @note: If overlap is True, strings can overlap.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCountMultiEx(s: TStringArray; str: string; overlap: Boolean): Integer; callconv
var
  h, l, p, o, i, t, x, y: Integer;
begin
  Result := 0;
  h := High(s);
  if (h > -1) then
  begin
    l := 0;
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
        if not overlap then
          o := Length(s[i]);
      end;
    until (p <= 0);
  end;
end;

{==============================================================================]
  @action: Returns count of s items in str.
  @note: Without support for overlapping.
  @contributors: Janilabo, slacky
[==============================================================================}

function StrCountMulti(s: TStringArray; str: string): Integer; callconv
begin
  Result := StrCountMultiEx(s, str, False);
end;
