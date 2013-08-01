{$I sorting\sort.pas}

procedure AddSortingFunctions;
begin
  AddFunction(@SortTIA, 'procedure pp_Sort(var arr: TIntegerArray);');
  AddFunction(@SortTEA, 'procedure pp_Sort(var arr: TExtendedArray); overload;');
  AddFunction(@SortTSA, 'procedure pp_Sort(var arr: TStringArray); overload;');
  AddFunction(@SortTCA, 'procedure pp_Sort(var arr: TCharArray); overload;');
  AddFunction(@ASortTIA, 'procedure pp_Sort(var arr: TIntegerArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ASortTEA, 'procedure pp_Sort(var arr: TExtendedArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ASortTSA, 'procedure pp_Sort(var arr: TStringArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ASortTCA, 'procedure pp_Sort(var arr: TCharArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@SortTIAEx, 'procedure pp_Sort(var arr: TIntegerArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@SortTEAEx, 'procedure pp_Sort(var arr: TExtendedArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@SortTSAEx, 'procedure pp_Sort(var arr: TStringArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@SortTCAEx, 'procedure pp_Sort(var arr: TCharArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@RSortTIA, 'procedure pp_RSort(var arr: TIntegerArray);');
  AddFunction(@RSortTEA, 'procedure pp_RSort(var arr: TExtendedArray); overload;');
  AddFunction(@RSortTSA, 'procedure pp_RSort(var arr: TStringArray); overload;');
  AddFunction(@RSortTCA, 'procedure pp_RSort(var arr: TCharArray); overload;');
  AddFunction(@ARSortTIA, 'procedure pp_RSort(var arr: TIntegerArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ARSortTEA, 'procedure pp_RSort(var arr: TExtendedArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ARSortTSA, 'procedure pp_RSort(var arr: TStringArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ARSortTCA, 'procedure pp_RSort(var arr: TCharArray; algorithm: TSortAlgorithm); overload;');
end;
