unit pointer.main;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        Edit1: TEdit;
        Button1: TButton;
        Memo1: TMemo;
        procedure Button1Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    pointer: ^string;
    texto: string;
begin
    texto := Edit1.Text;

    Memo1.Lines.Add(texto);

    pointer := @texto;

    pointer^ := 'Não é mais você';

    Memo1.Lines.Add('- - - - - - - - -||||- - - - - - - - -' );
    Memo1.Lines.Add(texto);
end;

end.
