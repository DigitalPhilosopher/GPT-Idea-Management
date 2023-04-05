unit IdeaManager;

interface

uses
  System.Classes;

procedure SaveIdea(const Name, Description: string; const Positive, Negative: TStrings);
function GetIdeaList: TStringList;
procedure OpenCSV;
procedure AddPositive(const List: TStrings);
procedure AddNegative(const List: TStrings);

implementation

uses
  System.SysUtils, Vcl.Dialogs, CSVFileHandling;

procedure SaveIdea(const Name, Description: string; const Positive, Negative: TStrings);
begin
  CSVFileHandling.SaveIdea(Name, Description, Positive, Negative);
end;

function GetIdeaList: TStringList;
begin
  Result := CSVFileHandling.GetIdeaList;
end;

procedure OpenCSV;
begin
  CSVFileHandling.OpenCSV
end;

procedure AddPositive(const List: TStrings);
var
  Text: string;
begin
  Text := '';
  if InputQuery('Add Positive', 'Enter Positive:', Text) and (Text <> '') then
    List.Add(Text);
end;

procedure AddNegative(const List: TStrings);
var
  Text: string;
begin
  Text := '';
  if InputQuery('Add Negative', 'Enter Negative:', Text) and (Text <> '') then
    List.Add(Text);
end;

end.

