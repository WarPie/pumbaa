{$I mathematics\fix.pas}
{$I mathematics\convert.pas}
{$I mathematics\random.pas}
{$I mathematics\distance.pas}
{$I mathematics\angle.pas}
{$I mathematics\difference.pas}
{$I mathematics\in.pas}
{$I mathematics\opposite.pas}
{$I mathematics\negative.pas}

procedure AddMathFunctions;
begin
  // fix
  AddFunction(@FixDegrees, 'function pp_FixDegrees(dgrs: Extended): Extended;');
  AddFunction(@FixRadians, 'function pp_FixRadians(rdns: Extended): Extended;');
  // convert
  AddFunction(@Degrees, 'function pp_Degrees(x: Extended; method: TAngleMethod): Extended;');
  AddFunction(@Radians, 'function pp_Radians(x: Extended; method: TAngleMethod): Extended;');
  AddFunction(@Compass, 'function pp_Compass(x: Extended; method: TAngleMethod): Extended;');
  // random
  AddFunction(@RandomBool, 'function pp_RandomBool: Boolean;');
  AddFunction(@RandomBoolEx, 'function pp_RandomBool(chance: Integer): Boolean; overload;');
  AddFunction(@Random2, 'function pp_Random(range: Integer): Integer;');
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
  AddFunction(@NegativeE, 'function pp_NegativeE(e: Extended): Extended; overload;');
end;
