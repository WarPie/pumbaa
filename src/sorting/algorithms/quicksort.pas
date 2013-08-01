procedure QuickSortTIA(arr: TIntegerArray; order: TSortOrder);
  procedure __TIA_LH_QS(arr: TIntegerArray; Lo, Hi: Integer);
  var
    L, R, P, T: Integer;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] < P) do
        Inc(L);
      while (arr[R] > P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TIA_LH_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TIA_LH_QS(arr, L, Hi) ;
  end;
  procedure __TIA_HL_QS(arr: TIntegerArray; Lo, Hi: Integer);
  var
    L, R, P, T: Integer;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] > P) do
        Inc(L);
      while (arr[R] < P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TIA_HL_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TIA_HL_QS(arr, L, Hi) ;
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TIA_LH_QS(arr, 0, h);
    so_HighToLow: __TIA_HL_QS(arr, 0, h);
  end;
end;

procedure QuickSortTEA(arr: TExtendedArray; order: TSortOrder);
  procedure __TEA_LH_QS(arr: TExtendedArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    P, T: Extended;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] < P) do
        Inc(L);
      while (arr[R] > P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TEA_LH_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TEA_LH_QS(arr, L, Hi) ;
  end;
  procedure __TEA_HL_QS(arr: TExtendedArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    P, T: Extended;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] > P) do
        Inc(L);
      while (arr[R] < P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TEA_HL_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TEA_HL_QS(arr, L, Hi) ;
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TEA_LH_QS(arr, 0, h);
    so_HighToLow: __TEA_HL_QS(arr, 0, h);
  end;
end;

procedure QuickSortTSA(arr: TStringArray; order: TSortOrder);
  procedure __TSA_LH_QS(arr: TStringArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    P, T: string;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] < P) do
        Inc(L);
      while (arr[R] > P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TSA_LH_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TSA_LH_QS(arr, L, Hi) ;
  end;
  procedure __TSA_HL_QS(arr: TStringArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    P, T: string;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] > P) do
        Inc(L);
      while (arr[R] < P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TSA_HL_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TSA_HL_QS(arr, L, Hi) ;
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TSA_LH_QS(arr, 0, h);
    so_HighToLow: __TSA_HL_QS(arr, 0, h);
  end;
end;

procedure QuickSortTCA(arr: TCharArray; order: TSortOrder);
  procedure __TCA_LH_QS(arr: TCharArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    P, T: Char;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] < P) do
        Inc(L);
      while (arr[R] > P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TCA_LH_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TCA_LH_QS(arr, L, Hi) ;
  end;
  procedure __TCA_HL_QS(arr: TCharArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    P, T: Char;
  begin
    P := arr[((Lo + Hi) div 2)];
    L := Lo;
    R := Hi;
    repeat
      while (arr[L] > P) do
        Inc(L);
      while (arr[R] < P) do
        Dec(R);
      if (L <= R) then
      begin
        T := arr[L];
        arr[L] := arr[R];
        arr[R] := T;
        Inc(L);
        Dec(R);
      end;
    until (L > R);
    if (R > Lo) then
      __TCA_HL_QS(arr, Lo, R) ;
    if (L < Hi) then
      __TCA_HL_QS(arr, L, Hi) ;
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TCA_LH_QS(arr, 0, h);
    so_HighToLow: __TCA_HL_QS(arr, 0, h);
  end;
end;