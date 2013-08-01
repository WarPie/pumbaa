library pumbaa;

{$mode objfpc}{$H+}
{$inline on}
{$macro on}
{$DEFINE callconv:=
  {$IFDEF WINDOWS}
    {$IFDEF CPU32}
      cdecl;
    {$ELSE}
    {$ENDIF}
  {$ENDIF}
  {$IFDEF LINUX}
    {$IFDEF CPU32}
      cdecl;
    {$ELSE}
    {$ENDIF}
  {$ENDIF}
}

uses
  classes, sysutils, math, mufasatypes;

var
  OldMemoryManager: TMemoryManager;
  memisset: Boolean = False;

type
  TExportType = record
    name, def: PChar;
  end;
  TExportFunction = record
    addr: Pointer;
    def: PChar;
  end;

var
  types: array of TExportType;
  functions: array of TExportFunction;
  typesExported, functionsExported: Boolean;

procedure AddType(name, def: PChar);
var
  l: Integer;
begin
  l := Length(types);
  SetLength(types, (l + 1));
  types[l].name := name;
  types[l].def := def;
end;

procedure AddFunction(addr: Pointer; def: PChar);
var
  l: Integer;
begin
  l := Length(functions);
  SetLength(functions, (l + 1));
  functions[l].addr := addr;
  functions[l].def := def;
end;

function GetPluginABIVersion: Integer; callconv export;
begin
  Result := 2;
end;

procedure SetPluginMemManager(MemMgr: TMemoryManager); callconv export;
begin
  if memisset then
    Exit;
  GetMemoryManager(OldMemoryManager);
  SetMemoryManager(MemMgr);
  memisset := True;
end;

procedure OnDetach; callconv export;
begin
  SetMemoryManager(OldMemoryManager);
end;

{$I src\global.pas}
{$I src\mathematics.pas}
{$I src\sorting.pas}
{$I src\array.pas}
{$I src\point.pas}

function GetTypeCount(): Integer; callconv export;
begin
  if not typesExported then
  begin
    AddGlobalTypes;
    typesExported := True;
  end;
  Result := Length(types);
end;

function GetFunctionCount(): Integer; callconv export;
begin
  if not functionsExported then
  begin
    AddMathFunctions;
    AddSortingFunctions;
    AddArrayFunctions;
    AddPointFunctions;
    functionsExported := True;
  end;
  Result := Length(functions);
end;

function GetTypeInfo(x: Integer; var name, def: PChar): integer; callconv export;
begin
  if ((x > -1) and InRange(x, Low(types), High(types))) then
  begin
    StrPCopy(name, types[x].name);
    StrPCopy(def, types[x].def);
    Result := x;
    if (Result = High(types)) then
    begin
      SetLength(types, 0);
      typesExported := False;
    end;
  end else
    Result := -1;
end;

function GetFunctionInfo(x: Integer; var addr: Pointer; var def: PChar): Integer; callconv export;
begin
  if ((x > -1) and InRange(x, Low(functions), High(functions))) then
  begin
    addr := functions[x].addr;
    StrPCopy(def, functions[x].def);
    Result := x;
    if (Result = High(functions)) then
    begin
      SetLength(functions, 0);
      functionsExported := False;
    end;
  end else
    Result := -1;
end;

exports GetPluginABIVersion;
exports SetPluginMemManager;
exports GetTypeCount;
exports GetTypeInfo;
exports GetFunctionCount;
exports GetFunctionInfo;
exports OnDetach;

begin
end.
