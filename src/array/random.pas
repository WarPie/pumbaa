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

// T2DPointArray
function RandomItemATPA(arr: T2DPointArray): TPoint; callconv
var
  a: TPointArray;
  l: Integer;
begin
  MergeATPA(arr, a);
  l := Length(a);
  if (l > 0) then
    Result := a[Random(l)]
  else
    Result := Point(0, 0);
end;

// T2DIntegerArray
function RandomItemATIA(arr: T2DIntegerArray): Integer; callconv
var
  a: TIntegerArray;
  l: Integer;
begin
  MergeATIA(arr, a);
  l := Length(a);
  if (l > 0) then
    Result := a[Random(l)]
  else
    Result := 0;
end;

// T2DExtendedArray
function RandomItemATEA(arr: T2DExtendedArray): Extended; callconv
var
  a: TExtendedArray;
  l: Integer;
begin
  MergeATEA(arr, a);
  l := Length(a);
  if (l > 0) then
    Result := a[Random(l)]
  else
    Result := 0.0;
end;

// T2DStringArray
function RandomItemATSA(arr: T2DStringArray): string; callconv
var
  a: TStringArray;
  l: Integer;
begin
  MergeATSA(arr, a);
  l := Length(a);
  if (l > 0) then
    Result := a[Random(l)]
  else
    Result := '';
end;

// T2DCharArray
function RandomItemATCA(arr: T2DCharArray): Char; callconv
var
  a: TCharArray;
  l: Integer;
begin
  MergeATCA(arr, a);
  l := Length(a);
  if (l > 0) then
    Result := a[Random(l)]
  else
    Result := ' ';
end;

// T2DBoolArray
function RandomItemATBoA(arr: T2DBoolArray): Boolean; callconv
var
  a: TBoolArray;
  l: Integer;
begin
  MergeATBoA(arr, a);
  l := Length(a);
  if (l > 0) then
    Result := a[Random(l)]
  else
    Result := False;
end;

// T2DBoxArray
function RandomItemATBA(arr: T2DBoxArray): TBox; callconv
var
  a: TBoxArray;
  l: Integer;
begin
  MergeATBA(arr, a);
  l := Length(a);
  if (l < 1) then
  begin
    Result.X1 := 0;
    Result.Y1 := 0;
    Result.X2 := 0;
    Result.Y2 := 0;
  end else
    Result := a[Random(l)];
end;

{==============================================================================]
  @action: Returns random array of items from arr.
           Size being the amount of results.
  @note: Notice that duplicates parameter means if outputting items from only unique INDEXES is allowed!
         So, this procedure DOES NOT pay attention to duplicate values by arr.
         This means, that you will need to take care of those arr duplicates,
         before running this procedure, if you want only unique values.
  @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RandomItemsTPAEx(arr: TPointArray; size: Integer; duplicates: Boolean; var output: TPointArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTPA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// TIntegerArray
procedure RandomItemsTIAEx(arr: TIntegerArray; size: Integer; duplicates: Boolean; var output: TIntegerArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTIA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// TExtendedArray
procedure RandomItemsTEAEx(arr: TExtendedArray; size: Integer; duplicates: Boolean; var output: TExtendedArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTEA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// TStringArray
procedure RandomItemsTSAEx(arr: TStringArray; size: Integer; duplicates: Boolean; var output: TStringArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTSA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// TCharArray
procedure RandomItemsTCAEx(arr: TCharArray; size: Integer; duplicates: Boolean; var output: TCharArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTCA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// TBoolArray
procedure RandomItemsTBoAEx(arr: TBoolArray; size: Integer; duplicates: Boolean; var output: TBoolArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTBoA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// TBoxArray
procedure RandomItemsTBAEx(arr: TBoxArray; size: Integer; duplicates: Boolean; var output: TBoxArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetTBA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DPointArray
procedure RandomItemsATPAEx(arr: T2DPointArray; size: Integer; duplicates: Boolean; var output: TPointArray); callconv
var
  l: Integer;
  g: TIntegerArray;
  p: TPointArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATPA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTPA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

// T2DIntegerArray
procedure RandomItemsATIAEx(arr: T2DIntegerArray; size: Integer; duplicates: Boolean; var output: TIntegerArray); callconv
var
  l: Integer;
  g, p: TIntegerArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATIA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTIA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

// T2DExtendedArray
procedure RandomItemsATEAEx(arr: T2DExtendedArray; size: Integer; duplicates: Boolean; var output: TExtendedArray); callconv
var
  l: Integer;
  g: TIntegerArray;
  p: TExtendedArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATEA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTEA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

// T2DStringArray
procedure RandomItemsATSAEx(arr: T2DStringArray; size: Integer; duplicates: Boolean; var output: TStringArray); callconv
var
  l: Integer;
  g: TIntegerArray;
  p: TStringArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATSA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTSA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

// T2DCharArray
procedure RandomItemsATCAEx(arr: T2DCharArray; size: Integer; duplicates: Boolean; var output: TCharArray); callconv
var
  l: Integer;
  g: TIntegerArray;
  p: TCharArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATCA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTCA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

// T2DBoolArray
procedure RandomItemsATBoAEx(arr: T2DBoolArray; size: Integer; duplicates: Boolean; var output: TBoolArray); callconv
var
  l: Integer;
  g: TIntegerArray;
  p: TBoolArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATBoA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTBoA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

// T2DBoxArray
procedure RandomItemsATBAEx(arr: T2DBoxArray; size: Integer; duplicates: Boolean; var output: TBoxArray); callconv
var
  l: Integer;
  g: TIntegerArray;
  p: TBoxArray;
begin
  if (Length(arr) > 0) then
  begin
    MergeATBA(arr, p);
    l := Length(p);
    if (l > 0) then
    begin
      RandomRangeEx(0, l, size, duplicates, g);
      GetTBA(p, g, output);
    end else
      SetLength(output, 0);
  end else
    SetLength(output, 0);
end;

{==============================================================================]
  @action: Returns random array of items from arr.
           Size being the amount of results.
  @note: Based on RandomItemsTPAEx, collects items from only unique indexes.
         (duplicates = False)
  @contributors: Janilabo, slacky
[==============================================================================}

// TPointArray
procedure RandomItemsTPA(arr: TPointArray; size: Integer; var output: TPointArray); callconv
begin
  RandomItemsTPAEx(arr, size, False, output);
end;

// TIntegerArray
procedure RandomItemsTIA(arr: TIntegerArray; size: Integer; var output: TIntegerArray); callconv
begin
  RandomItemsTIAEx(arr, size, False, output);
end;

// TExtendedArray
procedure RandomItemsTEA(arr: TExtendedArray; size: Integer; var output: TExtendedArray); callconv
begin
  RandomItemsTEAEx(arr, size, False, output);
end;

// TStringArray
procedure RandomItemsTSA(arr: TStringArray; size: Integer; var output: TStringArray); callconv
begin
  RandomItemsTSAEx(arr, size, False, output);
end;

// TCharArray
procedure RandomItemsTCA(arr: TCharArray; size: Integer; var output: TCharArray); callconv
begin
  RandomItemsTCAEx(arr, size, False, output);
end;

// TBoolArray
procedure RandomItemsTBoA(arr: TBoolArray; size: Integer; var output: TBoolArray); callconv
begin
  RandomItemsTBoAEx(arr, size, False, output);
end;

// TBoxArray
procedure RandomItemsTBA(arr: TBoxArray; size: Integer; var output: TBoxArray); callconv
begin
  RandomItemsTBAEx(arr, size, False, output);
end;

// T2DPointArray
procedure RandomItemsATPA(arr: T2DPointArray; size: Integer; var output: TPointArray); callconv
begin
  RandomItemsATPAEx(arr, size, False, output);
end;

// T2DIntegerArray
procedure RandomItemsATIA(arr: T2DIntegerArray; size: Integer; var output: TIntegerArray); callconv
begin
  RandomItemsATIAEx(arr, size, False, output);
end;

// T2DExtendedArray
procedure RandomItemsATEA(arr: T2DExtendedArray; size: Integer; var output: TExtendedArray); callconv
begin
  RandomItemsATEAEx(arr, size, False, output);
end;

// T2DStringArray
procedure RandomItemsATSA(arr: T2DStringArray; size: Integer; var output: TStringArray); callconv
begin
  RandomItemsATSAEx(arr, size, False, output);
end;

// T2DCharArray
procedure RandomItemsATCA(arr: T2DCharArray; size: Integer; var output: TCharArray); callconv
begin
  RandomItemsATCAEx(arr, size, False, output);
end;

// T2DBoolArray
procedure RandomItemsATBoA(arr: T2DBoolArray; size: Integer; var output: TBoolArray); callconv
begin
  RandomItemsATBoAEx(arr, size, False, output);
end;

// T2DBoxArray
procedure RandomItemsATBA(arr: T2DBoxArray; size: Integer; var output: TBoxArray); callconv
begin
  RandomItemsATBAEx(arr, size, False, output);
end;

// NOTE: BELOW COMMANDS RETURN RANDOM ARRAYS FROM T2D ARRAY!
// So, they aren't anymore based on ITEMS/VALUES like the ones up there are.

// T2DPointArray
procedure RandomItemsArrATPAEx(arr: T2DPointArray; size: Integer; duplicates: Boolean; var output: T2DPointArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATPA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DIntegerArray
procedure RandomItemsArrATIAEx(arr: T2DIntegerArray; size: Integer; duplicates: Boolean; var output: T2DIntegerArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATIA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DExtendedArray
procedure RandomItemsArrATEAEx(arr: T2DExtendedArray; size: Integer; duplicates: Boolean; var output: T2DExtendedArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATEA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DStringArray
procedure RandomItemsArrATSAEx(arr: T2DStringArray; size: Integer; duplicates: Boolean; var output: T2DStringArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATSA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DCharArray
procedure RandomItemsArrATCAEx(arr: T2DCharArray; size: Integer; duplicates: Boolean; var output: T2DCharArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATCA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DBoolArray
procedure RandomItemsArrATBoAEx(arr: T2DBoolArray; size: Integer; duplicates: Boolean; var output: T2DBoolArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATBoA(arr, g, output);
  end else
    SetLength(output, 0);
end;

// T2DBoxArray
procedure RandomItemsArrATBAEx(arr: T2DBoxArray; size: Integer; duplicates: Boolean; var output: T2DBoxArray); callconv
var
  l: Integer;
  g: TIntegerArray;
begin
  l := Length(arr);
  if (l > 0) then
  begin
    RandomRangeEx(0, l, size, duplicates, g);
    GetATBA(arr, g, output);
  end else
    SetLength(output, 0);
end;

{==============================================================================]
  @action: Returns random array of item arrays from arr.
           Size being the amount of results.
  @note: Based on RandomItemsArrTPAEx, collects arrays from only unique indexes.
         (duplicates = False)
  @contributors: Janilabo, slacky
[==============================================================================}

// T2DPointArray
procedure RandomItemsArrATPA(arr: T2DPointArray; size: Integer; var output: T2DPointArray); callconv
begin
  RandomItemsArrATPAEx(arr, size, False, output);
end;

// T2DIntegerArray
procedure RandomItemsArrATIA(arr: T2DIntegerArray; size: Integer; var output: T2DIntegerArray); callconv
begin
  RandomItemsArrATIAEx(arr, size, False, output);
end;

// T2DExtendedArray
procedure RandomItemsArrATEA(arr: T2DExtendedArray; size: Integer; var output: T2DExtendedArray); callconv
begin
  RandomItemsArrATEAEx(arr, size, False, output);
end;

// T2DStringArray
procedure RandomItemsArrATSA(arr: T2DStringArray; size: Integer; var output: T2DStringArray); callconv
begin
  RandomItemsArrATSAEx(arr, size, False, output);
end;

// T2DCharArray
procedure RandomItemsArrATCA(arr: T2DCharArray; size: Integer; var output: T2DCharArray); callconv
begin
  RandomItemsArrATCAEx(arr, size, False, output);
end;

// T2DBoolArray
procedure RandomItemsArrATBoA(arr: T2DBoolArray; size: Integer; var output: T2DBoolArray); callconv
begin
  RandomItemsArrATBoAEx(arr, size, False, output);
end;

// T2DBoxArray
procedure RandomItemsArrATBA(arr: T2DBoxArray; size: Integer; var output: T2DBoxArray); callconv
begin
  RandomItemsArrATBAEx(arr, size, False, output);
end;
