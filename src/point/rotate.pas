{==============================================================================]
 @action: Rotates all points in TPA around center by an angle.
 @note: Supports custom angle methods with TAngleMethod.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPARotateEx(var TPA: TPointArray; center: TPoint; angle: Extended; method: TAngleMethod); callconv
var
  h, i, x, y: Integer;
  c, s: Extended;
begin
  h := High(TPA);
  if (h > -1) then
  begin
    angle := Radians(angle, method); // We need this bit here, because method is originally based on radians!
    c := Cos(angle);
    s := Sin(angle);
    for i := 0 to h do
    begin
      x := (TPA[i].X - center.X);
      y := (TPA[i].Y - center.Y);
      TPA[i].X := (Round((x * c) - (y * s)) + center.X);
      TPA[i].Y := (Round((x * s) + (y * c)) + center.Y);
    end;
  end;
end;

{==============================================================================]
 @action: Rotates all points in TPA around center by an angle.
 @note: Based on default angle method! (Degrees)
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPARotate(var TPA: TPointArray; center: TPoint; angle: Extended); callconv
begin
  TPARotateEx(TPA, center, angle, DEFAULT_ANGLE_METHOD);
end;
