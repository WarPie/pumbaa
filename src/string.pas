{$I string\various.pas}
{$I string\wraptext.pas}

procedure AddStringFunctions;
begin
  // various
  AddFunction(@StrLeft, 'function pp_StrLeft(str: string; x: Integer): string;');
  AddFunction(@StrRight, 'function pp_StrRight(str: string; x: Integer): string;');
  AddFunction(@StrSlice, 'function pp_StrSlice(str: string; pos1, pos2: Integer): string;');
  AddFunction(@StrReverse, 'function pp_StrReverse(str: string): string;');
  AddFunction(@StrStartsWith, 'function pp_StrStartsWith(s, str: string): Boolean;');
  AddFunction(@StrEndsWith, 'function pp_StrEndsWith(s, str: string): Boolean;');
  AddFunction(@StrStartWith, 'function pp_StrStartWith(s: string; var str: string): Boolean;');
  AddFunction(@StrEndWith, 'function pp_StrEndWith(s: string; var str: string): Boolean;');
  AddFunction(@StrTrimStart, 'function pp_StrTrimStart(str: string): string;');
  AddFunction(@StrTrimEnd, 'function pp_StrTrimEnd(str: string): string;');
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
  // wraptext
  AddFunction(@StrWrapText, 'function pp_StrWrapText(str: string; maxCol: Integer): string;');
  AddFunction(@StrWrapTextEx, 'function pp_StrWrapText(str, breakStr, breakChars: string; maxCol: Integer): string; overload;');
end;
