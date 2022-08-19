unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Label3: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
           uses unit2;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

            var
               y: integer;

begin


       y:=strtoint(edit2.text);



 if (edit1.text='alperen') and (y=12346)  then   begin

    form2.Show;
           timer1.Enabled:=true;

     end



        else begin
        ShowMessage('Yanlýþ Þifre veya Kullanýcý adý')
        end ;





end;







procedure TForm1.Timer1Timer(Sender: TObject);

begin
progressbar1.Position:=progressbar1.Position+1;

  if progressbar1.Position=2 then   begin

  label3.Caption:='Sistem Verileri yükleniyor... '

  end;

    if progressbar1.Position=40 then   begin

  label3.Caption:='Bekleyiniz... '

  end;

  if progressbar1.Position=95 then   begin

  label3.Caption:='Sisteminiz Hazýr '

  end;

if progressbar1.Position=100 then   begin
    edit1.Enabled:=true;
     edit2.Enabled:=true;
end;

end;

end.
