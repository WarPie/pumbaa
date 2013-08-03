{==============================================================================]
 @action: Converts integer value (int) to digits of it.
          Example: 1234 => 1,2,3,4, -999 => 9,9,9
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure IntDigits(value: Int64; var output: TIntegerArray); callconv
var
  s: string;
  l, i: Integer;
begin
  s := IntToStr(Abs(value));
  l := Length(s);
  SetLength(output, l);
  for i := 0 to (l - 1) do
    output[i] := StrToInt(s[(i + 1)]);
end;
