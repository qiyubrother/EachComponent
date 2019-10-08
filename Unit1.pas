unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btnDo: TButton;
    procedure btnDoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDoClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) and (TEdit(Components[i]).color = clred) then
      TEdit(Components[i]).Left := TEdit(Components[i]).Left + 5;
  end;
end;

end.
