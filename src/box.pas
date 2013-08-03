{$I box\resize.pas}

procedure AddBoxFunctions;
begin
  // resize
  AddFunction(@ResizeBox, 'procedure pp_ResizeBox(var bx: TBox; sizeChange: Integer);');
  AddFunction(@ResizeBoxEx, 'procedure pp_ResizeBox(var bx: TBox; sizeChange: Integer; method: TResizeMethod); overload;');
end;
