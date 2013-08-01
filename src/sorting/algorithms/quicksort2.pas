procedure QuickSort2TIA(arr: TIntegerArray; order: TSortOrder);
  procedure __TIA_LH_QS2(arr: TIntegerArray; Lo, Hi: Integer);
  var
    L, R, C, T: Integer;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] < C) do
            Inc(L);
          while (arr[R] > C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TIA_LH_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] > T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
  procedure __TIA_HL_QS2(arr: TIntegerArray; Lo, Hi: Integer);
  var
    L, R, C, T: Integer;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] > C) do
            Inc(L);
          while (arr[R] < C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TIA_HL_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] < T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TIA_LH_QS2(arr, 0, h);
    so_HighToLow: __TIA_HL_QS2(arr, 0, h);
  end;
end;

procedure QuickSort2TEA(arr: TExtendedArray; order: TSortOrder);
  procedure __TEA_LH_QS2(arr: TExtendedArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    C, T: Extended;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] < C) do
            Inc(L);
          while (arr[R] > C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TEA_LH_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] > T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
  procedure __TEA_HL_QS2(arr: TExtendedArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    C, T: Extended;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] > C) do
            Inc(L);
          while (arr[R] < C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TEA_HL_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] < T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TEA_LH_QS2(arr, 0, h);
    so_HighToLow: __TEA_HL_QS2(arr, 0, h);
  end;
end;

procedure QuickSort2TSA(arr: TStringArray; order: TSortOrder);
  procedure __TSA_LH_QS2(arr: TStringArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    C, T: string;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] < C) do
            Inc(L);
          while (arr[R] > C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TSA_LH_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] > T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
  procedure __TSA_HL_QS2(arr: TStringArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    C, T: string;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] > C) do
            Inc(L);
          while (arr[R] < C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TSA_HL_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] < T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TSA_LH_QS2(arr, 0, h);
    so_HighToLow: __TSA_HL_QS2(arr, 0, h);
  end;
end;

procedure QuickSort2TCA(arr: TCharArray; order: TSortOrder);
  procedure __TCA_LH_QS2(arr: TCharArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    C, T: Char;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] < C) do
            Inc(L);
          while (arr[R] > C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TCA_LH_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] > T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
  procedure __TCA_HL_QS2(arr: TCharArray; Lo, Hi: Integer);
  var
    L, R: Integer;
    C, T: Char;
  begin
    repeat
      if ((Hi - Lo) > 16) then
      begin
        C := arr[((Hi + Lo) shr 1)];
        L := Lo;
        R := Hi;
        repeat
          while (arr[L] > C) do
            Inc(L);
          while (arr[R] < C) do
            Dec(R);
          if (L <= R) then
          begin
            if (L <> R) then
            begin
              T := arr[L];
              arr[L] := arr[R];
              arr[R] := T;
            end;
            Inc(L);
            Dec(R);
          end;
        until (R < L);
        if (R > Lo) then
          __TCA_HL_QS2(arr, Lo, R);
        Lo := L;
      end else
      begin
        for L := (Lo + 1) to Hi do
        begin
          T := arr[L];
          R := L;
          while ((R > Lo) and (arr[(R - 1)] < T)) do
          begin
            arr[R] := arr[(R - 1)];
            Dec(R);
          end;
          arr[R] := T;
        end;
        Exit;
      end;
    until (Hi <= L);
  end;
var
  h: Integer;
begin
  h := High(arr);
  if (h > 0) then
  case order of
    so_LowToHigh: __TCA_LH_QS2(arr, 0, h);
    so_HighToLow: __TCA_HL_QS2(arr, 0, h);
  end;
end;