{==============================================================================]
 @action: Offsets pt with radius & angle.
 @note: Supports custom angle methods with TAngleMethod.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure OffsetPointEx(var pt: TPoint; radius, angle: Extended; method: TAngleMethod); callconv
begin
  angle := Compass(angle, method); // We need this bit here, because this method was originally designed for COMPASS degrees.
  pt := Point(Round(radius * Sin(angle * (Pi / 180)) + pt.X), Round(-radius * Cos(angle * (Pi / 180)) + pt.Y));
end;

{==============================================================================]
 @action: Offsets pt with radius & angle.
 @note: Based on default angle method! (Degrees)
 @contributors: Janilabo, slacky
[==============================================================================}

procedure OffsetPointEx2(var pt: TPoint; radius, angle: Extended); callconv
begin
  OffsetPointEx(pt, radius, angle, DEFAULT_ANGLE_METHOD);
end;

{==============================================================================]
 @action: Offsets TPA using offset point.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure OffsetPoint(var pt: TPoint; offset: TPoint); callconv
begin
  pt.X := (pt.X + offset.X);
  pt.Y := (pt.Y + offset.Y);
end;

{==============================================================================]
 @action: Stores the offset from pt1 to pt2 to radius and angle.
 @note: Supports custom angle methods with TAngleMethod.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure GetOffsetFromPointsEx(pt1, pt2: TPoint; var radius, angle: Extended; method: TAngleMethod); callconv
var
  X, Y: Integer;
begin
  X := (pt2.X - pt1.X);
  Y := (pt2.Y - pt1.Y);
  radius := Sqrt(Power(X, 2) + Power(Y, 2));
  angle := ((ArcTan2(Y, X) * (180 / Pi)) + 90.0);
  if (angle < 0.0) then
    angle := (angle + 360.0);
  case method of // We need this bit here, because this method was originally designed for COMPASS degrees.
    am_Degrees: angle := Degrees(angle, am_Compass);
    am_Radians: angle := Radians(angle, am_Compass);
  end;
end;

{==============================================================================]
 @action: Stores the offset from pt1 to pt2 to radius and angle.
 @note: Based on default angle method! (Degrees)
 @contributors: Janilabo, slacky
[==============================================================================}

procedure GetOffsetFromPoints(pt1, pt2: TPoint; var radius, angle: Extended); callconv
begin
  GetOffsetFromPointsEx(pt1, pt2, radius, angle, DEFAULT_ANGLE_METHOD);
end;

{==============================================================================]
 @action: Offsets TPA using offset point.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAOffset(var TPA: TPointArray; offset: TPoint); callconv
var
  h, i: Integer;
begin
  h := High(TPA);
  for i := 0 to h do
  begin
    TPA[i].X := (TPA[i].X + offset.X);
    TPA[i].Y := (TPA[i].Y + offset.Y);
  end;
end;

{==============================================================================]
 @action: Offsets TPA using radius & angle.
 @note: Supports custom angle methods with TAngleMethod.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAOffsetEx(var TPA: TPointArray; radius, angle: Extended; method: TAngleMethod); callconv
var
  h, i: Integer;
begin
  h := High(TPA);
  angle := Compass(angle, method); // We need this bit here, because this method was originally designed for COMPASS degrees.
  for i := 0 to h do
  begin
    TPA[i].X := Round(radius * Sin(angle * (Pi / 180)) + TPA[i].X);
    TPA[i].Y := Round(-radius * Cos(angle * (Pi / 180)) + TPA[i].Y);
  end;
end;

{==============================================================================]
 @action: Offsets TPA using radius & angle.
 @note: Based on default angle method! (Degrees)
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAOffsetEx2(var TPA: TPointArray; radius, angle: Extended); callconv
begin
  TPAOffsetEx(TPA, radius, angle, DEFAULT_ANGLE_METHOD);
end;
