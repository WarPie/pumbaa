{==============================================================================]
  @action: Creates a TBox with X1,Y1,X2,Y2 values..
           Automatically corrects/fixes the incorrect values.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function Box(X1, Y1, X2, Y2: Integer): TBox; callconv
  procedure _Swap(var value1, value2: Integer);
  var
    s: Integer;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
begin
  Result.X1 := X1;
  Result.Y1 := Y1;
  Result.X2 := X2;
  Result.Y2 := Y2;
  if (Result.X1 > Result.X2) then
    _Swap(Result.X1, Result.X2);
  if (Result.Y1 > Result.Y2) then
    _Swap(Result.Y1, Result.Y2);
end;

{==============================================================================]
  @action: Calculates the amount of pixels in TBox (bx).
           Returns -1 with invalid TBox.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxSize(bx: TBox): Integer; callconv
begin
  if ((bx.X1 > bx.X2) or (bx.Y1 > bx.Y2)) then
    Result := -1
  else
    Result := (((bx.X2 - bx.X1) + 1) * ((bx.Y2 - bx.Y1) + 1));
end;

{==============================================================================]
  @action: Returns the center point from box (bx).
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxCenter(bx: TBox): TPoint; callconv
  procedure _Swap(var value1, value2: Integer);
  var
    s: Integer;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
begin
  if ((bx.X1 > bx.X2) or (bx.Y1 > bx.Y2)) then
  begin
    if (bx.X1 > bx.X2) then
      _Swap(bx.X1, bx.X2);
    if (bx.Y1 > bx.Y2) then
      _Swap(bx.Y1, bx.Y2);
  end;
  Result := Point(Round(bx.X1 + ((bx.X2 - bx.X1) div 2)), Round(bx.Y1 + ((bx.Y2 - bx.Y1) div 2)));
end;

{==============================================================================]
  @action: Creates box from point, where pt is the middle point of the box.
           wRadius = width radius, hRadius = height radius
  @note: Based on chebyshev distance!
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxFromPoint(pt: TPoint; wRadius, hRadius: Integer): TBox; callconv
begin
  if (wRadius < 0) then
    wRadius := 0;
  if (hRadius < 0) then
    hRadius := 0;
  Result.X1 := (pt.X - wRadius);
  Result.Y1 := (pt.Y - hRadius);
  Result.X2 := (pt.X + wRadius);
  Result.Y2 := (pt.Y + hRadius);
end;

{==============================================================================]
  Explanation: Creates box to point, where pt is the start point of the box.
               width and height can be positive or negative.
[==============================================================================}
function BoxToPoint(pt: TPoint; width, height: Integer): TBox; callconv
var
  o: TPoint;
begin
  if ((width < 0) or (height < 0)) then
  begin
    if (width < 0) then
      o.X := Integer(width);
    if (height < 0) then
      o.Y := Integer(height);
    pt.X := (pt.X + o.X);
    pt.Y := (pt.Y + o.Y);
  end;
  Result.X1 := pt.X;
  Result.Y1 := pt.Y;
  Result.X2 := (pt.X + Abs(width - 1));
  Result.Y2 := (pt.Y + Abs(height - 1));
end;

{==============================================================================]
  @action: Creates a TBox with 2 points (p1, p2)..
  @note: Automatically corrects/fixes the incorrect values.
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxByPoints(p1, p2: TPoint): TBox; callconv
begin
  Result.X1 := Min(p1.X, p2.X);
  Result.Y1 := Min(p1.Y, p2.Y);
  Result.X2 := Max(p1.X, p2.X);
  Result.Y2 := Max(p1.Y, p2.Y);
end;

{==============================================================================]
  @action: Combines 2 boxes (a and b) to 1 box.
  @note: Based on lowest / highest coordinate values.
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxCombine(a, b: TBox): TBox; callconv
begin
  Result.X1 := Min(Min(a.X1, a.X2), Min(b.X1, b.X2));
  Result.Y1 := Min(Min(a.Y1, a.Y2), Min(b.Y1, b.Y2));
  Result.X2 := Max(Max(a.X1, a.X2), Max(b.X1, b.X2));
  Result.Y2 := Max(Max(a.Y1, a.Y2), Max(b.Y1, b.Y2));
end;

{==============================================================================]
  @action: Returns true if inner_bx is in/within outer_bx boundaries.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxInBox(inner_bx, outer_bx: TBox): Boolean; callconv
begin
  Result := ((inner_bx.X1 >= outer_bx.X1) and (inner_bx.X1 <= outer_bx.X2) and (inner_bx.X2 >= outer_bx.X1) and (inner_bx.X2 <= outer_bx.X2) and (inner_bx.Y1 >= outer_bx.Y1) and (inner_bx.Y1 <= outer_bx.Y2) and (inner_bx.Y2 >= outer_bx.Y1) and (inner_bx.Y2 <= outer_bx.Y2));
end;

{==============================================================================]
  @action: Returns true if inner_bx is INSIDE outer_bx boundaries.
  @note: Performs different action than BoxInBox!
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxInsideBox(inner_bx, outer_bx: TBox): Boolean; callconv
begin
  Result := ((inner_bx.X1 > outer_bx.X1) and (inner_bx.X1 < outer_bx.X2) and (inner_bx.X2 > outer_bx.X1) and (inner_bx.X2 < outer_bx.X2) and (inner_bx.Y1 > outer_bx.Y1) and (inner_bx.Y1 < outer_bx.Y2) and (inner_bx.Y2 > outer_bx.Y1) and (inner_bx.Y2 < outer_bx.Y2));
end;

{==============================================================================]
  @action: Returns true if inner_bx is in/within any of the outer_bx boundaries.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxInBoxes(inner_bx: TBox; outer_bxs: TBoxArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(outer_bxs);
  Result := True;
  for i := 0 to h do
    if ((inner_bx.X1 >= outer_bxs[i].X1) and (inner_bx.X1 <= outer_bxs[i].X2) and (inner_bx.X2 >= outer_bxs[i].X1) and (inner_bx.X2 <= outer_bxs[i].X2) and (inner_bx.Y1 >= outer_bxs[i].Y1) and (inner_bx.Y1 <= outer_bxs[i].Y2) and (inner_bx.Y2 >= outer_bxs[i].Y1) and (inner_bx.Y2 <= outer_bxs[i].Y2)) then
      Exit;
  Result := False;
end;

{==============================================================================]
  @action: Returns true if inner_bx is INSIDE any of the outer_bxs boundaries.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxInsideBoxes(inner_bx: TBox; outer_bxs: TBoxArray): Boolean; callconv
var
  h, i: Integer;
begin
  h := High(outer_bxs);
  Result := True;
  for i := 0 to h do
    if ((inner_bx.X1 > outer_bxs[i].X1) and (inner_bx.X1 < outer_bxs[i].X2) and (inner_bx.X2 > outer_bxs[i].X1) and (inner_bx.X2 < outer_bxs[i].X2) and (inner_bx.Y1 > outer_bxs[i].Y1) and (inner_bx.Y1 < outer_bxs[i].Y2) and (inner_bx.Y2 > outer_bxs[i].Y1) and (inner_bx.Y2 < outer_bxs[i].Y2)) then
      Exit;
  Result := False;
end;

{==============================================================================]
  @action: Returns true if a and b are in anykind of contact with each other.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxesOverlap(a, b: TBox): Boolean; callconv
begin
  Result := not ((a.X1 > b.X2) or (a.X2 < b.X1) or (a.Y1 > b.Y2) or (a.Y2 < b.Y1));
end;

{==============================================================================]
  @action: Returns true if bx1 and bx2 are identical.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxesEqual(bx1, bx2: TBox): Boolean; callconv
begin
  Result := ((bx1.X1 = bx2.X1) and (bx1.Y1 = bx2.Y1) and (bx1.X2 = bx2.X2) and (bx1.Y2 = bx2.Y2));
end;

{==============================================================================]
  @action: Returns true if bx is valid (X1 <= X2 AND Y1 <= Y2).
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxValid(bx: TBox): Boolean; callconv
begin
  Result := ((bx.X1 <= bx.X2) and (bx.Y1 <= bx.Y2));
end;

{==============================================================================]
  @action: Stores dimensions from TBox (bx) to width and height variables
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

procedure BoxDimensions(bx: TBox; var width, height: Integer); callconv
begin
  width := ((bx.X2 - bx.X1) + 1);
  height := ((bx.Y2 - bx.Y1) + 1);
end;

{==============================================================================]
  @action: Returns true if the dimensions from boxes bx1 and bx2
           are within maxWDiff (max width differency) and maxHDiff (max height differency).
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxDimensionsSimilarEx(bx1, bx2: TBox; maxWDiff, maxHDiff: Integer): Boolean; callconv
begin
  Result := ((Abs(((bx2.X2 - bx2.X1) + 1) - ((bx1.X2 - bx1.X1) + 1)) <= maxWDiff) and (Abs(((bx2.Y2 - bx2.Y1) + 1) - ((bx1.Y2 - bx1.Y1) + 1)) <= maxHDiff));
end;

{==============================================================================]
  Explanation: Returns true if the dimensions from boxes bx1 and bx2
               are within diff (differency).
[==============================================================================}
function BoxDimensionsSimilar(bx1, bx2: TBox; diff: Integer): Boolean; callconv
begin
  Result := ((Abs(((bx2.X2 - bx2.X1) + 1) - ((bx1.X2 - bx1.X1) + 1)) <= diff) and (Abs(((bx2.Y2 - bx2.Y1) + 1) - ((bx1.Y2 - bx1.Y1) + 1)) <= diff));
end;

{==============================================================================]
  Explanation: Fixes the bx. Swaps incorrectly set values (XS/YS > XE/YE).
               Returns true if bx was fixed.
  Example: (200*, 100, 100*, 200) => (100, 100, 200, 200)
[==============================================================================}
function BoxFix(var bx: TBox): Boolean; callconv
  procedure _Swap(var value1, value2: Integer);
  var
    s: Integer;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  o: TBox;
begin
  o := bx;
  if (bx.X1 > bx.X2) then
    _Swap(bx.X1, bx.X2);
  if (bx.Y1 > bx.Y2) then
    _Swap(bx.Y1, bx.Y2);
  Result := ((o.X1 <> bx.X1) or (o.Y1 <> bx.Y1) or (o.X2 <> bx.X2) or (o.Y2 <> bx.Y2));
end;

{==============================================================================]
  @action: Set minimum / maximum size to bx.
           size.X1 = min. X1, size.Y1 = min. Y1, size.X2 = max. X2, size.Y2 = max. Y2
  @note: Returns true if constraints were set to bx.
  @contributors: Janilabo, slacky
[==============================================================================}

function BoxConstraint(var bx: TBox; size: TBox): Boolean; callconv
var
  tmp: TBox;
begin
  if ((size.X1 <= size.X2) and (size.Y1 <= size.Y2)) then
  begin
    tmp := TBox(bx);
    if (bx.X1 < size.X1) then
      bx.X1 := size.X1;
    if (bx.X1 > size.X2) then
      bx.X1 := size.X2;
    if (bx.Y1 < size.Y1) then
      bx.Y1 := size.Y1;
    if (bx.Y1 > size.Y2) then
      bx.Y1 := size.Y2;
    if (bx.X2 > size.X2) then
      bx.X2 := size.X2;
    if (bx.X2 < size.X1) then
      bx.X2 := size.X1;
    if (bx.Y2 > size.Y2) then
      bx.Y2 := size.Y2;
    if (bx.Y2 < size.Y1) then
      bx.Y2 := size.Y1;
    Result := ((bx.X1 <> tmp.X1) or (bx.Y1 <> tmp.Y1) or (bx.X2 <> tmp.X2) or (bx.Y2 <> tmp.Y2));
  end else
    Result := False;
end;
