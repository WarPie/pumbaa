{==============================================================================]
 @action: Outputs/builds grid of points with parameters;
          startPoint = start point of the grid
          rows, columns = count of rows and columns
          rowSpace, columnSpace = the space between points at rows and columns
 @note: None
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPAGrid(startPoint: TPoint; rows, columns, rowSpace, columnSpace: Integer; var output: TPointArray); callconv
var
  r, c: Integer;
begin
  if ((rows > 0) and (columns > 0) and ((rows * columns) > 0)) then
  begin
    SetLength(output, (rows * columns));
    for r := 0 to (rows - 1) do
      for c := 0 to (columns - 1) do
        output[((r * columns) + c)] := Point((startPoint.X + (c * columnSpace)), (startPoint.Y + (r * rowSpace)));
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Returns row of points. Starting from startPoint,
          where rowSpace is the amount of space between each point.
 @note: Example row = (0, 0), (0, 1), (0, 2), (0, 3), (0, 4) (rowSpace as 1)
 @contributors: Janilabo, slacky
[==============================================================================}

procedure TPARow(startPoint: TPoint; rows, rowSpace: Integer; var output: TPointArray); callconv
var
  i: Integer;
begin
  if (rows > 0) then
  begin
    SetLength(output, rows);
    for i := 0 to (rows - 1) do
      output[i] := Point(startPoint.X, (startPoint.Y + (i * rowSpace)));
  end else
    SetLength(output, 0);
end;

{==============================================================================]
 @action: Returns column of points. Starting from startPoint,
          where columnSpace is the amount of space between each point.
 @note: Example column = (0, 0), (1, 0), (2, 0), (3, 0), (4, 0) (columnSpace as 1)
 @contributors: Janilabo, slacky
[==============================================================================}

function TPAColumn(startPoint: TPoint; columns, columnSpace: Integer): TPointArray; callconv
var
  i: Integer;
begin
  if (columns > 0) then
  begin
    SetLength(Result, columns);
    for i := 0 to (columns - 1) do
      Result[i] := Point((startPoint.X + (i * columnSpace)), startPoint.Y);
  end else
    SetLength(Result, 0);
end;
