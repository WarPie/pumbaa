{==============================================================================]
 @action: Outputs all the X-values of TPA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAXValues(TPA: TPointArray; var output: TIntegerArray); callconv
var
  h, i: Integer;
begin
  h := High(TPA);
  SetLength(output, (h + 1));
  for i := 0 to h do
    output[i] := TPA[i].X;
end;

{==============================================================================]
 @action: Outputs all the Y-values of TPA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAYValues(TPA: TPointArray; var output: TIntegerArray); callconv
var
  h, i: Integer;
begin
  h := High(TPA);
  SetLength(output, (h + 1));
  for i := 0 to h do
    output[i] := TPA[i].Y;
end;

{==============================================================================]
 @action: Swaps all X and Y values in TPA.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPASwapValues(var TPA: TPointArray); callconv
var
  h, i, t: Integer;
begin
  h := High(TPA);
  for i := 0 to h do
  begin
    t := TPA[i].X;
    TPA[i].X := TPA[i].Y;
    TPA[i].Y := t;
  end;
end;
