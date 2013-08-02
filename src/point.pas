{$I point\floodfill.pas}
{$I point\split.pas}
{$I point\group.pas}
{$I point\from.pas}
{$I point\step.pas}
{$I point\value.pas}
{$I point\density.pas}
{$I point\center.pas}
{$I point\extract.pas}
{$I point\filter.pas}

procedure AddPointFunctions;
begin
  // floodfill
  AddFunction(@TPAFloodFill, 'procedure pp_TPAFloodFill(TPA: TPointArray; start: TPoint; FF8W: Boolean; var output: TPointArray);');
  AddFunction(@TPAFloodFillEx, 'procedure pp_TPAFloodFill(TPA: TPointArray; start: TPoint; FF8W: Boolean; area: TBox; var output: TPointArray); overload;');
  // split
  AddFunction(@TPASplit, 'procedure pp_TPASplit(TPA: TPointArray; distance: Extended; method: TDistanceMethod; var output: T2DPointArray);');
  AddFunction(@TPASplitEx, 'procedure pp_TPASplit(TPA: TPointArray; minDistance, maxDistance: Extended; method: TDistanceMethod; var output: T2DPointArray); overload;');
  // group
  AddFunction(@TPAGroup, 'procedure pp_TPAGroup(TPA: TPointArray; distance: Extended; method: TDistanceMethod; var output: T2DPointArray);');
  AddFunction(@TPAGroupEx, 'procedure pp_TPAGroup(TPA: TPointArray; minDistance, maxDistance: Extended; method: TDistanceMethod; var output: T2DPointArray); overload;');
  // from
  AddFunction(@TPAFromLine, 'procedure pp_TPAFromLine(lineStart, lineEnd: TPoint; var output: TPointArray);');
  AddFunction(@TPAFromPolygon, 'procedure pp_TPAFromPolygon(shape: TPointArray; var output: TPointArray);');
  AddFunction(@TPAFromEllipse, 'procedure pp_TPAFromEllipse(center: TPoint; XRadius, YRadius: Extended; var output: TPointArray);');
  AddFunction(@TPAFromCircle, 'procedure pp_TPAFromCircle(center: TPoint; radius: Extended; var output: TPointArray);');
  AddFunction(@TPAFromXagon, 'procedure pp_TPAFromXagon(sides: Integer; C, S: TPoint; var output: TPointArray);');
  // step
  AddFunction(@StepCount, 'function pp_StepCount(fromPt, toPt: TPoint): Integer;');
  AddFunction(@GetStep, 'function pp_GetStep(fromPt, toPt: TPoint; step: Integer): TPoint;');
  // value
  AddFunction(@TPAXValues, 'procedure pp_TPAXValues(TPA: TPointArray; var output: TIntegerArray);');
  AddFunction(@TPAYValues, 'procedure pp_TPAYValues(TPA: TPointArray; var output: TIntegerArray);');
  AddFunction(@TPASwapValues, 'procedure pp_TPASwapValues(var TPA: TPointArray);');
  // density
  AddFunction(@TPADensity, 'function pp_TPADensity(TPA: TPointArray): Extended;');
  // center
  AddFunction(@TPACenter, 'function pp_TPACenter(TPA: TPointArray): TPoint;');
  // extract
  AddFunction(@TPAExtractBoxes, 'procedure pp_TPAExtractBoxes(var TPA: TPointArray; boxes: TBoxArray);');
  AddFunction(@TPAExtractPoints, 'procedure pp_TPAExtractPoints(var TPA: TPointArray; points: TPointArray);');
  AddFunction(@TPAExtractNearbyPoints, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod);');
  AddFunction(@TPAExtractNearbyPointsEx, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); overload;');
  // filter
  AddFunction(@TPAFilterBoxes, 'procedure pp_TPAFilterBoxes(var TPA: TPointArray; boxes: TBoxArray);');
  AddFunction(@TPAFilterPoints, 'procedure pp_TPAFilterPoints(var TPA: TPointArray; points: TPointArray);');
  AddFunction(@TPAFilterNearbyPoints, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod);');
  AddFunction(@TPAFilterNearbyPointsEx, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); overload;');
end;
