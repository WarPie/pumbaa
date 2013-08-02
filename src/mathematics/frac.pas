{==============================================================================]
 @action: Returns the lowest decimal value.
          0.12345 => 0.00001 | 123.456 = 0.001 | 999.9 => 0.1
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function LFrac(e: Extended): Extended; callconv
var
  d: Extended;
begin
  d := Frac(e);
  if (d = 0) then
    Result := 0
  else
    if (d < 0) then
      Result := StrToFloat('-0,' + StringOfChar('0', (Length(FloatToStr(d)) - 4)) + '1')
    else
      Result := StrToFloat('0,' + StringOfChar('0', (Length(FloatToStr(d)) - 3)) + '1');
end;

{==============================================================================]
 @action: Returns the lowest decimal value.
          0.12345 => 0.00001 | 123.456 = 0.001 | 999.9 => 0.1
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function HFrac(e: Extended): Extended; callconv
var
  d: Extended;
begin
  d := Frac(e);
  if (d = 0) then
    Result := 0
  else
    if (d < 0) then
      Result := StrToFloat('-0,' + StringOfChar('9', (Length(FloatToStr(d)) - 3)))
    else
      Result := StrToFloat('0,' + StringOfChar('9', (Length(FloatToStr(d)) - 2)));
end;

{==============================================================================]
 @action: Returns x with decimal accuracy of a. Examples below with '123.456789'.
          a=0    a=1     a=2       a=3       a=4         a=5
          123   123.4   123.45   123.456   123.4567   123.45678
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function FracAcc(x: Extended; a: Integer): Extended; callconv
var
  d: Extended;
  z: Boolean;
begin
  Result := Int(Real(x));
  if (a > 0) then
  begin
    d := Frac(x);
    z := (d < 0.1);
    if z then
      d := (d + 0.1);
    Result := (Result + StrToFloatDef((',' + Copy(FloatToStr(d), 3, a)), 0));
    if z then
      Result := (Result - 0.1);
  end else
    Result := 0;
end;
