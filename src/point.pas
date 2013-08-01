{$I point\floodfill.pas}
{$I point\split.pas}
{$I point\group.pas}
{$I point\from.pas}
{$I point\step.pas}

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
end;
