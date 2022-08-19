unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Menus;

type
  TForm2 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button1: TButton;
    Label13: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label14: TLabel;
    BitBtn7: TBitBtn;
    SeferHaritas1: TMenuItem;
    CheckBox1: TCheckBox;
    Label15: TLabel;
    BitBtn8: TBitBtn;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    procedure hesapClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SeferHaritas1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
        uses unit1 , unit3, Unit4,unit5;



{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
adotable1.prior;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
adotable1.edit;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
adotable1.delete;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
          adotable1.Post;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
begin
dbedit1.Focused;
adotable1.append;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
begin
DBEdit4.Text:=datetostr(date);
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
begin
adotable1.locate('tc_no', edit1.Text,  [tlocateoption.loPartialKey]);
end;

procedure TForm2.hesapClick(Sender: TObject);
var
kisi: string;
kisi2: string;
begin
           form1.close;
           form2.Close;



end;

procedure TForm2.N1Click(Sender: TObject);
begin
         form2.Close;
         form5.Close;
end;

procedure TForm2.SeferHaritas1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm2.Button1Click(Sender: TObject);

var
fiyat:integer;
arac:integer;
ucret:integer;
ogrenci:integer;
begin
if dbcombobox1.Text='Yenikapý' then begin
fiyat:=+30;

end;
if dbcombobox1.Text='Bursa' then begin
fiyat:=+35;
end;
if dbcombobox1.Text='Bandýrma' then begin
fiyat:=+35;
end;
if dbcombobox1.Text='Yalova' then begin
fiyat:=+25;
end;
if dbcombobox1.Text='Pendik' then begin
fiyat:=+35;
end;
if dbcombobox1.Text='Armutlu' then begin
fiyat:=+35;
end;
if dbcombobox1.Text='Çýnarcýk' then begin
fiyat:=+30;
end;
if dbcombobox1.Text='Esenköy' then begin
fiyat:=+40;
end;
if dbcombobox1.Text='Bostancý' then begin
fiyat:=+25;
end;
if dbcombobox1.Text='Beþiktaþ' then begin
fiyat:=+25;
end;
if dbcombobox1.Text='Kadýköy' then begin
fiyat:=+25;
end;
if dbcombobox1.Text='Kabataþ' then begin
fiyat:=+20;
end;

if dbcheckbox1.Checked=true then  begin
  arac:=+25 ;
end;
if checkbox1.Checked=true then
           ogrenci:=5;

                 ucret:=(arac+fiyat)-ogrenci;
label13.Caption:=inttostr(ucret)+ ' TL ';


end;

procedure TForm2.Button2Click(Sender: TObject);
begin
adotable1.locate('tc_no', edit1.Text,  [tlocateoption.loPartialKey]);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 form3.Show;


end;

procedure TForm2.DBComboBox1Change(Sender: TObject);
begin

dbcombobox2.clear;

if dbcombobox1.Text='Yenikapý' then begin

dbcombobox2.Items.Add('Bursa');
dbcombobox2.Items.Add('Bandýrma');
dbcombobox2.Items.Add('Yalova');
dbcombobox2.Items.Add('Armutlu');
dbcombobox2.Items.Add('Kadýköy');
dbcombobox2.Items.Add('Kabataþ');

end   ;

 if dbcombobox1.text='Bursa' then begin
dbcombobox2.Items.Add('Kadýköy');
dbcombobox2.Items.Add('Kabataþ');
  dbcombobox2.Items.Add('Yenikapý');
  dbcombobox2.Items.Add('Armutlu');

end ;

if dbcombobox1.text='Bandýrma' then begin

dbcombobox2.Items.Add('Yenikapý');
dbcombobox2.Items.Add('Bostancý');


end ;

if  dbcombobox1.text='Yalova' then begin

      dbcombobox2.Items.Add('Yenikapý');
dbcombobox2.Items.Add('Pendik');


end ;
if  dbcombobox1.text='Armutlu' then begin

   dbcombobox2.Items.Add('Yenikapý');
dbcombobox2.Items.Add('Bursa');
dbcombobox2.Items.Add('Kadýköy');


  end ;

  if  dbcombobox1.text='Çýnarcýk' then begin
     dbcombobox2.Items.Add('Yenikapý');
dbcombobox2.Items.Add('Pendik');



end;
  if  dbcombobox1.text='Esenköy' then begin
     dbcombobox2.Items.Add('Yenikapý');
  dbcombobox2.Items.Add('Pendik');

    end;

           if  dbcombobox1.text='Beþiktaþ' then begin
     dbcombobox2.Items.Add('Kayýt Bulunamadý');


  end;

     if  dbcombobox1.text='Bostancý' then begin
     dbcombobox2.Items.Add('Bandýrma');

end;

             if  dbcombobox1.text='Kadýköy' then begin
     dbcombobox2.Items.Add('Bursa');
      dbcombobox2.Items.Add('Armutlu');
       dbcombobox2.Items.Add('Kabataþ');


end;

    if  dbcombobox1.text='Kabataþ' then begin
     dbcombobox2.Items.Add('Bursa');
      dbcombobox2.Items.Add('Kadýköy');


end;
end;




end.
