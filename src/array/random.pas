{==============================================================================]
 @action: Randomizes arr.
          Example: [(0, 0), (1, 1), (2, 2)] => [(1, 1), (2, 2), (0, 0)]
          The higher count of shuffles is, the "stronger" randomization you'll get.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RandomizeExTPA(var arr: TPointArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: TPoint); inline;
  var
    s: TPoint;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

// TIntegerArray
procedure RandomizeExTIA(var arr: TIntegerArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: Integer); inline;
  var
    s: Integer;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

// TExtendedArray
procedure RandomizeExTEA(var arr: TExtendedArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: Extended); inline;
  var
    s: Extended;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

// TStringArray
procedure RandomizeExTSA(var arr: TStringArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: string); inline;
  var
    s: string;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

// TCharArray
procedure RandomizeExTCA(var arr: TCharArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: Char); inline;
  var
    s: Char;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

// TBoolArray
procedure RandomizeExTBoA(var arr: TBoolArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: Boolean); inline;
  var
    s: Boolean;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

// TBoxArray
procedure RandomizeExTBA(var arr: TBoxArray; shuffles: Integer); callconv
  procedure _Swap(var value1, value2: TBox); inline;
  var
    s: TBox;
  begin
    s := value1;
    value1 := value2;
    value2 := s;
  end;
var
  l, i, t: Integer;
begin
  l := Length(arr);
  if ((l > 1) and (shuffles > 0)) then
    for t := 1 to shuffles do
      for i := 0 to (l - 1) do
        _Swap(arr[Random(l)], arr[Random(l)]);
end;

{==============================================================================]
 @action: Randomizes arr.
          Example: [(0, 0), (1, 1), (2, 2)] => [(1, 1), (2, 2), (0, 0)]
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RandomizeTPA(var arr: TPointArray); callconv
begin
  RandomizeExTPA(arr, (1 + Random(2)));
end;

// TIntegerArray
procedure RandomizeTIA(var arr: TIntegerArray); callconv
begin
  RandomizeExTIA(arr, (1 + Random(2)));
end;

// TExtendedArray
procedure RandomizeTEA(var arr: TExtendedArray); callconv
begin
  RandomizeExTEA(arr, (1 + Random(2)));
end;

// TStringArray
procedure RandomizeTSA(var arr: TStringArray); callconv
begin
  RandomizeExTSA(arr, (1 + Random(2)));
end;

// TCharArray
procedure RandomizeTCA(var arr: TCharArray); callconv
begin
  RandomizeExTCA(arr, (1 + Random(2)));
end;

// TBoolArray
procedure RandomizeTBoA(var arr: TBoolArray); callconv
begin
  RandomizeExTBoA(arr, (1 + Random(2)));
end;

// TBoxArray
procedure RandomizeTBA(var arr: TBoxArray); callconv
begin
  RandomizeExTBA(arr, (1 + Random(2)));
end;

{==============================================================================]
 @action: Returns random item from arr.
 @note: If arr is empty (length 0) then this will return "default" type value.
 @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
function RandomItemTPA(arr: TPointArray): TPoint; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
    Result := arr[Random(l)]
  else
    Result := Point(0, 0);
end;

// TIntegerArray
function RandomItemTIA(arr: TIntegerArray): Integer; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
    Result := arr[Random(l)]
  else
    Result := 0;
end;

// TExtendedArray
function RandomItemTEA(arr: TExtendedArray): Extended; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
    Result := arr[Random(l)]
  else
    Result := 0.0;
end;

// TStringArray
function RandomItemTSA(arr: TStringArray): string; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
    Result := arr[Random(l)]
  else
    Result := '';
end;

// TCharArray
function RandomItemTCA(arr: TCharArray): Char; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
    Result := arr[Random(l)]
  else
    Result := ' ';
end;

// TBoolArray
function RandomItemTBoA(arr: TBoolArray): Boolean; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l > 0) then
    Result := arr[Random(l)]
  else
    Result := False;
end;

// TBoxArray
function RandomItemTBA(arr: TBoxArray): TBox; callconv
var
  l: Integer;
begin
  l := Length(arr);
  if (l < 1) then
  begin
    Result.X1 := 0;
    Result.Y1 := 0;
    Result.X2 := 0;
    Result.Y2 := 0;
  end else
    Result := arr[Random(l)];
end;
