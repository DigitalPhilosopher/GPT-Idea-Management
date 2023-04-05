unit MainPage;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    btnNew: TButton;
    btnOpenExcel: TButton;
    lbIdeas: TListBox;
    procedure btnNewClick(Sender: TObject);
    procedure btnOpenExcelClick(Sender: TObject);
  private
    procedure LoadIdeas;
  public
  end;

var
  MainForm: TMainForm;

implementation

uses
  IdeaForm, IdeaManager;

{$R *.dfm}

procedure TMainForm.btnNewClick(Sender: TObject);
begin
  if TIdeaForm.CreateAndShow = mrOk then
    LoadIdeas;
end;

procedure TMainForm.btnOpenExcelClick(Sender: TObject);
begin
  IdeaManager.OpenCSV;
end;

procedure TMainForm.LoadIdeas;
begin
  lbIdeas.Items.Clear;
  lbIdeas.Items.AddStrings(IdeaManager.GetIdeaList);
end;

end.

