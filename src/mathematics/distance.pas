{==============================================================================]
 @action: Calculates the distance from pt1 to pt2.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

function Distance(pt1, pt2: TPoint; method: TDistanceMethod): Extended; callconv inline;
begin
  case method of
    dm_Euclidean: Result := Sqrt(Power((pt1.x - pt2.x), 2) + Power((pt1.y - pt2.y), 2));
    dm_Euclidean2: Result := Sqrt(Sqr(pt1.X - pt2.X) + Sqr(pt1.Y - pt2.Y));
    dm_Manhattan: Result := (Abs(pt1.x - pt2.x) + Abs(pt1.y - pt2.y)); 
    dm_Chebyshev: Result := Max(Abs(pt1.x - pt2.x), Abs(pt1.y - pt2.y));  
  end;
end;
