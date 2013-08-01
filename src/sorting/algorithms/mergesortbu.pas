procedure MergeSortBUTIA(var arr: TIntegerArray; order: TSortOrder);
  procedure __TIA_LH_MBU(var arr, tmp: TIntegerArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  procedure __TIA_HL_MBU(var arr, tmp: TIntegerArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  l, s, Lo: Integer;
  tmp: TIntegerArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(tmp, l);
    s := 1;
    case order of
      so_LowToHigh:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TIA_LH_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
      so_HighToLow:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TIA_HL_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
    end;
  end;
end;

procedure MergeSortBUTEA(var arr: TExtendedArray; order: TSortOrder);
  procedure __TEA_LH_MBU(var arr, tmp: TExtendedArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  procedure __TEA_HL_MBU(var arr, tmp: TExtendedArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  l, s, Lo: Integer;
  tmp: TExtendedArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(tmp, l);
    s := 1;
    case order of
      so_LowToHigh:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TEA_LH_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
      so_HighToLow:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TEA_HL_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
    end;
  end;
end;

procedure MergeSortBUTSA(var arr: TStringArray; order: TSortOrder);
  procedure __TSA_LH_MBU(var arr, tmp: TStringArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  procedure __TSA_HL_MBU(var arr, tmp: TStringArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  l, s, Lo: Integer;
  tmp: TStringArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(tmp, l);
    s := 1;
    case order of
      so_LowToHigh:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TSA_LH_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
      so_HighToLow:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TSA_HL_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
    end;
  end;
end;

procedure MergeSortBUTCA(var arr: TCharArray; order: TSortOrder);
  procedure __TCA_LH_MBU(var arr, tmp: TCharArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  procedure __TCA_HL_MBU(var arr, tmp: TCharArray; const Lo, Mid, Hi: Integer);
  var
    L, R, i: Integer;
  begin
    L := Lo;
    R := (Mid + 1);
    for i := Lo to Hi do
      tmp[i] := arr[i];
    for i := Lo to Hi do
      if (L > Mid) then
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
  l, s, Lo: Integer;
  tmp: TCharArray;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    SetLength(tmp, l);
    s := 1;
    case order of
      so_LowToHigh:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TCA_LH_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
      so_HighToLow:
      while (s < l) do
      begin
        Lo := 0;
        while (Lo < (l - s)) do
        begin
          __TCA_HL_MBU(arr, tmp, Lo, ((Lo + s) - 1), Min(((Lo + (s * 2)) - 1), (l - 1)));
          Lo := (Lo + (s * 2));
        end;
        s := (s + s);
      end;
    end;
  end;
end;