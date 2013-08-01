{==============================================================================]
 @action: Returns percent (%) from source by position.
 @note: Value-to-Percent conversion!
 @contributors: Janilabo, slacky
[==============================================================================}

function Percent(position, source: Extended): Extended; callconv inline;
begin
  if (position <> 0) then
    Result := ((position / source) * 100.0)
  else
    Result := 0.0;
end;

{==============================================================================]
 @action: Returns value from source by percent.
 @note: Percent-to-Value conversion!
 @contributors: Janilabo, slacky
[==============================================================================}

function Percentage(percent, source: Extended): Extended; callconv inline;
begin
  if (percent <> 0) then
    Result := ((percent / 100.0) * source)
  else
    Result := 0.0;
end;
