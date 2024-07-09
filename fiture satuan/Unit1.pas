unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    e1: TEdit;
    e2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    e3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure bersih;
    procedure btn4Click(Sender: TObject);
    procedure e3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('insert into satuan values(null, "'+e1.Text+'", "'+e2.Text+'")');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil diTambah');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('update satuan set nama="'+e1.Text+'", diskripsi="'+e2.Text+'" where id="'+a+'"');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil diUbah');
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
e1.Text:= DataModule2.ZQuery1.Fields[1].AsString;
e2.Text:= DataModule2.ZQuery1.Fields[2].AsString;
a:= DataModule2.ZQuery1.Fields[0].AsString;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('delete from satuan where id="'+a+'"');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil diHapus');
end;

procedure TForm1.bersih;
begin
e1.Clear;
e2.Clear;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
bersih;
end;

procedure TForm1.e3Change(Sender: TObject);
begin
  with DataModule2.ZQuery1 do
  begin
       SQL.Clear;
       SQL.Add('select * from satuan where nama like "%'+e1.Text+'%"');
       Open;
  end;
end;

end.
