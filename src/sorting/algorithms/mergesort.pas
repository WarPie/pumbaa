procedure MergeSortTIA(var arr: TIntegerArray; order: TSortOrder);
  procedure __TIA_LH_M(var arr, tmp: TIntegerArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TIA_LH_M(arr, tmp, Lo, m);
    __TIA_LH_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] < tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
  procedure __TIA_HL_M(var arr, tmp: TIntegerArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TIA_HL_M(arr, tmp, Lo, m);
    __TIA_HL_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] > tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
var
  l: Integer;
  t: TIntegerArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(t, l);
    case order of
      so_LowToHigh: __TIA_LH_M(arr, t, 0, (l - 1));
      so_HighToLow: __TIA_HL_M(arr, t, 0, (l - 1));
    end;
  end;
end;

procedure MergeSortTEA(var arr: TExtendedArray; order: TSortOrder);
  procedure __TEA_LH_M(var arr, tmp: TExtendedArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TEA_LH_M(arr, tmp, Lo, m);
    __TEA_LH_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] < tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
  procedure __TEA_HL_M(var arr, tmp: TExtendedArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TEA_HL_M(arr, tmp, Lo, m);
    __TEA_HL_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] > tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
var
  l: Integer;
  t: TExtendedArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(t, l);
    case order of
      so_LowToHigh: __TEA_LH_M(arr, t, 0, (l - 1));
      so_HighToLow: __TEA_HL_M(arr, t, 0, (l - 1));
    end;
  end;
end;

procedure MergeSortTSA(var arr: TStringArray; order: TSortOrder);
  procedure __TSA_LH_M(var arr, tmp: TStringArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TSA_LH_M(arr, tmp, Lo, m);
    __TSA_LH_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] < tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
  procedure __TSA_HL_M(var arr, tmp: TStringArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TSA_HL_M(arr, tmp, Lo, m);
    __TSA_HL_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] > tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
var
  l: Integer;
  t: TStringArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(t, l);
    case order of
      so_LowToHigh: __TSA_LH_M(arr, t, 0, (l - 1));
      so_HighToLow: __TSA_HL_M(arr, t, 0, (l - 1));
    end;
  end;
end;

procedure MergeSortTCA(var arr: TCharArray; order: TSortOrder);
  procedure __TCA_LH_M(var arr, tmp: TCharArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TCA_LH_M(arr, tmp, Lo, m);
    __TCA_LH_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] < tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
  procedure __TCA_HL_M(var arr, tmp: TCharArray; const Lo, Hi: Integer);
  var
    L, R, i, m: Integer;
  begin
    if (Lo >= Hi) then
      Exit;
    m := (Lo + (Hi - Lo) div 2);
    __TCA_HL_M(arr, tmp, Lo, m);
    __TCA_HL_M(arr, tmp, (m + 1), Hi);
    L := Lo;
    R := (m + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > m) then
      begin
        arr[i] := tmp[R];
        Inc(R);
      end else
        if (R > Hi) then
        begin
          arr[i] := tmp[L];
          Inc(L);
        end else
          if (tmp[R] > tmp[L]) then
          begin
            arr[i] := tmp[R];
            Inc(R);
          end else
          begin
            arr[i] := tmp[L];
            Inc(L);
          end;
  end;
var
  l: Integer;
  t: TCharArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(t, l);
    case order of
      so_LowToHigh: __TCA_LH_M(arr, t, 0, (l - 1));
      so_HighToLow: __TCA_HL_M(arr, t, 0, (l - 1));
    end;
  end;
end;