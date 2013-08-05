{$I extended\calculation.pas}
{$I extended\range.pas}

procedure AddExtendedFunctions;
begin
  // calculation
  AddFunction(@TEAMean, 'function pp_TEAMean(TEA: TExtendedArray): Extended;');
  AddFunction(@TEASum, 'function pp_TEASum(TEA: TExtendedArray): Extended;');
  AddFunction(@TEAMin, 'function pp_TEAMin(TEA: TExtendedArray): Extended;');
  AddFunction(@TEAMax, 'function pp_TEAMax(TEA: TExtendedArray): Extended;');
  // range
  AddFunction(@TEARange, 'procedure pp_TEARange(TEA: TExtendedArray; var lo, hi: Extended);');
  AddFunction(@TEAEnsureRange, 'procedure pp_TEAEnsureRange(var TEA: TExtendedArray; mn, mx: Extended);');
end;
