unit IdeaForm;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls;

type
  TIdeaForm = class(TForm)
    btnSave: TButton;
    btnCancel: TButton;
    edName: TEdit;
    lblName: TLabel;
    lblDescription: TLabel;
    meDescription: TMemo;
    lblPositive: TLabel;
    lblNegative: TLabel;
    lbPositive: TListBox;
    lbNegative: TListBox;
    btnAddPositive: TButton;
    btnAddNegative: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddPositiveClick(Sender: TObject);
    procedure btnAddNegativeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
    class function CreateAndShow: TModalResult;
  end;

implementation

uses
  IdeaManager;

{$R *.dfm}

class function TIdeaForm.CreateAndShow: TModalResult;
begin
  with TIdeaForm.Create(nil) do
    try
      Result := ShowModal;
    finally
      Free;
    end;
end;

procedure TIdeaForm.FormCreate(Sender: TObject);
begin

end;

procedure TIdeaForm.btnAddNegativeClick(Sender: TObject);
begin
  IdeaManager.AddNegative(lbNegative.Items);
end;

procedure TIdeaForm.btnAddPositiveClick(Sender: TObject);
begin
  IdeaManager.AddPositive(lbPositive.Items);
end;

procedure TIdeaForm.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TIdeaForm.btnSaveClick(Sender: TObject);
begin
  IdeaManager.SaveIdea(edName.Text, meDescription.Text, lbPositive.Items, lbNegative.Items);
  ModalResult := mrOk;
end;

end.

