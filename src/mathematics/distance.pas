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
