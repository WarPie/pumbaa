{==============================================================================]
 @action: Returns true if pt is inside the given ellipse,
          defined by the center point and radius. 
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function InEllipse(pt, center: TPoint; XRadius, YRadius: Extended): Boolean; callconv inline;
begin
  Result := (Sqr((pt.X - center.X) / XRadius) + Sqr((pt.Y - center.Y) / YRadius) <= 1);
end;

{==============================================================================]
 @action: Returns true if pt is inside the given circle,
          defined by the center point and radius.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function InCircle(pt, center: TPoint; radius: Extended): Boolean; callconv inline;
begin
  Result := (Sqr((pt.X - center.X) / radius) + Sqr((pt.Y - center.Y) / radius) <= 1);
end;

{==============================================================================]
 @action: Returns true if pt is inside the given box (bx).
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function InBox(pt: TPoint; bx: TBox): Boolean; callconv inline;
begin
  Result := ((pt.X >= bx.X1) and (pt.Y >= bx.Y1) and (pt.X <= bx.X2) and (pt.Y >= bx.Y2));
end;
