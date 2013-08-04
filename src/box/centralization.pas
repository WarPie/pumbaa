{==============================================================================]
 @action: Sets inner bx to center of outer bx. Contains 3 methods:
          cmBoth = center width & heightwise
          cmWidthwise = center widthwise
          cmHeightwise = center heightwise.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure BoxCentralizationEx(var inner_bx: TBox; outer_bx: TBox; method: TCenterMethod); callconv
var
  o: TPoint;
begin
  case method of
    cmBoth: o := Point(((Round(outer_bx.X1 + ((outer_bx.X2 - outer_bx.X1) / 2)) - (((inner_bx.X2 - inner_bx.X1) + 1) div 2)) - inner_bx.X1), ((Round(outer_bx.Y1 + ((outer_bx.Y2 - outer_bx.Y1) / 2)) - (((inner_bx.Y2 - inner_bx.Y1) + 1) div 2)) - inner_bx.Y1));
    cmWidthwise: o := Point(((Round(outer_bx.X1 + ((outer_bx.X2 - outer_bx.X1) / 2)) - (((inner_bx.X2 - inner_bx.X1) + 1) div 2)) - inner_bx.X1), 0);
    cmHeightwise: o := Point(0, ((Round(outer_bx.Y1 + ((outer_bx.Y2 - outer_bx.Y1) / 2)) - (((inner_bx.Y2 - inner_bx.Y1) + 1) div 2)) - inner_bx.Y1));
  else
    Exit;
  end;
  inner_bx.X1 := (inner_bx.X1 + o.X);
  inner_bx.Y1 := (inner_bx.Y1 + o.Y);
  inner_bx.X2 := (inner_bx.X2 + o.X);
  inner_bx.Y2 := (inner_bx.Y2 + o.Y);
end;

{==============================================================================]
 @action: Sets inner bx to center of outer bx.
 @note: Based on cmBoth method.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure BoxCentralization(var inner_bx: TBox; outer_bx: TBox); callconv
begin
  BoxCentralizationEx(inner_bx, outer_bx, cmBoth);
end;
