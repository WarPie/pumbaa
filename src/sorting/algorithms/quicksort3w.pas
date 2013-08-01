procedure QuickSort3WTIA(var arr: TIntegerArray; order: TSortOrder);
  procedure __TIA_LH_QS3W(var arr: TIntegerArray; const L, H: Integer);
  var
    ls, rs, p, x, tmp: Integer;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] < x) then
      begin
        tmp := arr[ls];
        arr[ls] := arr[p];
        arr[p] := tmp;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] > x) then
      begin
        tmp := arr[rs];
        arr[rs] := arr[p];
        arr[p] := tmp;
        Dec(rs);
      end else
        Inc(p);
    __TIA_LH_QS3W(arr, L, (ls - 1));
    __TIA_LH_QS3W(arr, (rs + 1), H);
  end;
  procedure __TIA_HL_QS3W(var arr: TIntegerArray; const L, H: Integer);
  var
    ls, rs, p, x, tmp: Integer;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] > x) then
      begin
        tmp := arr[ls];
        arr[ls] := arr[p];
        arr[p] := tmp;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] < x) then
      begin
        tmp := arr[rs];
        arr[rs] := arr[p];
        arr[p] := tmp;
        Dec(rs);
      end else
        Inc(p);
    __TIA_HL_QS3W(arr, L, (ls - 1));
    __TIA_HL_QS3W(arr, (rs + 1), H);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TIA_LH_QS3W(arr, 0, h);
    so_HighToLow: __TIA_HL_QS3W(arr, 0, h);
  end;
end;

procedure QuickSort3WTEA(var arr: TExtendedArray; order: TSortOrder);
  procedure __TEA_LH_QS3W(var arr: TExtendedArray; const L, H: Integer);
  var
    ls, rs, p: Integer;
    x, tmp: Extended;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] < x) then
      begin
        tmp := arr[ls];
        arr[ls] := arr[p];
        arr[p] := tmp;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] > x) then
      begin
        tmp := arr[rs];
        arr[rs] := arr[p];
        arr[p] := tmp;
        Dec(rs);
      end else
        Inc(p);
    __TEA_LH_QS3W(arr, L, (ls - 1));
    __TEA_LH_QS3W(arr, (rs + 1), H);
  end;
  procedure __TEA_HL_QS3W(var arr: TExtendedArray; const L, H: Integer);
  var
    ls, rs, p: Integer;
    x, tmp: Extended;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] > x) then
      begin
        tmp := arr[ls];
        arr[ls] := arr[p];
        arr[p] := tmp;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] < x) then
      begin
        tmp := arr[rs];
        arr[rs] := arr[p];
        arr[p] := tmp;
        Dec(rs);
      end else
        Inc(p);
    __TEA_HL_QS3W(arr, L, (ls - 1));
    __TEA_HL_QS3W(arr, (rs + 1), H);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TEA_LH_QS3W(arr, 0, h);
    so_HighToLow: __TEA_HL_QS3W(arr, 0, h);
  end;
end;

procedure QuickSort3WTSA(var arr: TStringArray; order: TSortOrder);
  procedure __TSA_LH_QS3W(var arr: TStringArray; const L, H: Integer);
  var
    ls, rs, p: Integer;
    x, tmp: string;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] < x) then
      begin
        tmp := arr[ls];
        arr[ls] := arr[p];
        arr[p] := tmp;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] > x) then
      begin
        tmp := arr[rs];
        arr[rs] := arr[p];
        arr[p] := tmp;
        Dec(rs);
      end else
        Inc(p);
    __TSA_LH_QS3W(arr, L, (ls - 1));
    __TSA_LH_QS3W(arr, (rs + 1), H);
  end;
  procedure __TSA_HL_QS3W(var arr: TStringArray; const L, H: Integer);
  var
    ls, rs, p: Integer;
    x, tmp: string;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] > x) then
      begin
        tmp := arr[ls];
        arr[ls] := arr[p];
        arr[p] := tmp;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] < x) then
      begin
        tmp := arr[rs];
        arr[rs] := arr[p];
        arr[p] := tmp;
        Dec(rs);
      end else
        Inc(p);
    __TSA_HL_QS3W(arr, L, (ls - 1));
    __TSA_HL_QS3W(arr, (rs + 1), H);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TSA_LH_QS3W(arr, 0, h);
    so_HighToLow: __TSA_HL_QS3W(arr, 0, h);
  end;
end;

procedure QuickSort3WTCA(var arr: TCharArray; order: TSortOrder);
  procedure __TCA_LH_QS3W(var arr: TCharArray; const L, H: Integer);
  var
    t: Char;
    ls, rs, p: Integer;
    x: string;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] < x) then
      begin
        t := arr[ls];
        arr[ls] := arr[p];
        arr[p] := t;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] > x) then
      begin
        t := arr[rs];
        arr[rs] := arr[p];
        arr[p] := t;
        Dec(rs);
      end else
        Inc(p);
    __TCA_LH_QS3W(arr, L, (ls - 1));
    __TCA_LH_QS3W(arr, (rs + 1), H);
  end;
  procedure __TCA_HL_QS3W(var arr: TCharArray; const L, H: Integer);
  var
    t: Char;
    ls, rs, p: Integer;
    x: string;
  begin
    if (L >= H) then
      Exit;
    x := arr[L];
    ls := L;
    rs := H;
    p := (L + 1);
    while (p <= rs) do
      if (arr[p] > x) then
      begin
        t := arr[ls];
        arr[ls] := arr[p];
        arr[p] := t;
        Inc(p);
        Inc(ls);
      end else
      if (arr[p] < x) then
      begin
        t := arr[rs];
        arr[rs] := arr[p];
        arr[p] := t;
        Dec(rs);
      end else
        Inc(p);
    __TCA_HL_QS3W(arr, L, (ls - 1));
    __TCA_HL_QS3W(arr, (rs + 1), H);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TCA_LH_QS3W(arr, 0, h);
    so_HighToLow: __TCA_HL_QS3W(arr, 0, h);
  end;
end;