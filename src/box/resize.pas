{==============================================================================]
 @action: Resizes bx by sizeChange..
          Contains 11 methods (MSSL_TResizeMethod).
          Negative sizeChange = Shrinking, Positive sizeChange = Expanding.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure ResizeBoxEx(var bx: TBox; sizeChange: Integer; method: TResizeMethod); callconv
  function Box(X1, Y1, X2, Y2: Integer): TBox;
  begin
    Result.X1 := X1;
    Result.Y1 := Y1;
    Result.X2 := X2;
    Result.Y2 := Y2;
  end;
begin
  if (sizeChange <> 0) then
  case method of
    rmFull: bx := Box((bx.X1 - sizeChange), (bx.Y1 - sizeChange), (bx.X2 + sizeChange), (bx.Y2 + sizeChange)); // FULL AREA
    rmWidth: bx := Box((bx.X1 - sizeChange), bx.Y1, (bx.X2 + sizeChange), bx.Y2); // WIDTH
    rmHeight: bx := Box(bx.X1, (bx.Y1 - sizeChange), bx.X2, (bx.Y2 + sizeChange)); // HEIGHT
    rmUp: bx := Box(bx.X1, (bx.Y1 - sizeChange), bx.X2, bx.Y2); // UP
    rmDown: bx := Box(bx.X1, bx.Y1, bx.X2, (bx.Y2 + sizeChange)); // DOWN
    rmLeft: bx := Box((bx.X1 - sizeChange), bx.Y1, bx.X2, bx.Y2); // LEFT
    rmRight: bx := Box(bx.X1, bx.Y1, (bx.X2 + sizeChange), bx.Y2); // RIGHT
    rmTopLeft: bx := Box((bx.X1 - sizeChange), (bx.Y1 - sizeChange), bx.X2, bx.Y2); // TOP-LEFT CORNER
    rmTopRight: bx := Box(bx.X1, (bx.Y1 - sizeChange), (bx.X2 + sizeChange), bx.Y2); // TOP-RIGHT CORNER
    rmBottomLeft: bx := Box((bx.X1 - sizeChange), bx.Y1, bx.X2, (bx.Y2 + sizeChange)); // BOTTOM-LEFT CORNER
    rmBottomRight: bx := Box(bx.X1, bx.Y1, (bx.X2 + sizeChange), (bx.Y2 + sizeChange)); // BOTTOM-RIGHT CORNER
  end;
end;

{==============================================================================]
 @action: Resizes bx by sizeChange..
          Negative sizeChange = Shrinking, Positive sizeChange = Expanding.
 @note: Resizes the full size of the box.
 @contributors: Janilabo, slacky
[==============================================================================}

procedure ResizeBox(var bx: TBox; sizeChange: Integer); callconv inline;
begin
  ResizeBoxEx(bx, sizeChange, rmFull);
end;
