{$I mathematics\fix.pas}
{$I mathematics\convert.pas}
{$I mathematics\increase.pas}
{$I mathematics\decrease.pas}
{$I mathematics\random.pas}
{$I mathematics\range.pas}
{$I mathematics\distance.pas}
{$I mathematics\angle.pas}
{$I mathematics\difference.pas}
{$I mathematics\in.pas}
{$I mathematics\opposite.pas}
{$I mathematics\negative.pas}
{$I mathematics\compare.pas}
{$I mathematics\sign.pas}
{$I mathematics\percent.pas}
{$I mathematics\frac.pas}

procedure AddMathFunctions;
begin
  // fix
  AddFunction(@FixDegrees, 'function pp_FixDegrees(dgrs: Extended): Extended;');
  AddFunction(@FixRadians, 'function pp_FixRadians(rdns: Extended): Extended;');
  // convert
  AddFunction(@Degrees, 'function pp_Degrees(x: Extended; method: TAngleMethod): Extended;');
  AddFunction(@Radians, 'function pp_Radians(x: Extended; method: TAngleMethod): Extended;');
  AddFunction(@Compass, 'function pp_Compass(x: Extended; method: TAngleMethod): Extended;');
  // increase
  AddFunction(@Increase, 'function pp_Increase(var x: Integer): Integer;');
  AddFunction(@IncreaseE, 'function pp_Increase(var x: Extended): Extended; overload;');
  AddFunction(@IncreaseEx, 'function pp_Increase(var x: Integer; N: Integer): Integer; overload;');
  AddFunction(@IncreaseEEx, 'function pp_Increase(var x: Extended; N: Extended): Extended; overload;');
  // decrease
  AddFunction(@Decrease, 'function pp_Decrease(var x: Integer): Integer;');
  AddFunction(@DecreaseE, 'function pp_Decrease(var x: Extended): Extended; overload;');
  AddFunction(@DecreaseEx, 'function pp_Decrease(var x: Integer; N: Integer): Integer; overload;');
  AddFunction(@DecreaseEEx, 'function pp_Decrease(var x: Extended; N: Extended): Extended; overload;');
  // random
  AddFunction(@RandomBool, 'function pp_RandomBool: Boolean;');
  AddFunction(@RandomBoolEx, 'function pp_RandomBool(chance: Integer): Boolean; overload;');
  AddFunction(@Random2, 'function pp_Random(range: Integer): Integer;');
  AddFunction(@RandomRangeEx, 'procedure pp_RandomRangeEx(aFrom, aTo, amount: Integer; duplicates: Boolean; var output: TIntegerArray);');
  AddFunction(@RandomEx, 'procedure pp_RandomEx(range, amount: Integer; duplicates: Boolean; var output: TIntegerArray);');
  // distance
  AddFunction(@Distance, 'function pp_Distance(pt1, pt2: TPoint; method: TDistanceMethod): Extended;');
  // angle
  AddFunction(@Angle, 'function pp_Angle(pt1, pt2: TPoint; method: TAngleMethod): Extended;');
  // difference
  AddFunction(@Difference, 'function pp_Difference(value1, value2: Integer): Integer;');
  AddFunction(@DifferenceE, 'function pp_Difference(value1, value2: Extended): Extended; overload;');
  // in
  AddFunction(@InEllipse, 'function pp_InEllipse(pt, center: TPoint; XRadius, YRadius: Extended): Boolean;');
  AddFunction(@InCircle, 'function pp_InCircle(pt, center: TPoint; radius: Extended): Boolean;');
  AddFunction(@InBox, 'function pp_InBox(pt: TPoint; bx: TBox): Boolean;');
  // opposite
  AddFunction(@Opposite, 'function pp_Opposite(i: Integer): Integer;');
  AddFunction(@OppositeE, 'function pp_Opposite(e: Extended): Extended; overload;');
  // negative
  AddFunction(@Negative, 'function pp_Negative(i: Integer): Integer;');
  AddFunction(@NegativeE, 'function pp_Negative(e: Extended): Extended; overload;');
  // compare
  AddFunction(@Compare, 'function pp_Compare(v, x: Integer): Integer;');
  AddFunction(@CompareE, 'function pp_Compare(v, x: Extended): Integer; overload;');
  // sign
  AddFunction(@Sign, 'function pp_Sign(x: Integer): Integer;');
  AddFunction(@SignE, 'function pp_Sign(x: Extended): Integer; overload;');
  // range
  AddFunction(@InRange, 'function pp_InRange(value, aFrom, aTo: Integer): Boolean;');
  AddFunction(@InRangeE, 'function pp_InRange(value, aFrom, aTo: Extended): Boolean; overload;');
  AddFunction(@EnsureRange, 'procedure pp_EnsureRange(var val: Integer; aFrom, aTo: Integer);');
  AddFunction(@EnsureRangeE, 'procedure pp_EnsureRangeE(var val: Extended; aFrom, aTo: Extended); overload;');
  // percent
  AddFunction(@Percent, 'function pp_Percent(position, source: Extended): Extended;');
  AddFunction(@Percentage, 'function pp_Percentage(percent, source: Extended): Extended;');
  // frac
  AddFunction(@LFrac, 'function pp_LFrac(e: Extended): Extended;');
  AddFunction(@HFrac, 'function pp_HFrac(e: Extended): Extended;');
  AddFunction(@FracAcc, 'function pp_FracAcc(x: Extended; a: Integer): Extended;');
end;
