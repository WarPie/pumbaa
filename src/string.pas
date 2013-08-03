{$I string\various.pas}

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
end;
