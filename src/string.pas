{$I string\position.pas}
{$I string\trim.pas}
{$I string\various.pas}
{$I string\replace.pas}
{$I string\between.pas}
{$I string\wraptext.pas}
{$I string\word.pas}
{$I string\count.pas}
{$I string\explode.pas}
{$I string\indentation.pas}
{$I string\line.pas}

procedure AddStringFunctions;
begin
  // position
  AddFunction(@StrPos, 'function pp_StrPos(s, str: string): Integer;');
  AddFunction(@StrPosEx, 'function pp_StrPos(s, str: string; offset: Integer): Integer; overload;');
  AddFunction(@StrPosMulti, 'function pp_StrPos(s: TStringArray; str: string): Integer; overload;');
  AddFunction(@StrPosMultiEx, 'function pp_StrPos(s: TStringArray; str: string; offset: Integer): Integer; overload;');
  AddFunction(@StrPosMultiIDEx, 'function pp_StrPos(s: TStringArray; str: string; offset: Integer; var index: Integer): Integer; overload;');
  AddFunction(@StrLastPos, 'function pp_StrLastPos(s, str: string): Integer;');
  AddFunction(@StrLastPosEx, 'function pp_StrLastPos(s, str: string; offset: Integer): Integer; overload;');
  AddFunction(@StrClosestPos, 'function pp_StrClosestPos(s, str: string; trgt_pos: Integer): Integer;');
  AddFunction(@StrFarthestPos, 'function pp_StrFarthestPos(s, str: string; trgt_pos: Integer): Integer;');
  AddFunction(@StrPosAll, 'procedure pp_StrPosAll(s, str: string; var output: TIntegerArray);');
  AddFunction(@StrPosAllEx, 'procedure pp_StrPosAll(s, str: string; overlap: Boolean; var output: TIntegerArray); overload;');
  AddFunction(@StrPosAllMulti, 'procedure pp_StrPosAll(s: TStringArray; str: string; overlap: Boolean; var output: TIntegerArray); overload;');
  // trim
  AddFunction(@StrTrimStart, 'function pp_StrTrimLeft(str: string): string;');
  AddFunction(@StrTrimStart, 'function pp_StrTrimStart(str: string): string; overload;');
  AddFunction(@StrTrimEnd, 'function pp_StrTrimRight(str: string): string;');
  AddFunction(@StrTrimEnd, 'function pp_StrTrimEnd(str: string): string; overload;');
  AddFunction(@StrTrimEx, 'function pp_StrTrim(str: string; side: TTrimSide): string;');
  AddFunction(@TSATrim, 'procedure pp_TSATrim(var TSA: TStringArray);');
  AddFunction(@TSATrim2, 'procedure pp_TSATrim(var TSA: TStringArray; delEmpty: Boolean); overload;');
  AddFunction(@TSATrim3, 'procedure pp_TSATrim(var TSA: TStringArray; side: TTrimSide); overload;');
  AddFunction(@TSATrimEx, 'procedure pp_TSATrim(var TSA: TStringArray; delEmpty: Boolean; side: TTrimSide); overload;');
  // replace
  AddFunction(@StrReplace, 'function pp_StrReplace(text, findStr, replaceStr: string; offset: Integer): string;');
  AddFunction(@StrReplaceEx, 'function pp_StrReplace(text, findStr, replaceStr: string; offset: Integer; flags: TReplaceFlags): string; overload;');
  AddFunction(@StrReplaceMulti, 'function pp_StrReplace(text: string; findStrs: TStringArray; replaceStr: string; offset: Integer): string; overload;');
  AddFunction(@StrReplaceMultiEx, 'function pp_StrReplace(text: string; findStrs: TStringArray; replaceStr: string; offset: Integer; flags: TReplaceFlags): string; overload;');
  // various
  AddFunction(@StrLeft, 'function pp_StrLeft(str: string; x: Integer): string;');
  AddFunction(@StrRight, 'function pp_StrRight(str: string; x: Integer): string;');
  AddFunction(@StrSlice, 'function pp_StrSlice(str: string; pos1, pos2: Integer): string;');
  AddFunction(@StrReverse, 'function pp_StrReverse(str: string): string;');
  AddFunction(@StrStartsWith, 'function pp_StrStartsWith(s, str: string): Boolean;');
  AddFunction(@StrEndsWith, 'function pp_StrEndsWith(s, str: string): Boolean;');
  AddFunction(@StrStartWith, 'function pp_StrStartWith(s: string; var str: string): Boolean;');
  AddFunction(@StrEndWith, 'function pp_StrEndWith(s: string; var str: string): Boolean;');
  AddFunction(@StrBehind, 'function pp_StrBehind(data: string; position, size: Integer): string;');
  AddFunction(@StrAhead, 'function pp_StrAhead(data: string; position, size: Integer): string;');
  AddFunction(@StrAfter, 'function pp_StrAfter(s, str: string): string;');
  AddFunction(@StrAfterEx, 'function pp_StrAfter(s, str: string; offset: Integer): string; overload;');
  AddFunction(@StrBefore, 'function pp_StrBefore(s, str: string): string;');
  AddFunction(@StrBeforeEx, 'function pp_StrBefore(s, str: string; offset: Integer): string; overload;');
  AddFunction(@StrLastAfter, 'function pp_StrLastAfter(s, str: string): string;');
  AddFunction(@StrLastBefore, 'function pp_StrLastBefore(s, str: string): string;');
  AddFunction(@StrCenter, 'function pp_StrCenter(str: string; size: Integer): string;');
  AddFunction(@StrCenterEx, 'function pp_StrCenter(str: string; size: Integer; fill: Char): string; overload;');
  AddFunction(@StrStuff, 'function pp_StrStuff(str, s: string; iFrom, iCount: Integer): string;');
  AddFunction(@StrPatch, 'function pp_StrPatch(str, s: string; pos1, pos2: Integer): string;');
  AddFunction(@StrDuplicate, 'function pp_StrDuplicate(str: string; count: Integer): string;');
  AddFunction(@StrDuplicateEx, 'function pp_StrDuplicate(str: string; count: Integer; glue: string): string; overload;');
  AddFunction(@StrCompare, 'function pp_StrCompare(s1, s2: string): Integer;');
  AddFunction(@StrQuotatation, 'function pp_StrQuotatation(str: string): string;');
  AddFunction(@StrPregQuote, 'function pp_StrPregQuote(str: string): string;');
  AddFunction(@StrPregQuoteEx, 'function pp_StrPregQuote(str, regexChars: string): string; overload;');
  AddFunction(@StrSplit, 'procedure pp_StrSplit(str: string; var a, b: string; position: Integer);');
  AddFunction(@StrSplitEx, 'procedure pp_StrSplit(str: string; var a, b: string; position: Integer; includeCenter: Boolean); overload;');
  AddFunction(@TSAConcat, 'function pp_TSAConcat(TSA: TStringArray): string;');
  AddFunction(@TSAConcatEx, 'function pp_TSAConcat(TSA: TStringArray; glue: string): string; overload;');
  // between
  AddFunction(@StrBetween, 'function pp_StrBetween(s1, s2, str: string): string;');
  AddFunction(@StrBetweenEx, 'function pp_StrBetween(s1, s2, str: string; offset: Integer): string; overload;');
  AddFunction(@StrBetweenPositions, 'function pp_StrBetween(str: string; pos1, pos2: Integer): string; overload;');
  AddFunction(@StrAllBetween, 'procedure pp_StrAllBetween(s1, s2, str: string; var output: TStringArray);');
  AddFunction(@StrMultiBetween, 'procedure pp_StrMultiBetween(str, s1, s2: string; var output: TStringArray);');
  AddFunction(@StrMultiBetweenEx, 'procedure pp_StrMultiBetween(str, s1, s2: string; method: Integer; var output: TStringArray); overload;');
  // wraptext
  AddFunction(@StrWrapText, 'function pp_StrWrapText(str: string; maxCol: Integer): string;');
  AddFunction(@StrWrapTextEx, 'function pp_StrWrapText(str, breakStr, breakChars: string; maxCol: Integer): string; overload;');
  // word
  AddFunction(@StrGetWords, 'procedure pp_StrGetWords(text: string; var output: TStringArray);');
  AddFunction(@StrGetWordsEx, 'procedure pp_StrGetWords(text, wordCharacters: string; var output: TStringArray); overload;');
  AddFunction(@StrCountWords, 'function pp_StrCountWords(text: string): Integer;');
  AddFunction(@StrCountWordsEx, 'function pp_StrCountWords(text, wordCharacters: string): Integer; overload;');
  // count
  AddFunction(@StrCount, 'function pp_StrCount(s, str: string): Integer;');
  AddFunction(@StrCountEx, 'function pp_StrCount(s, str: string; overlap: Boolean): Integer; overload;');
  AddFunction(@StrCountMulti, 'function pp_StrCount(s: TStringArray; str: string): Integer; overload;');
  AddFunction(@StrCountMultiEx, 'function pp_StrCount(s: TStringArray; str: string; overlap: Boolean): Integer; overload;');
  // explode
  AddFunction(@StrExplode, 'procedure pp_StrExplode(d, str: string; var output: TStringArray);');
  AddFunction(@StrExplodeEx, 'procedure pp_StrExplode(d, str: string; limit: Integer; var output: TStringArray); overload;');
  AddFunction(@StrExplodeMulti, 'procedure pp_StrExplode(d: TStringArray; str: string; var output: TStringArray); overload;');
  AddFunction(@StrExplodeMultiEx, 'procedure pp_StrExplode(d: TStringArray; str: string; limit: Integer; var output: TStringArray); overload;');
  // indentation
  AddFunction(@StrIndentation, 'procedure pp_StrIndentation(var str: string; shift: Integer);');
  // line
  AddFunction(@StrLines, 'procedure pp_StrLines(str: string; var output: TStringArray);');
  AddFunction(@StrLine, 'function pp_StrLine(str: string; number: Integer): string;');
  AddFunction(@StrLinePositions, 'procedure pp_StrLinePositions(str: string; var output: TIntegerArray);');
  AddFunction(@StrLineCount, 'function pp_StrLineCount(str: string): Integer;');
  AddFunction(@StrLineByPos, 'function pp_StrLineByPos(str: string; position: Integer): Integer;');
  AddFunction(@StrPosByLine, 'function pp_StrPosByLine(str: string; line: Integer): Integer;');
end;
