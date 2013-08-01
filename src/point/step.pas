{==============================================================================]
 @action: Returns the total amount of point steps there is fromPt => toPt.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function StepCount(fromPt, toPt: TPoint): Integer; callconv inline;
begin
  if ((fromPt.X <> toPt.X) or (fromPt.Y <> toPt.Y)) then
    Result := Max((Max(fromPt.X, toPt.X) - Min(fromPt.X, toPt.X)), (Max(fromPt.Y, toPt.Y) - Min(fromPt.Y, toPt.Y)))
  else
    Result := 0;
end;

{==============================================================================]
 @action: Returns the point with step fromPt => toPt.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function GetStep(fromPt, toPt: TPoint; step: Integer): TPoint; callconv inline;
var
  e: Extended;
begin
  if not (((fromPt.X = toPt.X) and (fromPt.Y = toPt.Y)) or (step < 0) or (step > Max((Max(fromPt.X, toPt.X) - Min(fromPt.X, toPt.X)), (Max(fromPt.Y, toPt.Y) - Min(fromPt.Y, toPt.Y))))) then
  begin
    e := (step / Max(Round(Abs(fromPt.X - toPt.X)), Round(Abs(fromPt.Y - toPt.Y))));
    Result.X := (fromPt.X + Round((toPt.X - fromPt.X) * e));
    Result.Y := (fromPt.Y + Round((toPt.Y - fromPt.Y) * e));
  end else
    Result := Point(0, 0);
end;
