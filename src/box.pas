{$I box\resize.pas}
{$I box\centralization.pas}
{$I box\various.pas}

procedure AddBoxFunctions;
begin
  // various
  AddFunction(@Box, 'function pp_Box(X1, Y1, X2, Y2: Integer): TBox;');
  AddFunction(@BoxSize, 'function pp_BoxSize(bx: TBox): Integer;');
  AddFunction(@BoxCenter, 'function pp_BoxCenter(bx: TBox): TPoint;');
  AddFunction(@BoxFromPoint, 'function pp_BoxFromPoint(pt: TPoint; wRadius, hRadius: Integer): TBox;');
  AddFunction(@BoxToPoint, 'function pp_BoxToPoint(pt: TPoint; width, height: Integer): TBox;');
  AddFunction(@BoxByPoints, 'function pp_BoxByPoints(p1, p2: TPoint): TBox;');
  AddFunction(@BoxCombine, 'function pp_BoxCombine(a, b: TBox): TBox;');
  AddFunction(@BoxInBox, 'function pp_BoxIn(inner_bx, outer_bx: TBox): Boolean;');
  AddFunction(@BoxInBoxes, 'function pp_BoxIn(inner_bx: TBox; outer_bxs: TBoxArray): Boolean; overload;');
  AddFunction(@BoxInsideBox, 'function pp_BoxInside(inner_bx, outer_bx: TBox): Boolean;');
  AddFunction(@BoxInsideBoxes, 'function pp_BoxInside(inner_bx: TBox; outer_bxs: TBoxArray): Boolean; overload;');
  AddFunction(@BoxesOverlap, 'function pp_BoxesOverlap(a, b: TBox): Boolean;');
  AddFunction(@BoxesEqual, 'function pp_BoxesEqual(bx1, bx2: TBox): Boolean;');
  AddFunction(@BoxValid, 'function pp_BoxValid(bx: TBox): Boolean;');
  AddFunction(@BoxDimensions, 'procedure pp_BoxDimensions(bx: TBox; var width, height: Integer);');
  AddFunction(@BoxDimensionsSimilar, 'function pp_BoxDimensionsSimilar(bx1, bx2: TBox; diff: Integer): Boolean;');
  AddFunction(@BoxDimensionsSimilarEx, 'function pp_BoxDimensionsSimilar(bx1, bx2: TBox; maxWDiff, maxHDiff: Integer): Boolean; overload;');
  AddFunction(@BoxFix, 'function pp_BoxFix(var bx: TBox): Boolean;');
  AddFunction(@BoxConstraint, 'function pp_BoxConstraint(var bx: TBox; size: TBox): Boolean;');
  // resize
  AddFunction(@BoxResize, 'procedure pp_BoxResize(var bx: TBox; sizeChange: Integer);');
  AddFunction(@BoxResizeEx, 'procedure pp_BoxResize(var bx: TBox; sizeChange: Integer; method: TResizeMethod); overload;');
  // centralization
  AddFunction(@BoxCentralization, 'procedure pp_BoxCentralization(var inner_bx: TBox; outer_bx: TBox);');
  AddFunction(@BoxCentralizationEx, 'procedure pp_BoxCentralization(var inner_bx: TBox; outer_bx: TBox; method: TCenterMethod); overload;');
end;
