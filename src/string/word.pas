{==============================================================================]
 @action: Returns the words from text as TStringArray.
 @note: Detects words by character set: ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_
 @contributors: Janilabo, slacky
[==============================================================================}

procedure StrGetWords(text: string; var output: TStringArray); callconv
var
  l, i, r: Integer;
  w: string;
begin
  r := 0;
  l := Length(text);
  if (l > 0) then
  begin
    w := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_';
    SetLength(output, l);
    i := 0;
    while (i < l) do
    begin
      Inc(i);
      if (Pos(text[i], w) > 0) then
      begin
        output[r] := text[i];
        while (i < l) do
        begin
          Inc(i);
          if (Pos(text[i], w) > 0) then
            output[r] := (output[r] + text[i])
          else
            Break;
        end;
        Inc(r);
      end;
    end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Returns the words from text as TStringArray.
 @note: Supports custom character set!
 @contributors: Janilabo, slacky
[==============================================================================}

procedure StrGetWordsEx(text, wordCharacters: string; var output: TStringArray); callconv
var
  l, i, r: Integer;
begin
  r := 0;
  l := Length(text);
  if ((l > 0) and (wordCharacters <> '')) then
  begin
    SetLength(output, l);
    i := 0;
    while (i < l) do
    begin
      Inc(i);
      if (Pos(text[i], wordCharacters) > 0) then
      begin
        output[r] := text[i];
        while (i < l) do
        begin
          Inc(i);
          if (Pos(text[i], wordCharacters) > 0) then
            output[r] := (output[r] + text[i])
          else
            Break;
        end;
        Inc(r);
      end;
    end;
  end;
  SetLength(output, r);
end;

{==============================================================================]
 @action: Returns the count of words in text.
 @note: Detects words by character set: ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_
 @contributors: Janilabo, slacky
[==============================================================================}

function StrCountWords(text: string): Integer; callconv
var
  l, i: Integer;
  w: string;
begin
  Result := 0;
  l := Length(text);
  if (l > 0) then
  begin
    i := 0;
    w := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_';
    while (i < l) do
    begin
      Inc(i);
      if (Pos(text[i], w) > 0) then
      begin
        Inc(Result);
        while (i < l) do
        begin
          Inc(i);
          if (Pos(text[i], w) < 1) then
            Break;
        end;
      end;
    end;
  end;
end;

{==============================================================================]
 @action: Returns count of words in text.
 @note: Supports custom character set (wordCharacters)
 @contributors: Janilabo, slacky
[==============================================================================}

function StrCountWordsEx(text, wordCharacters: string): Integer; callconv
var
  l, i: Integer;
begin
  Result := 0;
  l := Length(text);
  if ((l > 0) and (wordCharacters <> '')) then
  begin
    i := 0;
    while (i < l) do
    begin
      Inc(i);
      if (Pos(text[i], wordCharacters) > 0) then
      begin
        Inc(Result);
        while (i < l) do
        begin
          Inc(i);
          if (Pos(text[i], wordCharacters) < 1) then
            Break;
        end;
      end;
    end;
  end;
end;
