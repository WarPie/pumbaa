{==============================================================================]
 @action: Outputs/builds grid of boxes with parameters;
          startPoint = start point of the grid
          boxWidth, boxHeight = dimensions of all boxes
          rows, columns = count of rows and columns
          rowSpace, columnSpace = the space between points at rows and columns
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TBAGrid(startPoint: TPoint; boxWidth, boxHeight, rows, columns, rowSpace, columnSpace: Integer; var output: TBoxArray); callconv
var
  r, c: Integer;
begin
  if ((rows > -1) and (columns > -1) and (boxWidth > 0) and (boxHeight > 0) and ((rows * columns) > 0)) then
  begin
    SetLength(output, (rows * columns));
    for r := 0 to (rows - 1) do
      for c := 0 to (columns - 1) do
      begin
        output[((r * columns) + c)].X1 := (startPoint.X + (c * columnSpace));
        output[((r * columns) + c)].Y1 := (startPoint.Y + (r * rowSpace));
        output[((r * columns) + c)].X2 := ((startPoint.X + (c * columnSpace)) + (boxWidth - 1));
        output[((r * columns) + c)].Y2 := ((startPoint.Y + (r * rowSpace)) + (boxHeight - 1));
      end;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Outputs row of boxes. Starting from startPoint,
          where rowSpace is the amount of space between each box.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TBARow(startPoint: TPoint; boxWidth, boxHeight, rows, rowSpace: Integer; var output: TBoxArray); callconv
var
  i: Integer;
begin
  if ((rows > 0) and (boxWidth > 0) and (boxHeight > 0)) then
  begin
    SetLength(output, rows);
    for i := 0 to (rows - 1) do
    begin
      output[i].X1 := startPoint.X;
      output[i].Y1 := (startPoint.Y + (i * rowSpace));
      output[i].X2 := (startPoint.X + (boxWidth - 1));
      output[i].Y2 := ((startPoint.Y + (i * rowSpace)) + (boxHeight - 1));
    end;
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Outputs column of boxes. Starting from startPoint,
          where columnSpace is the amount of space between each box.
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TBAColumn(startPoint: TPoint; boxWidth, boxHeight, columns, columnSpace: Integer; var output: TBoxArray); callconv
var
  i: Integer;
begin
  if ((columns > 0) and (boxWidth > 0) and (boxHeight > 0)) then
  begin
    SetLength(output, columns);
    for i := 0 to (columns - 1) do
    begin
      output[i].X1 := (startPoint.X + (i * columnSpace));
      output[i].Y1 := startPoint.Y;
      output[i].X2 := ((startPoint.X + (i * columnSpace)) + (boxWidth - 1));
      output[i].Y2 := (startPoint.Y + (boxHeight - 1));
    end;
  end else
    SetLength(output, 0);
end;

