{==============================================================================]
 @action: Calculates the distance from pt1 to pt2.
 @note: Supports rounding method.
 @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
function DistanceEx(pt1, pt2: TPoint; method: TDistanceMethod; rounding: TRoundingMethod): Extended; callconv inline;
begin
  case method of
    dm_Euclidean: Result := Sqrt(Power((pt1.x - pt2.x), 2) + Power((pt1.y - pt2.y), 2));
    dm_Euclidean2: Result := Sqrt(Sqr(pt1.X - pt2.X) + Sqr(pt1.Y - pt2.Y));
    dm_SquaredEuclidean: Result := (((pt1.X - pt2.X) * (pt1.X - pt2.X)) + ((pt1.Y - pt2.Y) * (pt1.Y - pt2.Y)));
    dm_Manhattan: Result := (Abs(pt1.x - pt2.x) + Abs(pt1.y - pt2.y));
    dm_Chebyshev: Result := Max(Abs(pt1.x - pt2.x), Abs(pt1.y - pt2.y));
  end;
  if (rounding <> rm_None) then
  case rounding of
    rm_Round: Result := Extended(Round(Result));
    rm_Trunc: Result := Extended(Trunc(Result));
    rm_Floor: Result := Extended(Floor(Result));
    rm_Ceil: Result := Extended(Ceil(Result));
  end;
end;

{==============================================================================]
 @action: Calculates the distance from pt1 to pt2.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// Without distance method.
function Distance2(pt1, pt2: TPoint; rounding: TRoundingMethod): Extended; callconv inline;
begin
  Result := DistanceEx(pt1, pt2, DEFAULT_DISTANCE_METHOD, rounding);
end;

// Without rounding method.
function Distance3(pt1, pt2: TPoint; method: TDistanceMethod): Extended; callconv inline;
begin
  Result := DistanceEx(pt1, pt2, method, rm_None);
end;

// Without distance and rounding methods.
function Distance(pt1, pt2: TPoint): Extended; callconv inline;
begin
  Result := DistanceEx(pt1, pt2, DEFAULT_DISTANCE_METHOD, rm_None);
end;

{==============================================================================]
 @action: Calculates ALL the distances from TPA to pt and outputs em.
 @note: Supports rounding method.
        There is a really GOOD reason to why I wrote this long version, instead of using any shorter ways to do this;
        This way we can/will keep the speed a lot faster with all bigger TPAs (less checking inside the loop)
        For bigger arrays all the speed we can get is welcome... So it's worth keeping this as it is now.
 @contributors: Janilabo, slacky
[==============================================================================}

// With distance and rounding methods.
procedure DistancesEx(TPA: TPointArray; pt: TPoint; method: TDistanceMethod; rounding: TRoundingMethod; var output: TExtendedArray); callconv
var
  h, i: Integer;
begin
  h := High(TPA);
  SetLength(output, (h + 1));
  if (h > -1) then
  case method of
    dm_Euclidean:
    if (rounding <> rm_None) then
    begin
      case rounding of
        rm_Round:
        for i := 0 to h do
          output[i] := Extended(Round(Sqrt(Power((TPA[i].x - pt.x), 2) + Power((TPA[i].y - pt.y), 2))));
        rm_Trunc:
        for i := 0 to h do
          output[i] := Extended(Trunc(Sqrt(Power((TPA[i].x - pt.x), 2) + Power((TPA[i].y - pt.y), 2))));
        rm_Floor:
        for i := 0 to h do
          output[i] := Extended(Floor(Sqrt(Power((TPA[i].x - pt.x), 2) + Power((TPA[i].y - pt.y), 2))));
        rm_Ceil:
        for i := 0 to h do
          output[i] := Extended(Ceil(Sqrt(Power((TPA[i].x - pt.x), 2) + Power((TPA[i].y - pt.y), 2))));
      end;
    end else
      for i := 0 to h do
        output[i] := Sqrt(Power((TPA[i].x - pt.x), 2) + Power((TPA[i].y - pt.y), 2));
    dm_Euclidean2:
    if (rounding <> rm_None) then
    begin
      case rounding of
        rm_Round:
        for i := 0 to h do
          output[i] := Extended(Round(Sqrt(Sqr(TPA[i].X - pt.X) + Sqr(TPA[i].Y - pt.Y))));
        rm_Trunc:
        for i := 0 to h do
          output[i] := Extended(Trunc(Sqrt(Sqr(TPA[i].X - pt.X) + Sqr(TPA[i].Y - pt.Y))));
        rm_Floor:
        for i := 0 to h do
          output[i] := Extended(Floor(Sqrt(Sqr(TPA[i].X - pt.X) + Sqr(TPA[i].Y - pt.Y))));
        rm_Ceil:
        for i := 0 to h do
          output[i] := Extended(Ceil(Sqrt(Sqr(TPA[i].X - pt.X) + Sqr(TPA[i].Y - pt.Y))));
      end;
    end else
      for i := 0 to h do
        output[i] := Sqrt(Sqr(TPA[i].X - pt.X) + Sqr(TPA[i].Y - pt.Y));
    dm_SquaredEuclidean:
    if (rounding <> rm_None) then
    begin
      case rounding of
        rm_Round:
        for i := 0 to h do
          output[i] := Extended(Round((((TPA[i].X - pt.X) * (TPA[i].X - pt.X)) + ((TPA[i].Y - pt.Y) * (TPA[i].Y - pt.Y)))));
        rm_Trunc:
        for i := 0 to h do
          output[i] := Extended(Trunc((((TPA[i].X - pt.X) * (TPA[i].X - pt.X)) + ((TPA[i].Y - pt.Y) * (TPA[i].Y - pt.Y)))));
        rm_Floor:
        for i := 0 to h do
          output[i] := Extended(Floor((((TPA[i].X - pt.X) * (TPA[i].X - pt.X)) + ((TPA[i].Y - pt.Y) * (TPA[i].Y - pt.Y)))));
        rm_Ceil:
        for i := 0 to h do
          output[i] := Extended(Ceil((((TPA[i].X - pt.X) * (TPA[i].X - pt.X)) + ((TPA[i].Y - pt.Y) * (TPA[i].Y - pt.Y)))));
      end;
    end else
      for i := 0 to h do
        output[i] := (((TPA[i].X - pt.X) * (TPA[i].X - pt.X)) + ((TPA[i].Y - pt.Y) * (TPA[i].Y - pt.Y)));
    dm_Manhattan:
    if (rounding <> rm_None) then
    begin
      case rounding of
        rm_Round:
        for i := 0 to h do
          output[i] := Extended(Round((Abs(TPA[i].x - pt.x) + Abs(TPA[i].y - pt.y))));
        rm_Trunc:
        for i := 0 to h do
          output[i] := Extended(Trunc((Abs(TPA[i].x - pt.x) + Abs(TPA[i].y - pt.y))));
        rm_Floor:
        for i := 0 to h do
          output[i] := Extended(Floor((Abs(TPA[i].x - pt.x) + Abs(TPA[i].y - pt.y))));
        rm_Ceil:
        for i := 0 to h do
          output[i] := Extended(Ceil((Abs(TPA[i].x - pt.x) + Abs(TPA[i].y - pt.y))));
      end;
    end else
      for i := 0 to h do
        output[i] := (Abs(TPA[i].x - pt.x) + Abs(TPA[i].y - pt.y));
    dm_Chebyshev:
    if (rounding <> rm_None) then
    begin
      case rounding of
        rm_Round:
        for i := 0 to h do
          output[i] := Extended(Round(Max(Abs(TPA[i].x - pt.x), Abs(TPA[i].y - pt.y))));
        rm_Trunc:
        for i := 0 to h do
          output[i] := Extended(Trunc(Max(Abs(TPA[i].x - pt.x), Abs(TPA[i].y - pt.y))));
        rm_Floor:
        for i := 0 to h do
          output[i] := Extended(Floor(Max(Abs(TPA[i].x - pt.x), Abs(TPA[i].y - pt.y))));
        rm_Ceil:
        for i := 0 to h do
          output[i] := Extended(Ceil(Max(Abs(TPA[i].x - pt.x), Abs(TPA[i].y - pt.y))));
      end;
    end else
      for i := 0 to h do
        output[i] := Max(Abs(TPA[i].x - pt.x), Abs(TPA[i].y - pt.y));
  end;
end;

{==============================================================================]
 @action: Calculates ALL the distances from TPA to pt.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// Without distance method.
procedure Distances2(TPA: TPointArray; pt: TPoint; rounding: TRoundingMethod; var output: TExtendedArray); callconv
begin
  DistancesEx(TPA, pt, DEFAULT_DISTANCE_METHOD, rounding, output);
end;

// Without rounding method.
procedure Distances3(TPA: TPointArray; pt: TPoint; method: TDistanceMethod; var output: TExtendedArray); callconv
begin
  DistancesEx(TPA, pt, method, rm_None, output);
end;

// Without distance and rounding methods.
procedure Distances(TPA: TPointArray; pt: TPoint; var output: TExtendedArray); callconv
begin
  DistancesEx(TPA, pt, DEFAULT_DISTANCE_METHOD, rm_None, output);
end;
