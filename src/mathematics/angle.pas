{==============================================================================]
 @action: Calculates the angle from pt1 to pt2.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Angle(pt1, pt2: TPoint; method: TAngleMethod): Extended; callconv inline;
begin
  case method of
    am_Degrees: Result := FixDegrees(ArcTan2((pt2.Y - pt1.Y), (pt2.X - pt1.X)) * (180.0 / Pi));
    am_Radians: Result := FixRadians(ArcTan2((pt2.Y - pt1.Y), (pt2.X - pt1.X)));
    am_Compass: Result := FixDegrees((ArcTan2((pt2.Y - pt1.Y), (pt2.X - pt1.X)) * (180.0 / Pi)) + 90.0);
  end;
end;
