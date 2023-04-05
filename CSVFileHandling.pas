unit CSVFileHandling;

interface

uses
  System.Classes;

procedure SaveIdea(const Name, Description: string; const Positive, Negative: TStrings);
function GetIdeaList: TStringList;
procedure OpenCSV;

implementation

uses
  System.SysUtils, Vcl.Dialogs, ShellApi, Windows;

const
  CSVFilePath = 'C:\Users\PatrickKühn\Documents\ideas.csv';

procedure SaveIdea(const Name, Description: string; const Positive, Negative: TStrings);
var
  CSVFile: TStreamWriter;
  Line: string;
begin
  if not FileExists(CSVFilePath) then
    raise Exception.Create('CSV file not found: ' + CSVFilePath);

  Line := Format('%s,%s,"%s","%s"', [Name, Description, Positive.Text, Negative.Text]);
  Line := StringReplace(Line, sLineBreak, ' ', [rfReplaceAll]);

  CSVFile := TStreamWriter.Create(CSVFilePath, True, TEncoding.UTF8);
  try
    CSVFile.WriteLine(Line);
  finally
    CSVFile.Free;
  end;
end;

function GetIdeaList: TStringList;
var
  CSVFile: TStreamReader;
  Line: string;
begin
  Result := TStringList.Create;

  if not FileExists(CSVFilePath) then
    raise Exception.Create('CSV file not found: ' + CSVFilePath);

  CSVFile := TStreamReader.Create(CSVFilePath, TEncoding.UTF8);
  try
    while not CSVFile.EndOfStream do
    begin
      Line := CSVFile.ReadLine;
      Result.Add(Line.Split([','])[0]);
    end;
  finally
    CSVFile.Free;
  end;
end;

procedure OpenCSV;
begin
  if not FileExists(CSVFilePath) then
    raise Exception.Create('CSV file not found: ' + CSVFilePath);

  ShellExecute(0, 'open', PChar(CSVFilePath), nil, nil, SW_SHOWNORMAL);
end;

end.

