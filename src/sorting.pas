{$I sorting\sort.pas}

procedure AddSortingFunctions;
begin
  AddFunction(@SortTIA, 'procedure Sort(var arr: TIntegerArray);');
  AddFunction(@SortTEA, 'procedure Sort(var arr: TExtendedArray); overload;');
  AddFunction(@SortTSA, 'procedure Sort(var arr: TStringArray); overload;');
  AddFunction(@SortTCA, 'procedure Sort(var arr: TCharArray); overload;');
  AddFunction(@ASortTIA, 'procedure Sort(var arr: TIntegerArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ASortTEA, 'procedure Sort(var arr: TExtendedArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ASortTSA, 'procedure Sort(var arr: TStringArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ASortTCA, 'procedure Sort(var arr: TCharArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@SortTIAEx, 'procedure Sort(var arr: TIntegerArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@SortTEAEx, 'procedure Sort(var arr: TExtendedArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@SortTSAEx, 'procedure Sort(var arr: TStringArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@SortTCAEx, 'procedure Sort(var arr: TCharArray; algorithm: TSortAlgorithm; order: TSortOrder); overload;');
  AddFunction(@RSortTIA, 'procedure RSort(var arr: TIntegerArray);');
  AddFunction(@RSortTEA, 'procedure RSort(var arr: TExtendedArray); overload;');
  AddFunction(@RSortTSA, 'procedure RSort(var arr: TStringArray); overload;');
  AddFunction(@RSortTCA, 'procedure RSort(var arr: TCharArray); overload;');
  AddFunction(@ARSortTIA, 'procedure RSort(var arr: TIntegerArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ARSortTEA, 'procedure RSort(var arr: TExtendedArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ARSortTSA, 'procedure RSort(var arr: TStringArray; algorithm: TSortAlgorithm); overload;');
  AddFunction(@ARSortTCA, 'procedure RSort(var arr: TCharArray; algorithm: TSortAlgorithm); overload;');
end;
