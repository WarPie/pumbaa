{$I integer\calculation.pas}
{$I integer\range.pas}
{$I integer\numberline.pas}
{$I integer\invert.pas}
{$I integer\unique.pas}
{$I integer\various.pas}
{$I integer\split.pas}
{$I integer\group.pas}

procedure AddIntegerFunctions;
begin
  // calculation
  AddFunction(@TIAMostFrequent, 'function pp_TIAMostFrequent(TIA: TIntegerArray): Integer;');
  AddFunction(@TIALeastFrequent, 'function pp_TIALeastFrequent(TIA: TIntegerArray): Integer;');
  AddFunction(@TIADensity, 'function pp_TIADensity(TIA: TIntegerArray): Extended;');
  AddFunction(@TIAMean, 'function pp_TIAMean(TIA: TIntegerArray): Extended;');
  AddFunction(@TIASum, 'function pp_TIASum(TIA: TIntegerArray): Int64;');
  // range
  AddFunction(@TIAByRange, 'procedure pp_TIAByRange(aStart, aFinish: Integer; var output: TIntegerArray);');
  AddFunction(@TIAByRange2bit, 'procedure pp_TIAByRange2bit(aStart, aFinish: Integer; var output: TIntegerArray);');
  AddFunction(@TIARangeFrom, 'procedure pp_TIARangeFrom(start, step, count: Integer; var output: TIntegerArray);');
  AddFunction(@TIARange, 'procedure pp_TIARange(TIA: TIntegerArray; var lo, hi: Integer);');
  AddFunction(@TIAEnsureRange, 'procedure pp_TIAEnsureRange(var TIA: TIntegerArray; mn, mx: Integer);');
  // numberline
  AddFunction(@TIANumberline, 'procedure pp_TIANumberline(TIA: TIntegerArray; var output: TIntegerArray);');
  AddFunction(@TIANumberlineSize, 'function pp_TIANumberlineSize(TIA: TIntegerArray): Integer;');
  // invert
  AddFunction(@TIAInvert, 'procedure pp_TIAInvert(var TIA: TIntegerArray);');
  // unique
  AddFunction(@TIAUnique, 'procedure pp_TIAUnique(var TIA: TIntegerArray);');
  // various
  AddFunction(@IntDigits, 'procedure pp_IntDigits(value: Int64; var output: TIntegerArray);');
  // split
  AddFunction(@TIASplit, 'procedure pp_TIASplit(TIA: TIntegerArray; diff: Integer; var output: T2DIntegerArray);');
  AddFunction(@TIASplitEx, 'procedure pp_TIASplit(TIA: TIntegerArray; minDiff, maxDiff: Integer; var output: T2DIntegerArray); overload;');
  // group
  AddFunction(@TIAGroup, 'procedure pp_TIAGroup(TIA: TIntegerArray; diff: Integer; var output: T2DIntegerArray);');
  AddFunction(@TIAGroupEx, 'procedure pp_TIAGroup(TIA: TIntegerArray; minDiff, maxDiff: Integer; var output: T2DIntegerArray); overload;');
end;
