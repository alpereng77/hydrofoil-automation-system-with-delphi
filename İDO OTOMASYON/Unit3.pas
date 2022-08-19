unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button1: TButton;
    Edit1: TEdit;
    Label13: TLabel;
    Button2: TButton;
    Panel1: TPanel;
    Edit2: TEdit;
    Label1: TLabel;
    Button3: TButton;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
adotable1.locate('tarih', edit1.Text,  [tlocateoption.loPartialKey]);
end;

end.
