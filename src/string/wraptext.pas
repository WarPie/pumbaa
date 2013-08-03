{==============================================================================]
 @action: WrapText().
 @note: Delphi version: http://www.delphibasics.co.uk/RTL.asp?Name=WrapText
 @contributors: Janilabo, slacky
[==============================================================================}

function StrWrapText(str: string; maxCol: Integer): string; callconv
var
  a, i, l, p, t, b, c: Integer;
  o: Boolean;
begin
  l := Length(str);
  Result := '';
  if (l > 0) then
  begin
    i := 0;
    if (maxCol < 1) then
      maxCol := 1;
    a := 1;
    while ((i + a) <= l) do
    begin
      i := (i + a);
      p := (i + maxCol);
      b := l;
      o := False;
      for t := i to l do
      begin
        o := ((t >= p) and (b < l));
        if o then
          Break
        else
          if (Pos(str[t], ' '#9'-') > 0) then
             b := t;
      end;
      if not o then
        b := l;
      for c := i to b do
        Result := (Result + str[c]);
      if (b < l) then
        Result := (Result + #13#10);
      a := ((b - i) + 1);
      if (a < 1) then
        a := 1;
    end;
  end;
end;

function StrWrapTextEx(str, breakStr, breakChars: string; maxCol: Integer): string; callconv
var
  a, i, l, p, t, b, c: Integer;
  o: Boolean;
begin
  l := Length(str);
  Result := '';
  if (l > 0) then
    if ((breakStr <> '') and (breakChars <> '')) then
    begin
      i := 0;
      if (maxCol < 1) then
        maxCol := 1;
      a := 1;
      while ((i + a) <= l) do
      begin
        i := (i + a);
        p := (i + maxCol);
        b := l;
        o := False;
        for t := i to l do
        begin
          o := ((t >= p) and (b < l));
          if o then
            Break
          else
            if (Pos(str[t], breakChars) > 0) then
              b := t;
        end;
        if not o then
          b := l;
        for c := i to b do
          Result := (Result + str[c]);
        if (b < l) then
          Result := (Result + breakStr);
        a := ((b - i) + 1);
        if (a < 1) then
          a := 1;
      end;
    end else
      Result := str;
end;
