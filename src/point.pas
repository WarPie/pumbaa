{$I point\sort.pas}
{$I point\unique.pas}
{$I point\offset.pas}
{$I point\floodfill.pas}
{$I point\split.pas}
{$I point\group.pas}
{$I point\from.pas}
{$I point\step.pas}
{$I point\value.pas}
{$I point\calculation.pas}
{$I point\extract.pas}
{$I point\filter.pas}
{$I point\box.pas}
{$I point\invert.pas}
{$I point\edge.pas}
{$I point\grid.pas}
{$I point\rotate.pas}
{$I point\distance.pas}

procedure AddPointFunctions;
begin
  // sort
  AddFunction(@TPASortByRow, 'procedure pp_TPASortByRow(var TPA: TPointArray);');
  AddFunction(@TPASortByColumn, 'procedure pp_TPASortByColumn(var TPA: TPointArray);');
  // unique
  AddFunction(@TPAUnique, 'procedure pp_TPAUnique(var TPA: TPointArray);');
  // offset
  AddFunction(@OffsetPoint, 'procedure OffsetPoint(var pt: TPoint; offset: TPoint);');
  AddFunction(@OffsetPointEx2, 'procedure pp_OffsetPoint(var pt: TPoint; radius, angle: Extended); overload;');
  AddFunction(@OffsetPointEx, 'procedure pp_OffsetPoint(var pt: TPoint; radius, angle: Extended; method: TAngleMethod); overload;');
  AddFunction(@GetOffsetFromPoints, 'procedure pp_GetOffsetFromPoints(pt1, pt2: TPoint; var radius, angle: Extended);');
  AddFunction(@GetOffsetFromPointsEx, 'procedure pp_GetOffsetFromPoints(pt1, pt2: TPoint; var radius, angle: Extended; method: TAngleMethod); overload;');
  AddFunction(@TPAOffset, 'procedure pp_TPAOffset(var TPA: TPointArray; offset: TPoint);');
  AddFunction(@TPAOffsetEx2, 'procedure pp_TPAOffset(var TPA: TPointArray; radius, angle: Extended); overload;');
  AddFunction(@TPAOffsetEx, 'procedure pp_TPAOffset(var TPA: TPointArray; radius, angle: Extended; method: TAngleMethod); overload;');
  // floodfill
  AddFunction(@TPAFloodFill, 'procedure pp_TPAFloodFill(TPA: TPointArray; start: TPoint; scan: TScanDirections; var output: TPointArray);');
  AddFunction(@TPAFloodFillEx, 'procedure pp_TPAFloodFill(TPA: TPointArray; start: TPoint; scan: TScanDirections; area: TBox; var output: TPointArray); overload;');
  // split
  AddFunction(@TPASplit4, 'procedure pp_TPASplit(TPA: TPointArray; dist: Extended; var output: T2DPointArray);');
  AddFunction(@TPASplit3, 'procedure pp_TPASplit(TPA: TPointArray; dist: Extended; method: TDistanceMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPASplit2, 'procedure pp_TPASplit(TPA: TPointArray; dist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPASplit, 'procedure pp_TPASplit(TPA: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPASplitEx4, 'procedure pp_TPASplit(TPA: TPointArray; minDist, maxDist: Extended; var output: T2DPointArray); overload;');
  AddFunction(@TPASplitEx3, 'procedure pp_TPASplit(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPASplitEx2, 'procedure pp_TPASplit(TPA: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPASplitEx, 'procedure pp_TPASplit(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  // group
  AddFunction(@TPAGroup4, 'procedure pp_TPAGroup(TPA: TPointArray; dist: Extended; var output: T2DPointArray);');
  AddFunction(@TPAGroup3, 'procedure pp_TPAGroup(TPA: TPointArray; dist: Extended; method: TDistanceMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPAGroup2, 'procedure pp_TPAGroup(TPA: TPointArray; dist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPAGroup, 'procedure pp_TPAGroup(TPA: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPAGroupEx4, 'procedure pp_TPAGroup(TPA: TPointArray; minDist, maxDist: Extended; var output: T2DPointArray); overload;');
  AddFunction(@TPAGroupEx3, 'procedure pp_TPAGroup(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPAGroupEx2, 'procedure pp_TPAGroup(TPA: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
  AddFunction(@TPAGroupEx, 'procedure pp_TPAGroup(TPA: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod; var output: T2DPointArray); overload;');
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
  // calculation
  AddFunction(@TPADensity, 'function pp_TPADensity(TPA: TPointArray): Extended;');
  AddFunction(@TPAMean, 'function pp_TPAMean(TPA: TPointArray): TPoint;');
  AddFunction(@TPACenter, 'function pp_TPACenter(TPA: TPointArray): TPoint;');
  AddFunction(@TPAMiddle, 'function pp_TPAMiddle(TPA: TPointArray): TPoint;');
  // extract
  AddFunction(@TPAExtractBoxes, 'procedure pp_TPAExtractBoxes(var TPA: TPointArray; boxes: TBoxArray);');
  AddFunction(@TPAExtractPoints, 'procedure pp_TPAExtractPoints(var TPA: TPointArray; points: TPointArray);');
  AddFunction(@TPAExtractNearbyPoints4, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended);');
  AddFunction(@TPAExtractNearbyPoints3, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod); overload;');
  AddFunction(@TPAExtractNearbyPoints2, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; rounding: TRoundingMethod); overload;');
  AddFunction(@TPAExtractNearbyPoints, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); overload;');
  AddFunction(@TPAExtractNearbyPointsEx4, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended); overload;');
  AddFunction(@TPAExtractNearbyPointsEx3, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); overload;');
  AddFunction(@TPAExtractNearbyPointsEx2, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod); overload;');
  AddFunction(@TPAExtractNearbyPointsEx, 'procedure pp_TPAExtractNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); overload;');
  // filter
  AddFunction(@TPAFilterBoxes, 'procedure pp_TPAFilterBoxes(var TPA: TPointArray; boxes: TBoxArray);');
  AddFunction(@TPAFilterPoints, 'procedure pp_TPAFilterPoints(var TPA: TPointArray; points: TPointArray);');
  AddFunction(@TPAFilterNearbyPoints4, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended);');
  AddFunction(@TPAFilterNearbyPoints3, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod); overload;');
  AddFunction(@TPAFilterNearbyPoints2, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; rounding: TRoundingMethod); overload;');
  AddFunction(@TPAFilterNearbyPoints, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; dist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); overload;');
  AddFunction(@TPAFilterNearbyPointsEx4, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended); overload;');
  AddFunction(@TPAFilterNearbyPointsEx3, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod); overload;');
  AddFunction(@TPAFilterNearbyPointsEx2, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; rounding: TRoundingMethod); overload;');
  AddFunction(@TPAFilterNearbyPointsEx, 'procedure pp_TPAFilterNearbyPoints(var TPA: TPointArray; targets: TPointArray; minDist, maxDist: Extended; method: TDistanceMethod; rounding: TRoundingMethod); overload;');
  // invert
  AddFunction(@TPAInvert, 'procedure pp_TPAInvert(var TPA: TPointArray);');
  // edge
  AddFunction(@TPAEdge, 'procedure pp_TPAEdge(var TPA: TPointArray);');
  AddFunction(@TPAEdgeEx, 'procedure pp_TPAEdge(var TPA: TPointArray; scan: TScanDirections); overload;');
  // grid
  AddFunction(@TPAGrid, 'procedure pp_TPAGrid(startPoint: TPoint; rows, columns, rowSpace, columnSpace: Integer; var output: TPointArray);');
  AddFunction(@TPARow, 'procedure pp_TPARow(startPoint: TPoint; rows, rowSpace: Integer; var output: TPointArray);');
  AddFunction(@TPAColumn, 'function pp_TPAColumn(startPoint: TPoint; columns, columnSpace: Integer): TPointArray;');
  // box
  AddFunction(@TPAUnusedBoxPixels, 'procedure pp_TPAUnusedBoxPixels(TPA: TPointArray; bx: TBox; var output: TPointArray);');
  AddFunction(@TPAUsedBoxPixels, 'procedure pp_TPAUsedBoxPixels(TPA: TPointArray; bx: TBox; var output: TPointArray);');
  // rotate
  AddFunction(@TPARotate, 'procedure pp_TPARotate(var TPA: TPointArray; center: TPoint; angle: Extended);');
  AddFunction(@TPARotateEx, 'procedure pp_TPARotate(var TPA: TPointArray; center: TPoint; angle: Extended; method: TAngleMethod); overload;');
  // distance
  AddFunction(@TPADistanceToPoint2, 'procedure pp_TPADistanceTo(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended);');
  AddFunction(@TPADistanceToPoint, 'procedure pp_TPADistanceTo(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended; method: TDistanceMethod); overload;');
  AddFunction(@TPADistanceToPointEx2, 'procedure pp_TPADistanceTo(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended; var minPoint, maxPoint: TPoint); overload;');
  AddFunction(@TPADistanceToPointEx, 'procedure pp_TPADistanceTo(TPA: TPointArray; target: TPoint; var minDist, maxDist: Extended; var minPoint, maxPoint: TPoint; method: TDistanceMethod); overload;');
end;
