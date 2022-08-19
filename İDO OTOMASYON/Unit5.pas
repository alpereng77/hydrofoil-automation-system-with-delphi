unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
            uses unit1 ,unit2, Unit4;
{$R *.dfm}

procedure TForm5.Timer1Timer(Sender: TObject);
begin
if timer1.Interval=1500 then     begin
form1.show;
timer1.Enabled:=false;
end
end;

end.
