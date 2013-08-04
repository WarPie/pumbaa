{$I array\slice.pas}
{$I array\append.pas}
{$I array\push.pas}
{$I array\insert.pas}
{$I array\delete.pas}
{$I array\copy.pas}
{$I array\clone.pas}
{$I array\remove.pas}
{$I array\zap.pas}
{$I array\strike.pas}
{$I array\get.pas}
{$I array\pop.pas}
{$I array\pick.pas}
{$I array\move.pas}
{$I array\replace.pas}
{$I array\create.pas}
{$I array\build.pas}
{$I array\fill.pas}
{$I array\reverse.pas}
{$I array\unique.pas}
{$I array\uniques.pas}
{$I array\allunique.pas}
{$I array\contains.pas}
{$I array\holds.pas}
{$I array\position.pas}
{$I array\positions.pas}
{$I array\trace.pas}
{$I array\empty.pas}
{$I array\equal.pas}
{$I array\allequal.pas}
{$I array\partition.pas}
{$I array\extractitems.pas}
{$I array\filteritems.pas}
{$I array\extractevery.pas}
{$I array\filterevery.pas}
{$I array\random.pas}
{$I array\value.pas}
{$I array\swap.pas}
{$I array\merge.pas}
{$I array\size.pas}
{$I array\clean.pas}

procedure AddArrayFunctions;
begin
  // slice
  AddFunction(@SliceTPA, 'procedure pp_Slice(arr: TPointArray; sFrom, sTo: Integer; var output: TPointArray);');
  AddFunction(@SliceTIA, 'procedure pp_Slice(arr: TIntegerArray; sFrom, sTo: Integer; var output: TIntegerArray); overload;');
  AddFunction(@SliceTEA, 'procedure pp_Slice(arr: TExtendedArray; sFrom, sTo: Integer; var output: TExtendedArray); overload;');
  AddFunction(@SliceTSA, 'procedure pp_Slice(arr: TStringArray; sFrom, sTo: Integer; var output: TStringArray); overload;');
  AddFunction(@SliceTCA, 'procedure pp_Slice(arr: TCharArray; sFrom, sTo: Integer; var output: TCharArray); overload;');
  AddFunction(@SliceTBoA, 'procedure pp_Slice(arr: TBoolArray; sFrom, sTo: Integer; var output: TBoolArray); overload;');
  AddFunction(@SliceTBA, 'procedure pp_Slice(arr: TBoxArray; sFrom, sTo: Integer; var output: TBoxArray); overload;');
  AddFunction(@SliceATPA, 'procedure pp_Slice(arr: T2DPointArray; sFrom, sTo: Integer; var output: T2DPointArray); overload;');
  AddFunction(@SliceATIA, 'procedure pp_Slice(arr: T2DIntegerArray; sFrom, sTo: Integer; var output: T2DIntegerArray); overload;');
  AddFunction(@SliceATEA, 'procedure pp_Slice(arr: T2DExtendedArray; sFrom, sTo: Integer; var output: T2DExtendedArray); overload;');
  AddFunction(@SliceATSA, 'procedure pp_Slice(arr: T2DStringArray; sFrom, sTo: Integer; var output: T2DStringArray); overload;');
  AddFunction(@SliceATCA, 'procedure pp_Slice(arr: T2DCharArray; sFrom, sTo: Integer; var output: T2DCharArray); overload;');
  AddFunction(@SliceATBoA, 'procedure pp_Slice(arr: T2DBoolArray; sFrom, sTo: Integer; var output: T2DBoolArray); overload;');
  AddFunction(@SliceATBA, 'procedure pp_Slice(arr: T2DBoxArray; sFrom, sTo: Integer; var output: T2DBoxArray); overload;');
  // append
  AddFunction(@AppendTPA, 'procedure pp_Append(var arr: TPointArray; item: TPoint);');
  AddFunction(@AppendTIA, 'procedure pp_Append(var arr: TIntegerArray; item: Integer); overload;');
  AddFunction(@AppendTEA, 'procedure pp_Append(var arr: TExtendedArray; item: Extended); overload;');
  AddFunction(@AppendTSA, 'procedure pp_Append(var arr: TStringArray; item: string); overload;');
  AddFunction(@AppendTCA, 'procedure pp_Append(var arr: TCharArray; item: char); overload;');
  AddFunction(@AppendTBoA, 'procedure pp_Append(var arr: TBoolArray; item: Boolean); overload;');
  AddFunction(@AppendTBA, 'procedure pp_Append(var arr: TBoxArray; item: TBox); overload;');
  AddFunction(@AppendExTPA, 'function pp_Append(var arr: TPointArray; items: TPointArray): Integer; overload;');
  AddFunction(@AppendExTIA, 'function pp_Append(var arr: TIntegerArray; items: TIntegerArray): Integer; overload;');
  AddFunction(@AppendExTEA, 'function pp_Append(var arr: TExtendedArray; items: TExtendedArray): Integer; overload;');
  AddFunction(@AppendExTSA, 'function pp_Append(var arr: TStringArray; items: TStringArray): Integer; overload;');
  AddFunction(@AppendExTCA, 'function pp_Append(var arr: TCharArray; items: TCharArray): Integer; overload;');
  AddFunction(@AppendExTBoA, 'function pp_Append(var arr: TBoolArray; items: TBoolArray): Integer; overload;');
  AddFunction(@AppendExTBA, 'function pp_Append(var arr: TBoxArray; items: TBoxArray): Integer; overload;');
  // push
  AddFunction(@PushTPA, 'procedure pp_Push(var arr: TPointArray; item: TPoint);');
  AddFunction(@PushTIA, 'procedure pp_Push(var arr: TIntegerArray; item: Integer); overload;');
  AddFunction(@PushTEA, 'procedure pp_Push(var arr: TExtendedArray; item: Extended); overload;');
  AddFunction(@PushTSA, 'procedure pp_Push(var arr: TStringArray; item: string); overload;');
  AddFunction(@PushTCA, 'procedure pp_Push(var arr: TCharArray; item: Char); overload;');
  AddFunction(@PushTBoA, 'procedure pp_Push(var arr: TBoolArray; item: Boolean); overload;');
  AddFunction(@PushTBA, 'procedure pp_Push(var arr: TBoxArray; item: TBox); overload;');
  AddFunction(@PushExTPA, 'function pp_Push(var arr: TPointArray; items: TPointArray): Integer; overload;');
  AddFunction(@PushExTIA, 'function pp_Push(var arr: TIntegerArray; items: TIntegerArray): Integer; overload;');
  AddFunction(@PushExTEA, 'function pp_Push(var arr: TExtendedArray; items: TExtendedArray): Integer; overload;');
  AddFunction(@PushExTSA, 'function pp_Push(var arr: TStringArray; items: TStringArray): Integer; overload;');
  AddFunction(@PushExTCA, 'function pp_Push(var arr: TCharArray; items: TCharArray): Integer; overload;');
  AddFunction(@PushExTBoA, 'function pp_Push(var arr: TBoolArray; items: TBoolArray): Integer; overload;');
  AddFunction(@PushExTBA, 'function pp_Push(var arr: TBoxArray; items: TBoxArray): Integer; overload;');
  // insert
  AddFunction(@InsertTPA, 'procedure pp_Insert(var arr: TPointArray; index: Integer; item: TPoint);');
  AddFunction(@InsertTIA, 'procedure pp_Insert(var arr: TIntegerArray; index: Integer; item: Integer); overload;');
  AddFunction(@InsertTEA, 'procedure pp_Insert(var arr: TExtendedArray; index: Integer; item: Extended); overload;');
  AddFunction(@InsertTSA, 'procedure pp_Insert(var arr: TStringArray; index: Integer; item: string); overload;');
  AddFunction(@InsertTCA, 'procedure pp_Insert(var arr: TCharArray; index: Integer; item: Char); overload;');
  AddFunction(@InsertTBoA, 'procedure pp_Insert(var arr: TBoolArray; index: Integer; item: Boolean); overload;');
  AddFunction(@InsertTBA, 'procedure pp_Insert(var arr: TBoxArray; index: Integer; item: TBox); overload;');
  AddFunction(@InsertExTPA, 'function pp_Insert(var arr: TPointArray; index: Integer; items: TPointArray): Integer; overload;');
  AddFunction(@InsertExTIA, 'function pp_Insert(var arr: TIntegerArray; index: Integer; items: TIntegerArray): Integer; overload;');
  AddFunction(@InsertExTEA, 'function pp_Insert(var arr: TExtendedArray; index: Integer; items: TExtendedArray): Integer; overload;');
  AddFunction(@InsertExTSA, 'function pp_Insert(var arr: TStringArray; index: Integer; items: TStringArray): Integer; overload;');
  AddFunction(@InsertExTCA, 'function pp_Insert(var arr: TCharArray; index: Integer; items: TCharArray): Integer; overload;');
  AddFunction(@InsertExTBoA, 'function pp_Insert(var arr: TBoolArray; index: Integer; items: TBoolArray): Integer; overload;');
  AddFunction(@InsertExTBA, 'function pp_Insert(var arr: TBoxArray; index: Integer; items: TBoxArray): Integer; overload;');
  // delete
  AddFunction(@DeleteTPA, 'function pp_Delete(var arr: TPointArray; index: Integer): Boolean;');
  AddFunction(@DeleteTIA, 'function pp_Delete(var arr: TIntegerArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteTEA, 'function pp_Delete(var arr: TExtendedArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteTSA, 'function pp_Delete(var arr: TStringArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteTCA, 'function pp_Delete(var arr: TCharArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteTBoA, 'function pp_Delete(var arr: TBoolArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteTBA, 'function pp_Delete(var arr: TBoxArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteTPAEx, 'procedure pp_Delete(var arr: TPointArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteTIAEx, 'procedure pp_Delete(var arr: TIntegerArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteTEAEx, 'procedure pp_Delete(var arr: TExtendedArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteTSAEx, 'procedure pp_Delete(var arr: TStringArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteTCAEx, 'procedure pp_Delete(var arr: TCharArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteTBoAEx, 'procedure pp_Delete(var arr: TBoolArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteTBAEx, 'procedure pp_Delete(var arr: TBoxArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATPA, 'function pp_Delete(var arr: T2DPointArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATIA, 'function pp_Delete(var arr: T2DIntegerArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATEA, 'function pp_Delete(var arr: T2DExtendedArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATSA, 'function pp_Delete(var arr: T2DStringArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATCA, 'function pp_Delete(var arr: T2DCharArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATBoA, 'function pp_Delete(var arr: T2DBoolArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATBA, 'function pp_Delete(var arr: T2DBoxArray; index: Integer): Boolean; overload;');
  AddFunction(@DeleteATPAEx, 'procedure pp_Delete(var arr: T2DPointArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATIAEx, 'procedure pp_Delete(var arr: T2DIntegerArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATEAEx, 'procedure pp_Delete(var arr: T2DExtendedArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATSAEx, 'procedure pp_Delete(var arr: T2DStringArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATCAEx, 'procedure pp_Delete(var arr: T2DCharArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATBoAEx, 'procedure pp_Delete(var arr: T2DBoolArray; IDs: TIntegerArray); overload;');
  AddFunction(@DeleteATBAEx, 'procedure pp_Delete(var arr: T2DBoxArray; IDs: TIntegerArray); overload;');
  // strike
  AddFunction(@StrikeTPA, 'procedure pp_Strike(var arr: TPointArray; IDs: TIntegerArray);');
  AddFunction(@StrikeTIA, 'procedure pp_Strike(var arr: TIntegerArray; IDs: TIntegerArray); overload;');
  AddFunction(@StrikeTEA, 'procedure pp_Strike(var arr: TExtendedArray; IDs: TIntegerArray); overload;');
  AddFunction(@StrikeTSA, 'procedure pp_Strike(var arr: TStringArray; IDs: TIntegerArray); overload;');
  AddFunction(@StrikeTCA, 'procedure pp_Strike(var arr: TCharArray; IDs: TIntegerArray); overload;');
  AddFunction(@StrikeTBoA, 'procedure pp_Strike(var arr: TBoolArray; IDs: TIntegerArray); overload;');
  AddFunction(@StrikeTBA, 'procedure pp_Strike(var arr: TBoxArray; IDs: TIntegerArray); overload;');
  // copy
  AddFunction(@CopyTPA, 'procedure pp_Copy(arr: TPointArray; startIndex, count: Integer; var output: TPointArray);');
  AddFunction(@CopyTIA, 'procedure pp_Copy(arr: TIntegerArray; startIndex, count: Integer; var output: TIntegerArray); overload;');
  AddFunction(@CopyTEA, 'procedure pp_Copy(arr: TExtendedArray; startIndex, count: Integer; var output: TExtendedArray); overload;');
  AddFunction(@CopyTSA, 'procedure pp_Copy(arr: TStringArray; startIndex, count: Integer; var output: TStringArray); overload;');
  AddFunction(@CopyTCA, 'procedure pp_Copy(arr: TCharArray; startIndex, count: Integer; var output: TCharArray); overload;');
  AddFunction(@CopyTBoA, 'procedure pp_Copy(arr: TBoolArray; startIndex, count: Integer; var output: TBoolArray); overload;');
  AddFunction(@CopyTBA, 'procedure pp_Copy(arr: TBoxArray; startIndex, count: Integer; var output: TBoxArray); overload;');
  AddFunction(@CopyATPA, 'procedure pp_Copy(arr: T2DPointArray; startIndex, count: Integer; var output: T2DPointArray); overload;');
  AddFunction(@CopyATIA, 'procedure pp_Copy(arr: T2DIntegerArray; startIndex, count: Integer; var output: T2DIntegerArray); overload;');
  AddFunction(@CopyATEA, 'procedure pp_Copy(arr: T2DExtendedArray; startIndex, count: Integer; var output: T2DExtendedArray); overload;');
  AddFunction(@CopyATSA, 'procedure pp_Copy(arr: T2DStringArray; startIndex, count: Integer; var output: T2DStringArray); overload;');
  AddFunction(@CopyATCA, 'procedure pp_Copy(arr: T2DCharArray; startIndex, count: Integer; var output: T2DCharArray); overload;');
  AddFunction(@CopyATBoA, 'procedure pp_Copy(arr: T2DBoolArray; startIndex, count: Integer; var output: T2DBoolArray); overload;');
  AddFunction(@CopyATBA, 'procedure pp_Copy(arr: T2DBoxArray; startIndex, count: Integer; var output: T2DBoxArray); overload;');
  // clone
  AddFunction(@CloneTPA, 'procedure pp_Clone(arr: TPointArray; var output: TPointArray);');
  AddFunction(@CloneTIA, 'procedure pp_Clone(arr: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@CloneTEA, 'procedure pp_Clone(arr: TExtendedArray; var output: TExtendedArray); overload;');
  AddFunction(@CloneTSA, 'procedure pp_Clone(arr: TStringArray; var output: TStringArray); overload;');
  AddFunction(@CloneTCA, 'procedure pp_Clone(arr: TCharArray; var output: TCharArray); overload;');
  AddFunction(@CloneTBoA, 'procedure pp_Clone(arr: TBoolArray; var output: TBoolArray); overload;');
  AddFunction(@CloneTBA, 'procedure pp_Clone(arr: TBoxArray; var output: TBoxArray); overload;');
  AddFunction(@CloneATPA, 'procedure pp_Clone(arr: T2DPointArray; var output: T2DPointArray); overload;');
  AddFunction(@CloneATIA, 'procedure pp_Clone(arr: T2DIntegerArray; var output: T2DIntegerArray); overload;');
  AddFunction(@CloneATEA, 'procedure pp_Clone(arr: T2DExtendedArray; var output: T2DExtendedArray); overload;');
  AddFunction(@CloneATSA, 'procedure pp_Clone(arr: T2DStringArray; var output: T2DStringArray); overload;');
  AddFunction(@CloneATCA, 'procedure pp_Clone(arr: T2DCharArray; var output: T2DCharArray); overload;');
  AddFunction(@CloneATBoA, 'procedure pp_Clone(arr: T2DBoolArray; var output: T2DBoolArray); overload;');
  AddFunction(@CloneATBA, 'procedure pp_Clone(arr: T2DBoxArray; var output: T2DBoxArray); overload;');
  // remove
  AddFunction(@RemoveTPA, 'procedure pp_Remove(var arr: TPointArray; item: TPoint);');
  AddFunction(@RemoveTIA, 'procedure pp_Remove(var arr: TIntegerArray; item: Integer); overload;');
  AddFunction(@RemoveTEA, 'procedure pp_Remove(var arr: TExtendedArray; item: Extended); overload;');
  AddFunction(@RemoveTSA, 'procedure pp_Remove(var arr: TStringArray; item: string); overload;');
  AddFunction(@RemoveTCA, 'procedure pp_Remove(var arr: TCharArray; item: Char); overload;');
  AddFunction(@RemoveTBoA, 'procedure pp_Remove(var arr: TBoolArray; item: Boolean); overload;');
  AddFunction(@RemoveTBA, 'procedure pp_Remove(var arr: TBoxArray; item: TBox); overload;');
  AddFunction(@RemoveExTPA, 'procedure pp_Remove(var arr: TPointArray; item: TPoint; all: Boolean); overload;');
  AddFunction(@RemoveExTIA, 'procedure pp_Remove(var arr: TIntegerArray; item: Integer; all: Boolean); overload;');
  AddFunction(@RemoveExTEA, 'procedure pp_Remove(var arr: TExtendedArray; item: Extended; all: Boolean); overload;');
  AddFunction(@RemoveExTSA, 'procedure pp_Remove(var arr: TStringArray; item: string; all: Boolean); overload;');
  AddFunction(@RemoveExTCA, 'procedure pp_Remove(var arr: TCharArray; item: Char; all: Boolean); overload;');
  AddFunction(@RemoveExTBoA, 'procedure pp_Remove(var arr: TBoolArray; item: Boolean; all: Boolean); overload;');
  AddFunction(@RemoveExTBA, 'procedure pp_Remove(var arr: TBoxArray; item: TBox; all: Boolean); overload;');
  AddFunction(@RemoveMultiTPA, 'procedure pp_Remove(var arr: TPointArray; items: TPointArray); overload;');
  AddFunction(@RemoveMultiTIA, 'procedure pp_Remove(var arr: TIntegerArray; items: TIntegerArray); overload;');
  AddFunction(@RemoveMultiTEA, 'procedure pp_Remove(var arr: TExtendedArray; items: TExtendedArray); overload;');
  AddFunction(@RemoveMultiTSA, 'procedure pp_Remove(var arr: TStringArray; items: TStringArray); overload;');
  AddFunction(@RemoveMultiTCA, 'procedure pp_Remove(var arr: TCharArray; items: TCharArray); overload;');
  AddFunction(@RemoveMultiTBoA, 'procedure pp_Remove(var arr: TBoolArray; items: TBoolArray); overload;');
  AddFunction(@RemoveMultiTBA, 'procedure pp_Remove(var arr: TBoxArray; items: TBoxArray); overload;');
  AddFunction(@RemoveMultiExTPA, 'procedure pp_Remove(var arr: TPointArray; items: TPointArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExTIA, 'procedure pp_Remove(var arr: TIntegerArray; items: TIntegerArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExTEA, 'procedure pp_Remove(var arr: TExtendedArray; items: TExtendedArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExTSA, 'procedure pp_Remove(var arr: TStringArray; items: TStringArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExTCA, 'procedure pp_Remove(var arr: TCharArray; items: TCharArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExTBoA, 'procedure pp_Remove(var arr: TBoolArray; items: TBoolArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExTBA, 'procedure pp_Remove(var arr: TBoxArray; items: TBoxArray; all: Boolean); overload;');
  AddFunction(@RemoveOTPA, 'procedure pp_Remove(var arr: TPointArray; offset: Integer; item: TPoint); overload;');
  AddFunction(@RemoveOTIA, 'procedure pp_Remove(var arr: TIntegerArray; offset: Integer; item: Integer); overload;');
  AddFunction(@RemoveOTEA, 'procedure pp_Remove(var arr: TExtendedArray; offset: Integer; item: Extended); overload;');
  AddFunction(@RemoveOTSA, 'procedure pp_Remove(var arr: TStringArray; offset: Integer; item: string); overload;');
  AddFunction(@RemoveOTCA, 'procedure pp_Remove(var arr: TCharArray; offset: Integer; item: Char); overload;');
  AddFunction(@RemoveOTBoA, 'procedure pp_Remove(var arr: TBoolArray; offset: Integer; item: Boolean); overload;');
  AddFunction(@RemoveOTBA, 'procedure pp_Remove(var arr: TBoxArray; offset: Integer; item: TBox); overload;');
  AddFunction(@RemoveExOTPA, 'procedure pp_Remove(var arr: TPointArray; offset: Integer; item: TPoint; all: Boolean); overload;');
  AddFunction(@RemoveExOTIA, 'procedure pp_Remove(var arr: TIntegerArray; offset: Integer; item: Integer; all: Boolean); overload;');
  AddFunction(@RemoveExOTEA, 'procedure pp_Remove(var arr: TExtendedArray; offset: Integer; item: Extended; all: Boolean); overload;');
  AddFunction(@RemoveExOTSA, 'procedure pp_Remove(var arr: TStringArray; offset: Integer; item: string; all: Boolean); overload;');
  AddFunction(@RemoveExOTCA, 'procedure pp_Remove(var arr: TCharArray; offset: Integer; item: Char; all: Boolean); overload;');
  AddFunction(@RemoveExOTBoA, 'procedure pp_Remove(var arr: TBoolArray; offset: Integer; item: Boolean; all: Boolean); overload;');
  AddFunction(@RemoveExOTBA, 'procedure pp_Remove(var arr: TBoxArray; offset: Integer; item: TBox; all: Boolean); overload;');
  AddFunction(@RemoveMultiOTPA, 'procedure pp_Remove(var arr: TPointArray; offset: Integer; items: TPointArray); overload;');
  AddFunction(@RemoveMultiOTIA, 'procedure pp_Remove(var arr: TIntegerArray; offset: Integer; items: TIntegerArray); overload;');
  AddFunction(@RemoveMultiOTEA, 'procedure pp_Remove(var arr: TExtendedArray; offset: Integer; items: TExtendedArray); overload;');
  AddFunction(@RemoveMultiOTSA, 'procedure pp_Remove(var arr: TStringArray; offset: Integer; items: TStringArray); overload;');
  AddFunction(@RemoveMultiOTCA, 'procedure pp_Remove(var arr: TCharArray; offset: Integer; items: TCharArray); overload;');
  AddFunction(@RemoveMultiOTBoA, 'procedure pp_Remove(var arr: TBoolArray; offset: Integer; items: TBoolArray); overload;');
  AddFunction(@RemoveMultiOTBA, 'procedure pp_Remove(var arr: TBoxArray; offset: Integer; items: TBoxArray); overload;');
  AddFunction(@RemoveMultiExOTPA, 'procedure pp_Remove(var arr: TPointArray; offset: Integer; items: TPointArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExOTIA, 'procedure pp_Remove(var arr: TIntegerArray; offset: Integer; items: TIntegerArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExOTEA, 'procedure pp_Remove(var arr: TExtendedArray; offset: Integer; items: TExtendedArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExOTSA, 'procedure pp_Remove(var arr: TStringArray; offset: Integer; items: TStringArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExOTCA, 'procedure pp_Remove(var arr: TCharArray; offset: Integer; items: TCharArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExOTBoA, 'procedure pp_Remove(var arr: TBoolArray; offset: Integer; items: TBoolArray; all: Boolean); overload;');
  AddFunction(@RemoveMultiExOTBA, 'procedure pp_Remove(var arr: TBoxArray; offset: Integer; items: TBoxArray; all: Boolean); overload;');
  // zap
  AddFunction(@ZapTPA, 'procedure pp_Zap(var arr: TPointArray; item: TPoint);');
  AddFunction(@ZapTIA, 'procedure pp_Zap(var arr: TIntegerArray; item: Integer); overload;');
  AddFunction(@ZapTEA, 'procedure pp_Zap(var arr: TExtendedArray; item: Extended); overload;');
  AddFunction(@ZapTSA, 'procedure pp_Zap(var arr: TStringArray; item: string); overload;');
  AddFunction(@ZapTCA, 'procedure pp_Zap(var arr: TCharArray; item: Char); overload;');
  AddFunction(@ZapTBoA, 'procedure pp_Zap(var arr: TBoolArray; item: Boolean); overload;');
  AddFunction(@ZapTBA, 'procedure pp_Zap(var arr: TBoxArray; item: TBox); overload;');
  AddFunction(@ZapOTPA, 'procedure pp_Zap(var arr: TPointArray; offset: Integer; item: TPoint); overload;');
  AddFunction(@ZapOTIA, 'procedure pp_Zap(var arr: TIntegerArray; offset: Integer; item: Integer); overload;');
  AddFunction(@ZapOTEA, 'procedure pp_Zap(var arr: TExtendedArray; offset: Integer; item: Extended); overload;');
  AddFunction(@ZapOTSA, 'procedure pp_Zap(var arr: TStringArray; offset: Integer; item: string); overload;');
  AddFunction(@ZapOTCA, 'procedure pp_Zap(var arr: TCharArray; offset: Integer; item: Char); overload;');
  AddFunction(@ZapOTBoA, 'procedure pp_Zap(var arr: TBoolArray; offset: Integer; item: Boolean); overload;');
  AddFunction(@ZapOTBA, 'procedure pp_Zap(var arr: TBoxArray; offset: Integer; item: TBox); overload;');
  // get
  AddFunction(@GetTPA, 'procedure pp_Get(arr: TPointArray; IDs: TIntegerArray; var output: TPointArray);');
  AddFunction(@GetTIA, 'procedure pp_Get(arr: TIntegerArray; IDs: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@GetTEA, 'procedure pp_Get(arr: TExtendedArray; IDs: TIntegerArray; var output: TExtendedArray); overload;');
  AddFunction(@GetTSA, 'procedure pp_Get(arr: TStringArray; IDs: TIntegerArray; var output: TStringArray); overload;');
  AddFunction(@GetTCA, 'procedure pp_Get(arr: TCharArray; IDs: TIntegerArray; var output: TCharArray); overload;');
  AddFunction(@GetTBoA, 'procedure pp_Get(arr: TBoolArray; IDs: TIntegerArray; var output: TBoolArray); overload;');
  AddFunction(@GetTBA, 'procedure pp_Get(arr: TBoxArray; IDs: TIntegerArray; var output: TBoxArray); overload;');
  AddFunction(@GetATPA, 'procedure pp_Get(arr: T2DPointArray; IDs: TIntegerArray; var output: T2DPointArray); overload;');
  AddFunction(@GetATIA, 'procedure pp_Get(arr: T2DIntegerArray; IDs: TIntegerArray; var output: T2DIntegerArray); overload;');
  AddFunction(@GetATEA, 'procedure pp_Get(arr: T2DExtendedArray; IDs: TIntegerArray; var output: T2DExtendedArray); overload;');
  AddFunction(@GetATSA, 'procedure pp_Get(arr: T2DStringArray; IDs: TIntegerArray; var output: T2DStringArray); overload;');
  AddFunction(@GetATCA, 'procedure pp_Get(arr: T2DCharArray; IDs: TIntegerArray; var output: T2DCharArray); overload;');
  AddFunction(@GetATBoA, 'procedure pp_Get(arr: T2DBoolArray; IDs: TIntegerArray; var output: T2DBoolArray); overload;');
  AddFunction(@GetATBA, 'procedure pp_Get(arr: T2DBoxArray; IDs: TIntegerArray; var output: T2DBoxArray); overload;');
  // pop
  AddFunction(@PopLastTPA, 'function pp_Pop(var arr: TPointArray): TPoint;');
  AddFunction(@PopLastTIA, 'function pp_Pop(var arr: TIntegerArray): Integer; overload;');
  AddFunction(@PopLastTEA, 'function pp_Pop(var arr: TExtendedArray): Extended; overload;');
  AddFunction(@PopLastTSA, 'function pp_Pop(var arr: TStringArray): string; overload;');
  AddFunction(@PopLastTCA, 'function pp_Pop(var arr: TCharArray): Char; overload;');
  AddFunction(@PopLastTBoA, 'function pp_Pop(var arr: TBoolArray): Boolean; overload;');
  AddFunction(@PopLastTBA, 'function pp_Pop(var arr: TBoxArray): TBox; overload;');
  AddFunction(@PopTPA, 'function pp_Pop(var arr: TPointArray; index: Integer): TPoint; overload;');
  AddFunction(@PopTIA, 'function pp_Pop(var arr: TIntegerArray; index: Integer): Integer; overload;');
  AddFunction(@PopTEA, 'function pp_Pop(var arr: TExtendedArray; index: Integer): Extended; overload;');
  AddFunction(@PopTSA, 'function pp_Pop(var arr: TStringArray; index: Integer): string; overload;');
  AddFunction(@PopTCA, 'function pp_Pop(var arr: TCharArray; index: Integer): Char; overload;');
  AddFunction(@PopTBoA, 'function pp_Pop(var arr: TBoolArray; index: Integer): Boolean; overload;');
  AddFunction(@PopTBA, 'function pp_Pop(var arr: TBoxArray; index: Integer): TBox; overload;');
  AddFunction(@PopTPAEx, 'procedure pp_Pop(var arr: TPointArray; IDs: TIntegerArray; var output: TPointArray); overload;');
  AddFunction(@PopTIAEx, 'procedure pp_Pop(var arr: TIntegerArray; IDs: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@PopTEAEx, 'procedure pp_Pop(var arr: TExtendedArray; IDs: TIntegerArray; var output: TExtendedArray); overload;');
  AddFunction(@PopTSAEx, 'procedure pp_Pop(var arr: TStringArray; IDs: TIntegerArray; var output: TStringArray); overload;');
  AddFunction(@PopTCAEx, 'procedure pp_Pop(var arr: TCharArray; IDs: TIntegerArray; var output: TCharArray); overload;');
  AddFunction(@PopTBoAEx, 'procedure pp_Pop(var arr: TBoolArray; IDs: TIntegerArray; var output: TBoolArray); overload;');
  AddFunction(@PopTBAEx, 'procedure pp_Pop(var arr: TBoxArray; IDs: TIntegerArray; var output: TBoxArray); overload;');
  // pick
  AddFunction(@PickTPA, 'procedure pp_Pick(var arr: TPointArray; IDs: TIntegerArray; var output: TPointArray);');
  AddFunction(@PickTIA, 'procedure pp_Pick(var arr: TIntegerArray; IDs: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@PickTEA, 'procedure pp_Pick(var arr: TExtendedArray; IDs: TIntegerArray; var output: TExtendedArray); overload;');
  AddFunction(@PickTSA, 'procedure pp_Pick(var arr: TStringArray; IDs: TIntegerArray; var output: TStringArray); overload;');
  AddFunction(@PickTCA, 'procedure pp_Pick(var arr: TCharArray; IDs: TIntegerArray; var output: TCharArray); overload;');
  AddFunction(@PickTBoA, 'procedure pp_Pick(var arr: TBoolArray; IDs: TIntegerArray; var output: TBoolArray); overload;');
  AddFunction(@PickTBA, 'procedure pp_Pick(var arr: TBoxArray; IDs: TIntegerArray; var output: TBoxArray); overload;');
  AddFunction(@PickATPA, 'procedure pp_Pick(var arr: T2DPointArray; IDs: TIntegerArray; var output: T2DPointArray); overload;');
  AddFunction(@PickATIA, 'procedure pp_Pick(var arr: T2DIntegerArray; IDs: TIntegerArray; var output: T2DIntegerArray); overload;');
  AddFunction(@PickATEA, 'procedure pp_Pick(var arr: T2DExtendedArray; IDs: TIntegerArray; var output: T2DExtendedArray); overload;');
  AddFunction(@PickATSA, 'procedure pp_Pick(var arr: T2DStringArray; IDs: TIntegerArray; var output: T2DStringArray); overload;');
  AddFunction(@PickATCA, 'procedure pp_Pick(var arr: T2DCharArray; IDs: TIntegerArray; var output: T2DCharArray); overload;');
  AddFunction(@PickATBoA, 'procedure pp_Pick(var arr: T2DBoolArray; IDs: TIntegerArray; var output: T2DBoolArray); overload;');
  AddFunction(@PickATBA, 'procedure pp_Pick(var arr: T2DBoxArray; IDs: TIntegerArray; var output: T2DBoxArray); overload;');
  // move
  AddFunction(@MoveTPA, 'function pp_Move(var arr: TPointArray; oldIndex, newIndex: Integer): Boolean;');
  AddFunction(@MoveTIA, 'function pp_Move(var arr: TIntegerArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveTEA, 'function pp_Move(var arr: TExtendedArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveTSA, 'function pp_Move(var arr: TStringArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveTCA, 'function pp_Move(var arr: TCharArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveTBoA, 'function pp_Move(var arr: TBoolArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveTBA, 'function pp_Move(var arr: TBoxArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATPA, 'function pp_Move(var arr: T2DPointArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATIA, 'function pp_Move(var arr: T2DIntegerArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATEA, 'function pp_Move(var arr: T2DExtendedArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATSA, 'function pp_Move(var arr: T2DStringArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATCA, 'function pp_Move(var arr: T2DCharArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATBoA, 'function pp_Move(var arr: T2DBoolArray; oldIndex, newIndex: Integer): Boolean; overload;');
  AddFunction(@MoveATBA, 'function pp_Move(var arr: T2DBoxArray; oldIndex, newIndex: Integer): Boolean; overload;');
  // replace
  AddFunction(@ReplaceTPA, 'procedure pp_Replace(var arr: TPointArray; oldItem, newItem: TPoint);');
  AddFunction(@ReplaceTIA, 'procedure pp_Replace(var arr: TIntegerArray; oldItem, newItem: Integer); overload;');
  AddFunction(@ReplaceTEA, 'procedure pp_Replace(var arr: TExtendedArray; oldItem, newItem: Extended); overload;');
  AddFunction(@ReplaceTSA, 'procedure pp_Replace(var arr: TStringArray; oldItem, newItem: string); overload;');
  AddFunction(@ReplaceTCA, 'procedure pp_Replace(var arr: TCharArray; oldItem, newItem: Char); overload;');
  AddFunction(@ReplaceTBoA, 'procedure pp_Replace(var arr: TBoolArray; oldItem, newItem: Boolean); overload;');
  AddFunction(@ReplaceTBA, 'procedure pp_Replace(var arr: TBoxArray; oldItem, newItem: TBox); overload;');
  AddFunction(@ReplaceExTPA, 'procedure pp_Replace(var arr: TPointArray; oldItems: TPointArray; newItem: TPoint); overload;');
  AddFunction(@ReplaceExTIA, 'procedure pp_Replace(var arr: TIntegerArray; oldItems: TIntegerArray; newItem: Integer); overload;');
  AddFunction(@ReplaceExTEA, 'procedure pp_Replace(var arr: TExtendedArray; oldItems: TExtendedArray; newItem: Extended); overload;');
  AddFunction(@ReplaceExTSA, 'procedure pp_Replace(var arr: TStringArray; oldItems: TStringArray; newItem: string); overload;');
  AddFunction(@ReplaceExTCA, 'procedure pp_Replace(var arr: TCharArray; oldItems: TCharArray; newItem: Char); overload;');
  AddFunction(@ReplaceExTBoA, 'procedure pp_Replace(var arr: TBoolArray; oldItems: TBoolArray; newItem: Boolean); overload;');
  AddFunction(@ReplaceExTBA, 'procedure pp_Replace(var arr: TBoxArray; oldItems: TBoxArray; newItem: TBox); overload;');
  AddFunction(@ReplaceATPA, 'procedure pp_Replace(var arr: T2DPointArray; oldItem, newItem: TPoint); overload;');
  AddFunction(@ReplaceATIA, 'procedure pp_Replace(var arr: T2DIntegerArray; oldItem, newItem: Integer); overload;');
  AddFunction(@ReplaceATEA, 'procedure pp_Replace(var arr: T2DExtendedArray; oldItem, newItem: Extended); overload;');
  AddFunction(@ReplaceATSA, 'procedure pp_Replace(var arr: T2DStringArray; oldItem, newItem: string); overload;');
  AddFunction(@ReplaceATCA, 'procedure pp_Replace(var arr: T2DCharArray; oldItem, newItem: Char); overload;');
  AddFunction(@ReplaceATBoA, 'procedure pp_Replace(var arr: T2DBoolArray; oldItem, newItem: Boolean); overload;');
  AddFunction(@ReplaceATBA, 'procedure pp_Replace(var arr: T2DBoxArray; oldItem, newItem: TBox); overload;');
  AddFunction(@ReplaceExATPA, 'procedure pp_Replace(var arr: T2DPointArray; oldItems: TPointArray; newItem: TPoint); overload;');
  AddFunction(@ReplaceExATIA, 'procedure pp_Replace(var arr: T2DIntegerArray; oldItems: TIntegerArray; newItem: Integer); overload;');
  AddFunction(@ReplaceExATEA, 'procedure pp_Replace(var arr: T2DExtendedArray; oldItems: TExtendedArray; newItem: Extended); overload;');
  AddFunction(@ReplaceExATSA, 'procedure pp_Replace(var arr: T2DStringArray; oldItems: TStringArray; newItem: string); overload;');
  AddFunction(@ReplaceExATCA, 'procedure pp_Replace(var arr: T2DCharArray; oldItems: TCharArray; newItem: Char); overload;');
  AddFunction(@ReplaceExATBoA, 'procedure pp_Replace(var arr: T2DBoolArray; oldItems: TBoolArray; newItem: Boolean); overload;');
  AddFunction(@ReplaceExATBA, 'procedure pp_Replace(var arr: T2DBoxArray; oldItems: TBoxArray; newItem: TBox); overload;');
  AddFunction(@ReplaceOTPA, 'procedure pp_Replace(var arr: TPointArray; offset: Integer; oldItem, newItem: TPoint); overload;');
  AddFunction(@ReplaceOTIA, 'procedure pp_Replace(var arr: TIntegerArray; offset: Integer; oldItem, newItem: Integer); overload;');
  AddFunction(@ReplaceOTEA, 'procedure pp_Replace(var arr: TExtendedArray; offset: Integer; oldItem, newItem: Extended); overload;');
  AddFunction(@ReplaceOTSA, 'procedure pp_Replace(var arr: TStringArray; offset: Integer; oldItem, newItem: string); overload;');
  AddFunction(@ReplaceOTCA, 'procedure pp_Replace(var arr: TCharArray; offset: Integer; oldItem, newItem: Char); overload;');
  AddFunction(@ReplaceOTBoA, 'procedure pp_Replace(var arr: TBoolArray; offset: Integer; oldItem, newItem: Boolean); overload;');
  AddFunction(@ReplaceOTBA, 'procedure pp_Replace(var arr: TBoxArray; offset: Integer; oldItem, newItem: TBox); overload;');
  AddFunction(@ReplaceExOTPA, 'procedure pp_Replace(var arr: TPointArray; offset: Integer; oldItems: TPointArray; newItem: TPoint); overload;');
  AddFunction(@ReplaceExOTIA, 'procedure pp_Replace(var arr: TIntegerArray; offset: Integer; oldItems: TIntegerArray; newItem: Integer); overload;');
  AddFunction(@ReplaceExOTEA, 'procedure pp_Replace(var arr: TExtendedArray; offset: Integer; oldItems: TExtendedArray; newItem: Extended); overload;');
  AddFunction(@ReplaceExOTSA, 'procedure pp_Replace(var arr: TStringArray; offset: Integer; oldItems: TStringArray; newItem: string); overload;');
  AddFunction(@ReplaceExOTCA, 'procedure pp_Replace(var arr: TCharArray; offset: Integer; oldItems: TCharArray; newItem: Char); overload;');
  AddFunction(@ReplaceExOTBoA, 'procedure pp_Replace(var arr: TBoolArray; offset: Integer; oldItems: TBoolArray; newItem: Boolean); overload;');
  AddFunction(@ReplaceExOTBA, 'procedure pp_Replace(var arr: TBoxArray; offset: Integer; oldItems: TBoxArray; newItem: TBox); overload;');
  AddFunction(@ReplaceOATPA, 'procedure pp_Replace(var arr: T2DPointArray; offset: Integer; oldItem, newItem: TPoint); overload;');
  AddFunction(@ReplaceOATIA, 'procedure pp_Replace(var arr: T2DIntegerArray; offset: Integer; oldItem, newItem: Integer); overload;');
  AddFunction(@ReplaceOATEA, 'procedure pp_Replace(var arr: T2DExtendedArray; offset: Integer; oldItem, newItem: Extended); overload;');
  AddFunction(@ReplaceOATSA, 'procedure pp_Replace(var arr: T2DStringArray; offset: Integer; oldItem, newItem: string); overload;');
  AddFunction(@ReplaceOATCA, 'procedure pp_Replace(var arr: T2DCharArray; offset: Integer; oldItem, newItem: Char); overload;');
  AddFunction(@ReplaceOATBoA, 'procedure pp_Replace(var arr: T2DBoolArray; offset: Integer; oldItem, newItem: Boolean); overload;');
  AddFunction(@ReplaceOATBA, 'procedure pp_Replace(var arr: T2DBoxArray; offset: Integer; oldItem, newItem: TBox); overload;');
  AddFunction(@ReplaceExOATPA, 'procedure pp_Replace(var arr: T2DPointArray; offset: Integer; oldItems: TPointArray; newItem: TPoint); overload;');
  AddFunction(@ReplaceExOATIA, 'procedure pp_Replace(var arr: T2DIntegerArray; offset: Integer; oldItems: TIntegerArray; newItem: Integer); overload;');
  AddFunction(@ReplaceExOATEA, 'procedure pp_Replace(var arr: T2DExtendedArray; offset: Integer; oldItems: TExtendedArray; newItem: Extended); overload;');
  AddFunction(@ReplaceExOATSA, 'procedure pp_Replace(var arr: T2DStringArray; offset: Integer; oldItems: TStringArray; newItem: string); overload;');
  AddFunction(@ReplaceExOATCA, 'procedure pp_Replace(var arr: T2DCharArray; offset: Integer; oldItems: TCharArray; newItem: Char); overload;');
  AddFunction(@ReplaceExOATBoA, 'procedure pp_Replace(var arr: T2DBoolArray; offset: Integer; oldItems: TBoolArray; newItem: Boolean); overload;');
  AddFunction(@ReplaceExOATBA, 'procedure pp_Replace(var arr: T2DBoxArray; offset: Integer; oldItems: TBoxArray; newItem: TBox); overload;');
  // create
  AddFunction(@CreateTPA, 'procedure pp_Create(item: TPoint; size: Integer; var output: TPointArray);');
  AddFunction(@CreateTIA, 'procedure pp_Create(item: Integer; size: Integer; var output: TIntegerArray); overload;');
  AddFunction(@CreateTEA, 'procedure pp_Create(item: Extended; size: Integer; var output: TExtendedArray); overload;');
  AddFunction(@CreateTSA, 'procedure pp_Create(item: string; size: Integer; var output: TStringArray); overload;');
  AddFunction(@CreateTCA, 'procedure pp_Create(item: Char; size: Integer; var output: TCharArray); overload;');
  AddFunction(@CreateTBoA, 'procedure pp_Create(item: Boolean; size: Integer; var output: TBoolArray); overload;');
  AddFunction(@CreateTBA, 'procedure pp_Create(item: TBox; size: Integer; var output: TBoxArray); overload;');
  AddFunction(@CreateExTPA, 'procedure pp_Create(items: TPointArray; size: Integer; var output: TPointArray); overload;');
  AddFunction(@CreateExTIA, 'procedure pp_Create(items: TIntegerArray; size: Integer; var output: TIntegerArray); overload;');
  AddFunction(@CreateExTEA, 'procedure pp_Create(items: TExtendedArray; size: Integer; var output: TExtendedArray); overload;');
  AddFunction(@CreateExTSA, 'procedure pp_Create(items: TStringArray; size: Integer; var output: TStringArray); overload;');
  AddFunction(@CreateExTCA, 'procedure pp_Create(items: TCharArray; size: Integer; var output: TCharArray); overload;');
  AddFunction(@CreateExTBoA, 'procedure pp_Create(items: TBoolArray; size: Integer; var output: TBoolArray); overload;');
  AddFunction(@CreateExTBA, 'procedure pp_Create(items: TBoxArray; size: Integer; var output: TBoxArray); overload;');
  AddFunction(@CreateATPA, 'procedure pp_Create(item: TPoint; size1D, size2D: Integer; var output: T2DPointArray); overload;');
  AddFunction(@CreateATIA, 'procedure pp_Create(item: Integer; size1D, size2D: Integer; var output: T2DIntegerArray); overload;');
  AddFunction(@CreateATEA, 'procedure pp_Create(item: Extended; size1D, size2D: Integer; var output: T2DExtendedArray); overload;');
  AddFunction(@CreateATSA, 'procedure pp_Create(item: string; size1D, size2D: Integer; var output: T2DStringArray); overload;');
  AddFunction(@CreateATCA, 'procedure pp_Create(item: Char; size1D, size2D: Integer; var output: T2DCharArray); overload;');
  AddFunction(@CreateATBoA, 'procedure pp_Create(item: Boolean; size1D, size2D: Integer; var output: T2DBoolArray); overload;');
  AddFunction(@CreateATBA, 'procedure pp_Create(item: TBox; size1D, size2D: Integer; var output: T2DBoxArray); overload;');
  // build
  AddFunction(@BuildTPA, 'procedure pp_Build(var arr: TPointArray; size: Integer);');
  AddFunction(@BuildTIA, 'procedure pp_Build(var arr: TIntegerArray; size: Integer); overload;');
  AddFunction(@BuildTEA, 'procedure pp_Build(var arr: TExtendedArray; size: Integer); overload;');
  AddFunction(@BuildTSA, 'procedure pp_Build(var arr: TStringArray; size: Integer); overload;');
  AddFunction(@BuildTCA, 'procedure pp_Build(var arr: TCharArray; size: Integer); overload;');
  AddFunction(@BuildTBoA, 'procedure pp_Build(var arr: TBoolArray; size: Integer); overload;');
  AddFunction(@BuildTBA, 'procedure pp_Build(var arr: TBoxArray; size: Integer); overload;');
  AddFunction(@BuildATPA, 'procedure pp_Build(var arr: T2DPointArray; size1D, size2D: Integer); overload;');
  AddFunction(@BuildATIA, 'procedure pp_Build(var arr: T2DIntegerArray; size1D, size2D: Integer); overload;');
  AddFunction(@BuildATEA, 'procedure pp_Build(var arr: T2DExtendedArray; size1D, size2D: Integer); overload;');
  AddFunction(@BuildATSA, 'procedure pp_Build(var arr: T2DStringArray; size1D, size2D: Integer); overload;');
  AddFunction(@BuildATCA, 'procedure pp_Build(var arr: T2DCharArray; size1D, size2D: Integer); overload;');
  AddFunction(@BuildATBoA, 'procedure pp_Build(var arr: T2DBoolArray; size1D, size2D: Integer); overload;');
  AddFunction(@BuildATBA, 'procedure pp_Build(var arr: T2DBoxArray; size1D, size2D: Integer); overload;');
  // fill
  AddFunction(@FillTPA, 'procedure pp_Fill(var arr: TPointArray; item: TPoint);');
  AddFunction(@FillTIA, 'procedure pp_Fill(var arr: TIntegerArray; item: Integer); overload;');
  AddFunction(@FillTEA, 'procedure pp_Fill(var arr: TExtendedArray; item: Extended); overload;');
  AddFunction(@FillTSA, 'procedure pp_Fill(var arr: TStringArray; item: string); overload;');
  AddFunction(@FillTCA, 'procedure pp_Fill(var arr: TCharArray; item: Char); overload;');
  AddFunction(@FillTBoA, 'procedure pp_Fill(var arr: TBoolArray; item: Boolean); overload;');
  AddFunction(@FillTBA, 'procedure pp_Fill(var arr: TBoxArray; item: TBox); overload;');
  AddFunction(@FillExTPA, 'procedure pp_Fill(var arr: TPointArray; items: TPointArray); overload;');
  AddFunction(@FillExTIA, 'procedure pp_Fill(var arr: TIntegerArray; items: TIntegerArray); overload;');
  AddFunction(@FillExTEA, 'procedure pp_Fill(var arr: TExtendedArray; items: TExtendedArray); overload;');
  AddFunction(@FillExTSA, 'procedure pp_Fill(var arr: TStringArray; items: TStringArray); overload;');
  AddFunction(@FillExTCA, 'procedure pp_Fill(var arr: TCharArray; items: TCharArray); overload;');
  AddFunction(@FillExTBoA, 'procedure pp_Fill(var arr: TBoolArray; items: TBoolArray); overload;');
  AddFunction(@FillExTBA, 'procedure pp_Fill(var arr: TBoxArray; items: TBoxArray); overload;');
  AddFunction(@FillIDsTPA, 'procedure pp_Fill(var arr: TPointArray; IDs: TIntegerArray; item: TPoint); overload;');
  AddFunction(@FillIDsTIA, 'procedure pp_Fill(var arr: TIntegerArray; IDs: TIntegerArray; item: Integer); overload;');
  AddFunction(@FillIDsTEA, 'procedure pp_Fill(var arr: TExtendedArray; IDs: TIntegerArray; item: Extended); overload;');
  AddFunction(@FillIDsTSA, 'procedure pp_Fill(var arr: TStringArray; IDs: TIntegerArray; item: string); overload;');
  AddFunction(@FillIDsTCA, 'procedure pp_Fill(var arr: TCharArray; IDs: TIntegerArray; item: Char); overload;');
  AddFunction(@FillIDsTBoA, 'procedure pp_Fill(var arr: TBoolArray; IDs: TIntegerArray; item: Boolean); overload;');
  AddFunction(@FillIDsTBA, 'procedure pp_Fill(var arr: TBoxArray; IDs: TIntegerArray; item: TBox); overload;');
  AddFunction(@FillIDsExTPA, 'procedure pp_Fill(var arr: TPointArray; IDs: TIntegerArray; items: TPointArray); overload;');
  AddFunction(@FillIDsExTIA, 'procedure pp_Fill(var arr: TIntegerArray; IDs: TIntegerArray; items: TIntegerArray); overload;');
  AddFunction(@FillIDsExTEA, 'procedure pp_Fill(var arr: TExtendedArray; IDs: TIntegerArray; items: TExtendedArray); overload;');
  AddFunction(@FillIDsExTSA, 'procedure pp_Fill(var arr: TStringArray; IDs: TIntegerArray; items: TStringArray); overload;');
  AddFunction(@FillIDsExTCA, 'procedure pp_Fill(var arr: TCharArray; IDs: TIntegerArray; items: TCharArray); overload;');
  AddFunction(@FillIDsExTBoA, 'procedure pp_Fill(var arr: TBoolArray; IDs: TIntegerArray; items: TBoolArray); overload;');
  AddFunction(@FillIDsExTBA, 'procedure pp_Fill(var arr: TBoxArray; IDs: TIntegerArray; items: TBoxArray); overload;');
  AddFunction(@FillOTPA, 'procedure pp_Fill(var arr: TPointArray; offset: Integer; item: TPoint); overload;');
  AddFunction(@FillOTIA, 'procedure pp_Fill(var arr: TIntegerArray; offset: Integer; item: Integer); overload;');
  AddFunction(@FillOTEA, 'procedure pp_Fill(var arr: TExtendedArray; offset: Integer; item: Extended); overload;');
  AddFunction(@FillOTSA, 'procedure pp_Fill(var arr: TStringArray; offset: Integer; item: string); overload;');
  AddFunction(@FillOTCA, 'procedure pp_Fill(var arr: TCharArray; offset: Integer; item: Char); overload;');
  AddFunction(@FillOTBoA, 'procedure pp_Fill(var arr: TBoolArray; offset: Integer; item: Boolean); overload;');
  AddFunction(@FillOTBA, 'procedure pp_Fill(var arr: TBoxArray; offset: Integer; item: TBox); overload;');
  AddFunction(@FillExOTPA, 'procedure pp_Fill(var arr: TPointArray; offset: Integer; items: TPointArray); overload;');
  AddFunction(@FillExOTIA, 'procedure pp_Fill(var arr: TIntegerArray; offset: Integer; items: TIntegerArray); overload;');
  AddFunction(@FillExOTEA, 'procedure pp_Fill(var arr: TExtendedArray; offset: Integer; items: TExtendedArray); overload;');
  AddFunction(@FillExOTSA, 'procedure pp_Fill(var arr: TStringArray; offset: Integer; items: TStringArray); overload;');
  AddFunction(@FillExOTCA, 'procedure pp_Fill(var arr: TCharArray; offset: Integer; items: TCharArray); overload;');
  AddFunction(@FillExOTBoA, 'procedure pp_Fill(var arr: TBoolArray; offset: Integer; items: TBoolArray); overload;');
  AddFunction(@FillExOTBA, 'procedure pp_Fill(var arr: TBoxArray; offset: Integer; items: TBoxArray); overload;');
  AddFunction(@FillATPA, 'procedure pp_Fill(var arr: T2DPointArray; item: TPoint); overload;');
  AddFunction(@FillATIA, 'procedure pp_Fill(var arr: T2DIntegerArray; item: Integer); overload;');
  AddFunction(@FillATEA, 'procedure pp_Fill(var arr: T2DExtendedArray; item: Extended); overload;');
  AddFunction(@FillATSA, 'procedure pp_Fill(var arr: T2DStringArray; item: string); overload;');
  AddFunction(@FillATCA, 'procedure pp_Fill(var arr: T2DCharArray; item: Char); overload;');
  AddFunction(@FillATBoA, 'procedure pp_Fill(var arr: T2DBoolArray; item: Boolean); overload;');
  AddFunction(@FillATBA, 'procedure pp_Fill(var arr: T2DBoxArray; item: TBox); overload;');
  // reverse
  AddFunction(@ReverseTPA, 'procedure pp_Reverse(var arr: TPointArray);');
  AddFunction(@ReverseTIA, 'procedure pp_Reverse(var arr: TIntegerArray); overload;');
  AddFunction(@ReverseTEA, 'procedure pp_Reverse(var arr: TExtendedArray); overload;');
  AddFunction(@ReverseTSA, 'procedure pp_Reverse(var arr: TStringArray); overload;');
  AddFunction(@ReverseTCA, 'procedure pp_Reverse(var arr: TCharArray); overload;');
  AddFunction(@ReverseTBoA, 'procedure pp_Reverse(var arr: TBoolArray); overload;');
  AddFunction(@ReverseTBA, 'procedure pp_Reverse(var arr: TBoxArray); overload;');
  // unique
  AddFunction(@UniqueTPA, 'procedure pp_Unique(var arr: TPointArray);');
  AddFunction(@UniqueTIA, 'procedure pp_Unique(var arr: TIntegerArray); overload;');
  AddFunction(@UniqueTEA, 'procedure pp_Unique(var arr: TExtendedArray); overload;');
  AddFunction(@UniqueTSA, 'procedure pp_Unique(var arr: TStringArray); overload;');
  AddFunction(@UniqueTCA, 'procedure pp_Unique(var arr: TCharArray); overload;');
  AddFunction(@UniqueTBoA, 'procedure pp_Unique(var arr: TBoolArray); overload;');
  AddFunction(@UniqueTBA, 'procedure pp_Unique(var arr: TBoxArray); overload;');
  // uniqueids
  AddFunction(@UniquesTPA, 'procedure pp_Uniques(arr: TPointArray; var output: TIntegerArray);');
  AddFunction(@UniquesTIA, 'procedure pp_Uniques(arr: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@UniquesTEA, 'procedure pp_Uniques(arr: TExtendedArray; var output: TIntegerArray); overload;');
  AddFunction(@UniquesTSA, 'procedure pp_Uniques(arr: TStringArray; var output: TIntegerArray); overload;');
  AddFunction(@UniquesTCA, 'procedure pp_Uniques(arr: TCharArray; var output: TIntegerArray); overload;');
  AddFunction(@UniquesTBoA, 'procedure pp_Uniques(arr: TBoolArray; var output: TIntegerArray); overload;');
  AddFunction(@UniquesTBA, 'procedure pp_Uniques(arr: TBoxArray; var output: TIntegerArray); overload;');
  // allunique
  AddFunction(@AllUniqueTPA, 'function pp_AllUnique(arr: TPointArray): Boolean;');
  AddFunction(@AllUniqueTIA, 'function pp_AllUnique(arr: TIntegerArray): Boolean; overload;');
  AddFunction(@AllUniqueTEA, 'function pp_AllUnique(arr: TExtendedArray): Boolean; overload;');
  AddFunction(@AllUniqueTSA, 'function pp_AllUnique(arr: TStringArray): Boolean; overload;');
  AddFunction(@AllUniqueTCA, 'function pp_AllUnique(arr: TCharArray): Boolean; overload;');
  AddFunction(@AllUniqueTBoA, 'function pp_AllUnique(arr: TBoolArray): Boolean; overload;');
  AddFunction(@AllUniqueTBA, 'function pp_AllUnique(arr: TBoxArray): Boolean; overload;');
  // contains
  AddFunction(@ContainsTPA, 'function pp_Contains(arr: TPointArray; item: TPoint): Boolean;');
  AddFunction(@ContainsTIA, 'function pp_Contains(arr: TIntegerArray; item: Integer): Boolean; overload;');
  AddFunction(@ContainsTEA, 'function pp_Contains(arr: TExtendedArray; item: Extended): Boolean; overload;');
  AddFunction(@ContainsTSA, 'function pp_Contains(arr: TStringArray; item: string): Boolean; overload;');
  AddFunction(@ContainsTCA, 'function pp_Contains(arr: TCharArray; item: Char): Boolean; overload;');
  AddFunction(@ContainsTBoA, 'function pp_Contains(arr: TBoolArray; item: Boolean): Boolean; overload;');
  AddFunction(@ContainsTBA, 'function pp_Contains(arr: TBoxArray; item: TBox): Boolean; overload;');
  AddFunction(@ContainsExTPA, 'function pp_Contains(arr: TPointArray; items: TPointArray): Boolean; overload;');
  AddFunction(@ContainsExTIA, 'function pp_Contains(arr: TIntegerArray; items: TIntegerArray): Boolean; overload;');
  AddFunction(@ContainsExTEA, 'function pp_Contains(arr: TExtendedArray; items: TExtendedArray): Boolean; overload;');
  AddFunction(@ContainsExTSA, 'function pp_Contains(arr: TStringArray; items: TStringArray): Boolean; overload;');
  AddFunction(@ContainsExTCA, 'function pp_Contains(arr: TCharArray; items: TCharArray): Boolean; overload;');
  AddFunction(@ContainsExTBoA, 'function pp_Contains(arr: TBoolArray; items: TBoolArray): Boolean; overload;');
  AddFunction(@ContainsExTBA, 'function pp_Contains(arr: TBoxArray; items: TBoxArray): Boolean; overload;');
  AddFunction(@ContainsATPA, 'function pp_Contains(arr: T2DPointArray; item: TPoint): Boolean; overload;');
  AddFunction(@ContainsATIA, 'function pp_Contains(arr: T2DIntegerArray; item: Integer): Boolean; overload;');
  AddFunction(@ContainsATEA, 'function pp_Contains(arr: T2DExtendedArray; item: Extended): Boolean; overload;');
  AddFunction(@ContainsATSA, 'function pp_Contains(arr: T2DStringArray; item: string): Boolean; overload;');
  AddFunction(@ContainsATCA, 'function pp_Contains(arr: T2DCharArray; item: Char): Boolean; overload;');
  AddFunction(@ContainsATBoA, 'function pp_Contains(arr: T2DBoolArray; item: Boolean): Boolean; overload;');
  AddFunction(@ContainsATBA, 'function pp_Contains(arr: T2DBoxArray; item: TBox): Boolean; overload;');
  AddFunction(@ContainsExATPA, 'function pp_Contains(arr: T2DPointArray; items: TPointArray): Boolean; overload;');
  AddFunction(@ContainsExATIA, 'function pp_Contains(arr: T2DIntegerArray; items: TIntegerArray): Boolean; overload;');
  AddFunction(@ContainsExATEA, 'function pp_Contains(arr: T2DExtendedArray; items: TExtendedArray): Boolean; overload;');
  AddFunction(@ContainsExATSA, 'function pp_Contains(arr: T2DStringArray; items: TStringArray): Boolean; overload;');
  AddFunction(@ContainsExATCA, 'function pp_Contains(arr: T2DCharArray; items: TCharArray): Boolean; overload;');
  AddFunction(@ContainsExATBoA, 'function pp_Contains(arr: T2DBoolArray; items: TBoolArray): Boolean; overload;');
  AddFunction(@ContainsExATBA, 'function pp_Contains(arr: T2DBoxArray; items: TBoxArray): Boolean; overload;');
  AddFunction(@ContainsOTPA, 'function pp_Contains(arr: TPointArray; offset: Integer; item: TPoint): Boolean; overload;');
  AddFunction(@ContainsOTIA, 'function pp_Contains(arr: TIntegerArray; offset: Integer; item: Integer): Boolean; overload;');
  AddFunction(@ContainsOTEA, 'function pp_Contains(arr: TExtendedArray; offset: Integer; item: Extended): Boolean; overload;');
  AddFunction(@ContainsOTSA, 'function pp_Contains(arr: TStringArray; offset: Integer; item: string): Boolean; overload;');
  AddFunction(@ContainsOTCA, 'function pp_Contains(arr: TCharArray; offset: Integer; item: Char): Boolean; overload;');
  AddFunction(@ContainsOTBoA, 'function pp_Contains(arr: TBoolArray; offset: Integer; item: Boolean): Boolean; overload;');
  AddFunction(@ContainsOTBA, 'function pp_Contains(arr: TBoxArray; offset: Integer; item: TBox): Boolean; overload;');
  AddFunction(@ContainsExOTPA, 'function pp_Contains(arr: TPointArray; offset: Integer; items: TPointArray): Boolean; overload;');
  AddFunction(@ContainsExOTIA, 'function pp_Contains(arr: TIntegerArray; offset: Integer; items: TIntegerArray): Boolean; overload;');
  AddFunction(@ContainsExOTEA, 'function pp_Contains(arr: TExtendedArray; offset: Integer; items: TExtendedArray): Boolean; overload;');
  AddFunction(@ContainsExOTSA, 'function pp_Contains(arr: TStringArray; offset: Integer; items: TStringArray): Boolean; overload;');
  AddFunction(@ContainsExOTCA, 'function pp_Contains(arr: TCharArray; offset: Integer; items: TCharArray): Boolean; overload;');
  AddFunction(@ContainsExOTBoA, 'function pp_Contains(arr: TBoolArray; offset: Integer; items: TBoolArray): Boolean; overload;');
  AddFunction(@ContainsExOTBA, 'function pp_Contains(arr: TBoxArray; offset: Integer; items: TBoxArray): Boolean; overload;');
  AddFunction(@ContainsOATPA, 'function pp_Contains(arr: T2DPointArray; offset: Integer; item: TPoint): Boolean; overload;');
  AddFunction(@ContainsOATIA, 'function pp_Contains(arr: T2DIntegerArray; offset: Integer; item: Integer): Boolean; overload;');
  AddFunction(@ContainsOATEA, 'function pp_Contains(arr: T2DExtendedArray; offset: Integer; item: Extended): Boolean; overload;');
  AddFunction(@ContainsOATSA, 'function pp_Contains(arr: T2DStringArray; offset: Integer; item: string): Boolean; overload;');
  AddFunction(@ContainsOATCA, 'function pp_Contains(arr: T2DCharArray; offset: Integer; item: Char): Boolean; overload;');
  AddFunction(@ContainsOATBoA, 'function pp_Contains(arr: T2DBoolArray; offset: Integer; item: Boolean): Boolean; overload;');
  AddFunction(@ContainsOATBA, 'function pp_Contains(arr: T2DBoxArray; offset: Integer; item: TBox): Boolean; overload;');
  AddFunction(@ContainsExOATPA, 'function pp_Contains(arr: T2DPointArray; offset: Integer; items: TPointArray): Boolean; overload;');
  AddFunction(@ContainsExOATIA, 'function pp_Contains(arr: T2DIntegerArray; offset: Integer; items: TIntegerArray): Boolean; overload;');
  AddFunction(@ContainsExOATEA, 'function pp_Contains(arr: T2DExtendedArray; offset: Integer; items: TExtendedArray): Boolean; overload;');
  AddFunction(@ContainsExOATSA, 'function pp_Contains(arr: T2DStringArray; offset: Integer; items: TStringArray): Boolean; overload;');
  AddFunction(@ContainsExOATCA, 'function pp_Contains(arr: T2DCharArray; offset: Integer; items: TCharArray): Boolean; overload;');
  AddFunction(@ContainsExOATBoA, 'function pp_Contains(arr: T2DBoolArray; offset: Integer; items: TBoolArray): Boolean; overload;');
  AddFunction(@ContainsExOATBA, 'function pp_Contains(arr: T2DBoxArray; offset: Integer; items: TBoxArray): Boolean; overload;');
  // holds
  AddFunction(@HoldsTPA, 'function pp_Holds(arr, chain: TPointArray): Boolean;');
  AddFunction(@HoldsTIA, 'function pp_Holds(arr, chain: TIntegerArray): Boolean; overload;');
  AddFunction(@HoldsTEA, 'function pp_Holds(arr, chain: TExtendedArray): Boolean; overload;');
  AddFunction(@HoldsTSA, 'function pp_Holds(arr, chain: TStringArray): Boolean; overload;');
  AddFunction(@HoldsTCA, 'function pp_Holds(arr, chain: TCharArray): Boolean; overload;');
  AddFunction(@HoldsTBoA, 'function pp_Holds(arr, chain: TBoolArray): Boolean; overload;');
  AddFunction(@HoldsTBA, 'function pp_Holds(arr, chain: TBoxArray): Boolean; overload;');
  AddFunction(@HoldsATPA, 'function pp_Holds(arr: T2DPointArray; chain: TPointArray): Boolean; overload;');
  AddFunction(@HoldsATIA, 'function pp_Holds(arr: T2DIntegerArray; chain: TIntegerArray): Boolean; overload;');
  AddFunction(@HoldsATEA, 'function pp_Holds(arr: T2DExtendedArray; chain: TExtendedArray): Boolean; overload;');
  AddFunction(@HoldsATSA, 'function pp_Holds(arr: T2DStringArray; chain: TStringArray): Boolean; overload;');
  AddFunction(@HoldsATCA, 'function pp_Holds(arr: T2DCharArray; chain: TCharArray): Boolean; overload;');
  AddFunction(@HoldsATBoA, 'function pp_Holds(arr: T2DBoolArray; chain: TBoolArray): Boolean; overload;');
  AddFunction(@HoldsATBA, 'function pp_Holds(arr: T2DBoxArray; chain: TBoxArray): Boolean; overload;');
  // position
  AddFunction(@PositionTPA, 'function pp_Position(arr: TPointArray; item: TPoint): Integer;');
  AddFunction(@PositionTIA, 'function pp_Position(arr: TIntegerArray; item: Integer): Integer; overload;');
  AddFunction(@PositionTEA, 'function pp_Position(arr: TExtendedArray; item: Extended): Integer; overload;');
  AddFunction(@PositionTSA, 'function pp_Position(arr: TStringArray; item: string): Integer; overload;');
  AddFunction(@PositionTCA, 'function pp_Position(arr: TCharArray; item: Char): Integer; overload;');
  AddFunction(@PositionTBoA, 'function pp_Position(arr: TBoolArray; item: Boolean): Integer; overload;');
  AddFunction(@PositionTBA, 'function pp_Position(arr: TBoxArray; item: TBox): Integer; overload;');
  AddFunction(@PositionExTPA, 'function pp_Position(arr: TPointArray; items: TPointArray): Integer; overload;');
  AddFunction(@PositionExTIA, 'function pp_Position(arr: TIntegerArray; items: TIntegerArray): Integer; overload;');
  AddFunction(@PositionExTEA, 'function pp_Position(arr: TExtendedArray; items: TExtendedArray): Integer; overload;');
  AddFunction(@PositionExTSA, 'function pp_Position(arr: TStringArray; items: TStringArray): Integer; overload;');
  AddFunction(@PositionExTCA, 'function pp_Position(arr: TCharArray; items: TCharArray): Integer; overload;');
  AddFunction(@PositionExTBoA, 'function pp_Position(arr: TBoolArray; items: TBoolArray): Integer; overload;');
  AddFunction(@PositionExTBA, 'function pp_Position(arr: TBoxArray; items: TBoxArray): Integer; overload;');
  AddFunction(@PositionOTPA, 'function pp_Position(arr: TPointArray; offset: Integer; item: TPoint): Integer; overload;');
  AddFunction(@PositionOTIA, 'function pp_Position(arr: TIntegerArray; offset: Integer; item: Integer): Integer; overload;');
  AddFunction(@PositionOTEA, 'function pp_Position(arr: TExtendedArray; offset: Integer; item: Extended): Integer; overload;');
  AddFunction(@PositionOTSA, 'function pp_Position(arr: TStringArray; offset: Integer; item: string): Integer; overload;');
  AddFunction(@PositionOTCA, 'function pp_Position(arr: TCharArray; offset: Integer; item: Char): Integer; overload;');
  AddFunction(@PositionOTBoA, 'function pp_Position(arr: TBoolArray; offset: Integer; item: Boolean): Integer; overload;');
  AddFunction(@PositionOTBA, 'function pp_Position(arr: TBoxArray; offset: Integer; item: TBox): Integer; overload;');
  AddFunction(@PositionExOTPA, 'function pp_Position(arr: TPointArray; offset: Integer; items: TPointArray): Integer; overload;');
  AddFunction(@PositionExOTIA, 'function pp_Position(arr: TIntegerArray; offset: Integer; items: TIntegerArray): Integer; overload;');
  AddFunction(@PositionExOTEA, 'function pp_Position(arr: TExtendedArray; offset: Integer; items: TExtendedArray): Integer; overload;');
  AddFunction(@PositionExOTSA, 'function pp_Position(arr: TStringArray; offset: Integer; items: TStringArray): Integer; overload;');
  AddFunction(@PositionExOTCA, 'function pp_Position(arr: TCharArray; offset: Integer; items: TCharArray): Integer; overload;');
  AddFunction(@PositionExOTBoA, 'function pp_Position(arr: TBoolArray; offset: Integer; items: TBoolArray): Integer; overload;');
  AddFunction(@PositionExOTBA, 'function pp_Position(arr: TBoxArray; offset: Integer; items: TBoxArray): Integer; overload;');
  // positions
  AddFunction(@PositionsTPA, 'procedure pp_Positions(arr: TPointArray; item: TPoint; var output: TIntegerArray);');
  AddFunction(@PositionsTIA, 'procedure pp_Positions(arr: TIntegerArray; item: Integer; var output: TIntegerArray); overload;');
  AddFunction(@PositionsTEA, 'procedure pp_Positions(arr: TExtendedArray; item: Extended; var output: TIntegerArray); overload;');
  AddFunction(@PositionsTSA, 'procedure pp_Positions(arr: TStringArray; item: string; var output: TIntegerArray); overload;');
  AddFunction(@PositionsTCA, 'procedure pp_Positions(arr: TCharArray; item: Char; var output: TIntegerArray); overload;');
  AddFunction(@PositionsTBoA, 'procedure pp_Positions(arr: TBoolArray; item: Boolean; var output: TIntegerArray); overload;');
  AddFunction(@PositionsTBA, 'procedure pp_Positions(arr: TBoxArray; item: TBox; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTPA, 'procedure pp_Positions(arr: TPointArray; items: TPointArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTIA, 'procedure pp_Positions(arr: TIntegerArray; items: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTEA, 'procedure pp_Positions(arr: TExtendedArray; items: TExtendedArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTSA, 'procedure pp_Positions(arr: TStringArray; items: TStringArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTCA, 'procedure pp_Positions(arr: TCharArray; items: TCharArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTBoA, 'procedure pp_Positions(arr: TBoolArray; items: TBoolArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExTBA, 'procedure pp_Positions(arr: TBoxArray; items: TBoxArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTPA, 'procedure pp_Positions(arr: TPointArray; offset: Integer; item: TPoint; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTIA, 'procedure pp_Positions(arr: TIntegerArray; offset: Integer; item: Integer; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTEA, 'procedure pp_Positions(arr: TExtendedArray; offset: Integer; item: Extended; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTSA, 'procedure pp_Positions(arr: TStringArray; offset: Integer; item: string; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTCA, 'procedure pp_Positions(arr: TCharArray; offset: Integer; item: Char; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTBoA, 'procedure pp_Positions(arr: TBoolArray; offset: Integer; item: Boolean; var output: TIntegerArray); overload;');
  AddFunction(@PositionsOTBA, 'procedure pp_Positions(arr: TBoxArray; offset: Integer; item: TBox; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTPA, 'procedure pp_Positions(arr: TPointArray; offset: Integer; items: TPointArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTIA, 'procedure pp_Positions(arr: TIntegerArray; offset: Integer; items: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTEA, 'procedure pp_Positions(arr: TExtendedArray; offset: Integer; items: TExtendedArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTSA, 'procedure pp_Positions(arr: TStringArray; offset: Integer; items: TStringArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTCA, 'procedure pp_Positions(arr: TCharArray; offset: Integer; items: TCharArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTBoA, 'procedure pp_Positions(arr: TBoolArray; offset: Integer; items: TBoolArray; var output: TIntegerArray); overload;');
  AddFunction(@PositionsExOTBA, 'procedure pp_Positions(arr: TBoxArray; offset: Integer; items: TBoxArray; var output: TIntegerArray); overload;');
  // trace
  AddFunction(@TraceTPA, 'procedure pp_Trace(arr: TPointArray; items: TPointArray; var output: TIntegerArray);');
  AddFunction(@TraceTIA, 'procedure pp_Trace(arr: TIntegerArray; items: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceTEA, 'procedure pp_Trace(arr: TExtendedArray; items: TExtendedArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceTSA, 'procedure pp_Trace(arr: TStringArray; items: TStringArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceTCA, 'procedure pp_Trace(arr: TCharArray; items: TCharArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceTBoA, 'procedure pp_Trace(arr: TBoolArray; items: TBoolArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceTBA, 'procedure pp_Trace(arr: TBoxArray; items: TBoxArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTPA, 'procedure pp_Trace(arr: TPointArray; offset: Integer; items: TPointArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTIA, 'procedure pp_Trace(arr: TIntegerArray; offset: Integer; items: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTEA, 'procedure pp_Trace(arr: TExtendedArray; offset: Integer; items: TExtendedArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTSA, 'procedure pp_Trace(arr: TStringArray; offset: Integer; items: TStringArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTCA, 'procedure pp_Trace(arr: TCharArray; offset: Integer; items: TCharArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTBoA, 'procedure pp_Trace(arr: TBoolArray; offset: Integer; items: TBoolArray; var output: TIntegerArray); overload;');
  AddFunction(@TraceOTBA, 'procedure pp_Trace(arr: TBoxArray; offset: Integer; items: TBoxArray; var output: TIntegerArray); overload;');
  // empty
  AddFunction(@EmptyTPA, 'function pp_Empty(arr: TPointArray): Boolean;');
  AddFunction(@EmptyTIA, 'function pp_Empty(arr: TIntegerArray): Boolean; overload;');
  AddFunction(@EmptyTEA, 'function pp_Empty(arr: TExtendedArray): Boolean; overload;');
  AddFunction(@EmptyTSA, 'function pp_Empty(arr: TStringArray): Boolean; overload;');
  AddFunction(@EmptyTCA, 'function pp_Empty(arr: TCharArray): Boolean; overload;');
  AddFunction(@EmptyTBoA, 'function pp_Empty(arr: TBoolArray): Boolean; overload;');
  AddFunction(@EmptyTBA, 'function pp_Empty(arr: TBoxArray): Boolean; overload;');
  AddFunction(@EmptyATPA, 'function pp_Empty(arr: T2DPointArray): Boolean; overload;');
  AddFunction(@EmptyATIA, 'function pp_Empty(arr: T2DIntegerArray): Boolean; overload;');
  AddFunction(@EmptyATEA, 'function pp_Empty(arr: T2DExtendedArray): Boolean; overload;');
  AddFunction(@EmptyATSA, 'function pp_Empty(arr: T2DStringArray): Boolean; overload;');
  AddFunction(@EmptyATCA, 'function pp_Empty(arr: T2DCharArray): Boolean; overload;');
  AddFunction(@EmptyATBoA, 'function pp_Empty(arr: T2DBoolArray): Boolean; overload;');
  AddFunction(@EmptyATBA, 'function pp_Empty(arr: T2DBoxArray): Boolean; overload;');
  // extractitems
  AddFunction(@ExtractItemsTPA, 'procedure pp_ExtractItems(var arr: TPointArray; items: TPointArray);');
  AddFunction(@ExtractItemsTIA, 'procedure pp_ExtractItems(var arr: TIntegerArray; items: TIntegerArray); overload;');
  AddFunction(@ExtractItemsTEA, 'procedure pp_ExtractItems(var arr: TExtendedArray; items: TExtendedArray); overload;');
  AddFunction(@ExtractItemsTSA, 'procedure pp_ExtractItems(var arr: TStringArray; items: TStringArray); overload;');
  AddFunction(@ExtractItemsTCA, 'procedure pp_ExtractItems(var arr: TCharArray; items: TCharArray); overload;');
  AddFunction(@ExtractItemsTBoA, 'procedure pp_ExtractItems(var arr: TBoolArray; items: TBoolArray); overload;');
  AddFunction(@ExtractItemsTBA, 'procedure pp_ExtractItems(var arr: TBoxArray; items: TBoxArray); overload;');
  // filteritems
  AddFunction(@FilterItemsTPA, 'procedure pp_FilterItems(var arr: TPointArray; items: TPointArray);');
  AddFunction(@FilterItemsTIA, 'procedure pp_FilterItems(var arr: TIntegerArray; items: TIntegerArray); overload;');
  AddFunction(@FilterItemsTEA, 'procedure pp_FilterItems(var arr: TExtendedArray; items: TExtendedArray); overload;');
  AddFunction(@FilterItemsTSA, 'procedure pp_FilterItems(var arr: TStringArray; items: TStringArray); overload;');
  AddFunction(@FilterItemsTCA, 'procedure pp_FilterItems(var arr: TCharArray; items: TCharArray); overload;');
  AddFunction(@FilterItemsTBoA, 'procedure pp_FilterItems(var arr: TBoolArray; items: TBoolArray); overload;');
  AddFunction(@FilterItemsTBA, 'procedure pp_FilterItems(var arr: TBoxArray; items: TBoxArray); overload;');
  // extracteveryx
  AddFunction(@ExtractEveryTPA, 'procedure pp_ExtractEvery(var arr: TPointArray; X: Integer);');
  AddFunction(@ExtractEveryTIA, 'procedure pp_ExtractEvery(var arr: TIntegerArray; X: Integer); overload;');
  AddFunction(@ExtractEveryTEA, 'procedure pp_ExtractEvery(var arr: TExtendedArray; X: Integer); overload;');
  AddFunction(@ExtractEveryTSA, 'procedure pp_ExtractEvery(var arr: TStringArray; X: Integer); overload;');
  AddFunction(@ExtractEveryTCA, 'procedure pp_ExtractEvery(var arr: TCharArray; X: Integer); overload;');
  AddFunction(@ExtractEveryTBoA, 'procedure pp_ExtractEvery(var arr: TBoolArray; X: Integer); overload;');
  AddFunction(@ExtractEveryTBA, 'procedure pp_ExtractEvery(var arr: TBoxArray; X: Integer); overload;');
  AddFunction(@ExtractEveryExTPA, 'procedure pp_ExtractEvery(var arr: TPointArray; offset: Integer; X: Integer); overload;');
  AddFunction(@ExtractEveryExTIA, 'procedure pp_ExtractEvery(var arr: TIntegerArray; offset: Integer; X: Integer); overload;');
  AddFunction(@ExtractEveryExTEA, 'procedure pp_ExtractEvery(var arr: TExtendedArray; offset: Integer; X: Integer); overload;');
  AddFunction(@ExtractEveryExTSA, 'procedure pp_ExtractEvery(var arr: TStringArray; offset: Integer; X: Integer); overload;');
  AddFunction(@ExtractEveryExTCA, 'procedure pp_ExtractEvery(var arr: TCharArray; offset: Integer; X: Integer); overload;');
  AddFunction(@ExtractEveryExTBoA, 'procedure pp_ExtractEvery(var arr: TBoolArray; offset: Integer; X: Integer); overload;');
  AddFunction(@ExtractEveryExTBA, 'procedure pp_ExtractEvery(var arr: TBoxArray; offset: Integer; X: Integer); overload;');
  // filtereveryx
  AddFunction(@FilterEveryTPA, 'procedure pp_FilterEvery(var arr: TPointArray; X: Integer);');
  AddFunction(@FilterEveryTIA, 'procedure pp_FilterEvery(var arr: TIntegerArray; X: Integer); overload;');
  AddFunction(@FilterEveryTEA, 'procedure pp_FilterEvery(var arr: TExtendedArray; X: Integer); overload;');
  AddFunction(@FilterEveryTSA, 'procedure pp_FilterEvery(var arr: TStringArray; X: Integer); overload;');
  AddFunction(@FilterEveryTCA, 'procedure pp_FilterEvery(var arr: TCharArray; X: Integer); overload;');
  AddFunction(@FilterEveryTBoA, 'procedure pp_FilterEvery(var arr: TBoolArray; X: Integer); overload;');
  AddFunction(@FilterEveryTBA, 'procedure pp_FilterEvery(var arr: TBoxArray; X: Integer); overload;');
  AddFunction(@FilterEveryExTPA, 'procedure pp_FilterEvery(var arr: TPointArray; offset: Integer; X: Integer); overload;');
  AddFunction(@FilterEveryExTIA, 'procedure pp_FilterEvery(var arr: TIntegerArray; offset: Integer; X: Integer); overload;');
  AddFunction(@FilterEveryExTEA, 'procedure pp_FilterEvery(var arr: TExtendedArray; offset: Integer; X: Integer); overload;');
  AddFunction(@FilterEveryExTSA, 'procedure pp_FilterEvery(var arr: TStringArray; offset: Integer; X: Integer); overload;');
  AddFunction(@FilterEveryExTCA, 'procedure pp_FilterEvery(var arr: TCharArray; offset: Integer; X: Integer); overload;');
  AddFunction(@FilterEveryExTBoA, 'procedure pp_FilterEvery(var arr: TBoolArray; offset: Integer; X: Integer); overload;');
  AddFunction(@FilterEveryExTBA, 'procedure pp_FilterEvery(var arr: TBoxArray; offset: Integer; X: Integer); overload;');
  // equals
  AddFunction(@EqualTPA, 'function pp_Equal(arr1, arr2: TPointArray): Boolean;');
  AddFunction(@EqualTIA, 'function pp_Equal(arr1, arr2: TIntegerArray): Boolean; overload;');
  AddFunction(@EqualTEA, 'function pp_Equal(arr1, arr2: TExtendedArray): Boolean; overload;');
  AddFunction(@EqualTSA, 'function pp_Equal(arr1, arr2: TStringArray): Boolean; overload;');
  AddFunction(@EqualTCA, 'function pp_Equal(arr1, arr2: TCharArray): Boolean; overload;');
  AddFunction(@EqualTBoA, 'function pp_Equal(arr1, arr2: TBoolArray): Boolean; overload;');
  AddFunction(@EqualTBA, 'function pp_Equal(arr1, arr2: TBoxArray): Boolean; overload;');
  AddFunction(@EqualATPA, 'function pp_Equal(arr1, arr2: T2DPointArray): Boolean; overload;');
  AddFunction(@EqualATIA, 'function pp_Equal(arr1, arr2: T2DIntegerArray): Boolean; overload;');
  AddFunction(@EqualATEA, 'function pp_Equal(arr1, arr2: T2DExtendedArray): Boolean; overload;');
  AddFunction(@EqualATSA, 'function pp_Equal(arr1, arr2: T2DStringArray): Boolean; overload;');
  AddFunction(@EqualATCA, 'function pp_Equal(arr1, arr2: T2DCharArray): Boolean; overload;');
  AddFunction(@EqualATBoA, 'function pp_Equal(arr1, arr2: T2DBoolArray): Boolean; overload;');
  AddFunction(@EqualATBA, 'function pp_Equal(arr1, arr2: T2DBoxArray): Boolean; overload;');
  // allequal
  AddFunction(@AllEqualTPA, 'function pp_AllEqual(arr: TPointArray): Boolean;');
  AddFunction(@AllEqualTIA, 'function pp_AllEqual(arr: TIntegerArray): Boolean; overload;');
  AddFunction(@AllEqualTEA, 'function pp_AllEqual(arr: TExtendedArray): Boolean; overload;');
  AddFunction(@AllEqualTSA, 'function pp_AllEqual(arr: TStringArray): Boolean; overload;');
  AddFunction(@AllEqualTCA, 'function pp_AllEqual(arr: TCharArray): Boolean; overload;');
  AddFunction(@AllEqualTBoA, 'function pp_AllEqual(arr: TBoolArray): Boolean; overload;');
  AddFunction(@AllEqualTBA, 'function pp_AllEqual(arr: TBoxArray): Boolean; overload;');
  // random
  AddFunction(@RandomizeTPA, 'procedure pp_Randomize(var arr: TPointArray);');
  AddFunction(@RandomizeTIA, 'procedure pp_Randomize(var arr: TIntegerArray); overload;');
  AddFunction(@RandomizeTEA, 'procedure pp_Randomize(var arr: TExtendedArray); overload;');
  AddFunction(@RandomizeTSA, 'procedure pp_Randomize(var arr: TStringArray); overload;');
  AddFunction(@RandomizeTCA, 'procedure pp_Randomize(var arr: TCharArray); overload;');
  AddFunction(@RandomizeTBoA, 'procedure pp_Randomize(var arr: TBoolArray); overload;');
  AddFunction(@RandomizeTBA, 'procedure pp_Randomize(var arr: TBoxArray); overload;');
  AddFunction(@RandomizeExTPA, 'procedure pp_Randomize(var arr: TPointArray; shuffles: Integer); overload;');
  AddFunction(@RandomizeExTIA, 'procedure pp_Randomize(var arr: TIntegerArray; shuffles: Integer); overload;');
  AddFunction(@RandomizeExTEA, 'procedure pp_Randomize(var arr: TExtendedArray; shuffles: Integer); overload;');
  AddFunction(@RandomizeExTSA, 'procedure pp_Randomize(var arr: TStringArray; shuffles: Integer); overload;');
  AddFunction(@RandomizeExTCA, 'procedure pp_Randomize(var arr: TCharArray; shuffles: Integer); overload;');
  AddFunction(@RandomizeExTBoA, 'procedure pp_Randomize(var arr: TBoolArray; shuffles: Integer); overload;');
  AddFunction(@RandomizeExTBA, 'procedure pp_Randomize(var arr: TBoxArray; shuffles: Integer); overload;');
  AddFunction(@RandomItemTPA, 'function pp_RandomItem(arr: TPointArray): TPoint;');
  AddFunction(@RandomItemTIA, 'function pp_RandomItem(arr: TIntegerArray): Integer; overload;');
  AddFunction(@RandomItemTEA, 'function pp_RandomItem(arr: TExtendedArray): Extended; overload;');
  AddFunction(@RandomItemTSA, 'function pp_RandomItem(arr: TStringArray): string; overload;');
  AddFunction(@RandomItemTCA, 'function pp_RandomItem(arr: TCharArray): Char; overload;');
  AddFunction(@RandomItemTBoA, 'function pp_RandomItem(arr: TBoolArray): Boolean; overload;');
  AddFunction(@RandomItemTBA, 'function pp_RandomItem(arr: TBoxArray): TBox; overload;');
  // value
  AddFunction(@BuiltWithTPA, 'function pp_BuiltWith(arr, allowed: TPointArray): Boolean;');
  AddFunction(@BuiltWithTIA, 'function pp_BuiltWith(arr, allowed: TIntegerArray): Boolean; overload;');
  AddFunction(@BuiltWithTEA, 'function pp_BuiltWith(arr, allowed: TExtendedArray): Boolean; overload;');
  AddFunction(@BuiltWithTSA, 'function pp_BuiltWith(arr, allowed: TStringArray): Boolean; overload;');
  AddFunction(@BuiltWithTCA, 'function pp_BuiltWith(arr, allowed: TCharArray): Boolean; overload;');
  AddFunction(@BuiltWithTBoA, 'function pp_BuiltWith(arr, allowed: TBoolArray): Boolean; overload;');
  AddFunction(@BuiltWithTBA, 'function pp_BuiltWith(arr, allowed: TBoxArray): Boolean; overload;');
  // swap
  AddFunction(@SwapTPA, 'procedure pp_Swap(var arr1, arr2: TPointArray);');
  AddFunction(@SwapTIA, 'procedure pp_Swap(var arr1, arr2: TIntegerArray); overload;');
  AddFunction(@SwapTEA, 'procedure pp_Swap(var arr1, arr2: TExtendedArray); overload;');
  AddFunction(@SwapTSA, 'procedure pp_Swap(var arr1, arr2: TStringArray); overload;');
  AddFunction(@SwapTCA, 'procedure pp_Swap(var arr1, arr2: TCharArray); overload;');
  AddFunction(@SwapTBoA, 'procedure pp_Swap(var arr1, arr2: TBoolArray); overload;');
  AddFunction(@SwapTBA, 'procedure pp_Swap(var arr1, arr2: TBoxArray); overload;');
  AddFunction(@SwapATPA, 'procedure pp_Swap(var arr1, arr2: T2DPointArray); overload;');
  AddFunction(@SwapATIA, 'procedure pp_Swap(var arr1, arr2: T2DIntegerArray); overload;');
  AddFunction(@SwapATEA, 'procedure pp_Swap(var arr1, arr2: T2DExtendedArray); overload;');
  AddFunction(@SwapATSA, 'procedure pp_Swap(var arr1, arr2: T2DStringArray); overload;');
  AddFunction(@SwapATCA, 'procedure pp_Swap(var arr1, arr2: T2DCharArray); overload;');
  AddFunction(@SwapATBoA, 'procedure pp_Swap(var arr1, arr2: T2DBoolArray); overload;');
  AddFunction(@SwapATBA, 'procedure pp_Swap(var arr1, arr2: T2DBoxArray); overload;');
  // partition
  AddFunction(@PartitionTPA3, 'procedure pp_Partition(arr: TPointArray; var output: T2DPointArray);');
  AddFunction(@PartitionTIA3, 'procedure pp_Partition(arr: TIntegerArray; var output: T2DIntegerArray); overload;');
  AddFunction(@PartitionTEA3, 'procedure pp_Partition(arr: TExtendedArray; var output: T2DExtendedArray); overload;');
  AddFunction(@PartitionTSA3, 'procedure pp_Partition(arr: TStringArray; var output: T2DStringArray); overload;');
  AddFunction(@PartitionTCA3, 'procedure pp_Partition(arr: TCharArray; var output: T2DCharArray); overload;');
  AddFunction(@PartitionTBoA3, 'procedure pp_Partition(arr: TBoolArray; var output: T2DBoolArray); overload;');
  AddFunction(@PartitionTBA3, 'procedure pp_Partition(arr: TBoxArray; var output: T2DBoxArray); overload;');
  AddFunction(@PartitionTPA2, 'procedure pp_Partition(arr: TPointArray; method: TPartitionMethod; var output: T2DPointArray); overload;');
  AddFunction(@PartitionTIA2, 'procedure pp_Partition(arr: TIntegerArray; method: TPartitionMethod; var output: T2DIntegerArray); overload;');
  AddFunction(@PartitionTEA2, 'procedure pp_Partition(arr: TExtendedArray; method: TPartitionMethod; var output: T2DExtendedArray); overload;');
  AddFunction(@PartitionTSA2, 'procedure pp_Partition(arr: TStringArray; method: TPartitionMethod; var output: T2DStringArray); overload;');
  AddFunction(@PartitionTCA2, 'procedure pp_Partition(arr: TCharArray; method: TPartitionMethod; var output: T2DCharArray); overload;');
  AddFunction(@PartitionTBoA2, 'procedure pp_Partition(arr: TBoolArray; method: TPartitionMethod; var output: T2DBoolArray); overload;');
  AddFunction(@PartitionTBA2, 'procedure pp_Partition(arr: TBoxArray; method: TPartitionMethod; var output: T2DBoxArray); overload;');
  AddFunction(@PartitionTPA, 'procedure pp_Partition(arr: TPointArray; method: TPartitionMethod; x: Integer; var output: T2DPointArray); overload;');
  AddFunction(@PartitionTIA, 'procedure pp_Partition(arr: TIntegerArray; method: TPartitionMethod; x: Integer; var output: T2DIntegerArray); overload;');
  AddFunction(@PartitionTEA, 'procedure pp_Partition(arr: TExtendedArray; method: TPartitionMethod; x: Integer; var output: T2DExtendedArray); overload;');
  AddFunction(@PartitionTSA, 'procedure pp_Partition(arr: TStringArray; method: TPartitionMethod; x: Integer; var output: T2DStringArray); overload;');
  AddFunction(@PartitionTCA, 'procedure pp_Partition(arr: TCharArray; method: TPartitionMethod; x: Integer; var output: T2DCharArray); overload;');
  AddFunction(@PartitionTBoA, 'procedure pp_Partition(arr: TBoolArray; method: TPartitionMethod; x: Integer; var output: T2DBoolArray); overload;');
  AddFunction(@PartitionTBA, 'procedure pp_Partition(arr: TBoxArray; method: TPartitionMethod; x: Integer; var output: T2DBoxArray); overload;');
  // merge
  AddFunction(@MergeATPA, 'procedure pp_Merge(arr: T2DPointArray; var output: TPointArray);');
  AddFunction(@MergeATIA, 'procedure pp_Merge(arr: T2DIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@MergeATEA, 'procedure pp_Merge(arr: T2DExtendedArray; var output: TExtendedArray); overload;');
  AddFunction(@MergeATSA, 'procedure pp_Merge(arr: T2DStringArray; var output: TStringArray); overload;');
  AddFunction(@MergeATCA, 'procedure pp_Merge(arr: T2DCharArray; var output: TCharArray); overload;');
  AddFunction(@MergeATBoA, 'procedure pp_Merge(arr: T2DBoolArray; var output: TBoolArray); overload;');
  AddFunction(@MergeATBA, 'procedure pp_Merge(arr: T2DBoxArray; var output: TBoxArray); overload;');
  AddFunction(@CombineTPA, 'procedure pp_Merge(arr1, arr2: TPointArray; var output: TPointArray); overload;');
  AddFunction(@CombineTIA, 'procedure pp_Merge(arr1, arr2: TIntegerArray; var output: TIntegerArray); overload;');
  AddFunction(@CombineTEA, 'procedure pp_Merge(arr1, arr2: TExtendedArray; var output: TExtendedArray); overload;');
  AddFunction(@CombineTSA, 'procedure pp_Merge(arr1, arr2: TStringArray; var output: TStringArray); overload;');
  AddFunction(@CombineTCA, 'procedure pp_Merge(arr1, arr2: TCharArray; var output: TCharArray); overload;');
  AddFunction(@CombineTBoA, 'procedure pp_Merge(arr1, arr2: TBoolArray; var output: TBoolArray); overload;');
  AddFunction(@CombineTBA, 'procedure pp_Merge(arr1, arr2: TBoxArray; var output: TBoxArray); overload;');
  // size
  AddFunction(@SizeATPA, 'function pp_Size(arr: T2DPointArray): Integer;');
  AddFunction(@SizeATIA, 'function pp_Size(arr: T2DIntegerArray): Integer; overload;');
  AddFunction(@SizeATEA, 'function pp_Size(arr: T2DExtendedArray): Integer; overload;');
  AddFunction(@SizeATSA, 'function pp_Size(arr: T2DStringArray): Integer; overload;');
  AddFunction(@SizeATCA, 'function pp_Size(arr: T2DCharArray): Integer; overload;');
  AddFunction(@SizeATBoA, 'function pp_Size(arr: T2DBoolArray): Integer; overload;');
  AddFunction(@SizeATBA, 'function pp_Size(arr: T2DBoxArray): Integer; overload;');
  // clean
  AddFunction(@CleanATPA, 'procedure pp_Clean(var arr: T2DPointArray);');
  AddFunction(@CleanATIA, 'procedure pp_Clean(var arr: T2DIntegerArray); overload;');
  AddFunction(@CleanATEA, 'procedure pp_Clean(var arr: T2DExtendedArray); overload;');
  AddFunction(@CleanATSA, 'procedure pp_Clean(var arr: T2DStringArray); overload;');
  AddFunction(@CleanATCA, 'procedure pp_Clean(var arr: T2DCharArray); overload;');
  AddFunction(@CleanATBoA, 'procedure pp_Clean(var arr: T2DBoolArray); overload;');
  AddFunction(@CleanATBA, 'procedure pp_Clean(var arr: T2DBoxArray); overload;');
end;
