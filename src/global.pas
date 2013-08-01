type
  T2DStringArray = array of TStringArray;
  T2DBoolArray = array of TBoolArray;
  TBox = record
    X1, Y1, X2, Y2: Integer;
  end;
  TBoxArray = array of TBox;
  T2DBoxArray = array of TBoxArray;
  TCharArray = array of Char;
  T2DCharArray = array of TCharArray;

{==============================================================================]
  @action: Used for calculating distances between points, useful for several TPA functions.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
type
  TDistanceMethod = (dm_Euclidean, dm_Euclidean2, dm_Manhattan, dm_Chebyshev);

type
  {==============================================================================]
  @action: Used for calculating angles, for example: point A to point B.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
  TAngleMethod = (am_Degrees, am_Radians, am_Compass);

{==============================================================================]
  @action: Used for sorting arrays!
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
type
  TSortOrder = (so_LowToHigh, so_HighToLow);
  TSortAlgorithm = (sa_BubbleSort, sa_OptimizedBubbleSort,
                    sa_HeapSort, sa_InsertionSort, sa_ShellSort,
                    sa_MergeSort, sa_MergeSortBU, sa_SelectionSort,
                    sa_QuickSort, sa_QuickSort2, sa_QuickSort3W,
                    sa_WallSort, sa_DynamicWallSort, sa_CombSort,
                    sa_GnomeSort, sa_OptimizedGnomeSort,
                    sa_CoctailSort, sa_CoctailSort2, sa_PancakeSort);

{==============================================================================]
  @action: Used in partition commands, for breaking 2D arrays to 1D arrays,
           either by size or amount of the parts.
  @note: None
  @contributors: Janilabo, slacky
[==============================================================================}
type
  TPartitionMethod = (pm_BySize, pm_ByAmount);

procedure AddGlobalTypes;
begin
  AddType('TPartitionMethod', '(pm_BySize, pm_ByAmount);');
  AddType('T2DBoolArray', 'array of TBoolArray;');
  AddType('T2DBoxArray', 'array of TBoxArray');
  AddType('TCharArray', 'array of Char;');
  AddType('T2DCharArray', 'array of TCharArray');
  AddType('TDistanceMethod', '(dm_Euclidean, dm_Euclidean2, dm_Manhattan, dm_Chebyshev);');
  AddType('TAngleMethod', '(am_Degrees, am_Radians, am_Compass);');
  AddType('TSortOrder', '(so_LowToHigh, so_HighToLow);');
  AddType('TSortAlgorithm', '(sa_BubbleSort, sa_OptimizedBubbleSort,' + #32 +
                             'sa_HeapSort, sa_InsertionSort, sa_ShellSort,' + #32 +
                             'sa_MergeSort, sa_MergeSortBU, sa_SelectionSort,' + #32 +
                             'sa_QuickSort, sa_QuickSort2, sa_QuickSort3W,' + #32 +
                             'sa_WallSort, sa_DynamicWallSort, sa_CombSort,' + #32 +
                             'sa_GnomeSort, sa_OptimizedGnomeSort,' + #32 +
                             'sa_CoctailSort, sa_CoctailSort2, sa_PancakeSort);');
end;
