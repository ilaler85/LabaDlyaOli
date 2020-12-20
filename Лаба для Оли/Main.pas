unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Calendar, StdCtrls, Menus, Uparcel,Upochta, Utransfer,Uletter;

type
  TTask = class(TForm)
    outt: TEdit;
    inn: TEdit;
    dd: TEdit;
    mm: TEdit;
    yy: TEdit;
    Rbletter: TRadioButton;
    Rbparcel: TRadioButton;
    Rbtransfer: TRadioButton;
    Add: TButton;
    zakaz: TCheckBox;
    menu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Nrun: TMenuItem;
    Nadd: TMenuItem;
    LOut: TLabel;
    Lin: TLabel;
    Tdate: TLabel;
    Ttupe: TLabel;
    Label1: TLabel;
    text1: TMemo;
    runn: TButton;
    ddd: TEdit;
    mmm: TEdit;
    yyy: TEdit;
    procedure NaddClick(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure RbletterClick(Sender: TObject);
    procedure RbparcelClick(Sender: TObject);
    procedure RbtransferClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NrunClick(Sender: TObject);
    procedure runnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Task: TTask;
  ClassMail:mail;
  arrayMail:array [0..100] of mail;
  Fact, i, otvet:Integer;



implementation

{$R *.dfm}

procedure TTask.NaddClick(Sender: TObject);
begin
  LOut.Visible := True;
  Lin.Visible := True;
  outt.Visible := True;
  inn.Visible := True;
  Tdate.Visible := True;
  dd.Visible := True;
  mm.Visible := True;
  yy.Visible := True;
  Ttupe.Visible := True;
  Rbletter.Visible := True;
  Rbtransfer.Visible := True;
  Rbparcel.Visible := True;
  Label1.Visible := True;
  Add.Visible := True;
  text1.Visible := True;

  runn.Visible:= False;
  ddd.Visible:=False;
  mmm.Visible:=False;
  yyy.Visible:=False;
  
end;

procedure TTask.AddClick(Sender: TObject);
begin
  if (StrToInt(dd.Text)>0) and(StrToInt(dd.Text)<=31)and(StrToInt(mm.Text)>0)and(StrToInt(mm.Text)<13)and(StrToInt(mm.Text)>1900) then
  begin
    if Rbletter.Checked  then
    begin
      ClassMail:=CLetter.Create(text1.Text, zakaz.Checked, outt.Text, inn.Text, StrToInt(dd.Text),StrToInt(mm.Text),StrToInt(yy.Text));
    end;
    if Rbparcel.Checked  then
    begin
      ClassMail:=ClParcel.Create(StrToFloat(text1.Text), outt.Text, inn.Text, StrToInt(dd.Text),StrToInt(mm.Text),StrToInt(yy.Text) );
    end;
    if Rbtransfer.Checked  then
    begin
      ClassMail:= ClTransfer.Create(StrToFloat(text1.Text), outt.Text, inn.Text, StrToInt(dd.Text),StrToInt(mm.Text),StrToInt(yy.Text));
    end;
    arrayMail[Fact mod 100] := ClassMail;
    inc(Fact);
  end;
  outt.Text := '';
  inn.Text := '';
  dd.Text := '';
  mm.Text := '';
  yy.Text := '';
  text1.Text := '';
end;

procedure TTask.RbletterClick(Sender: TObject);
begin
  Label1.Caption:='Текст письма';
  zakaz.Visible:=True;
end;

procedure TTask.RbparcelClick(Sender: TObject);
begin
  Label1.Caption:='Вес посылки';
  zakaz.Visible:=False;
end;

procedure TTask.RbtransferClick(Sender: TObject);
begin
  Label1.Caption:='Сумма перевода';
  zakaz.Visible:=False;
end;

procedure TTask.FormCreate(Sender: TObject);
begin
  Fact:=0;
end;

procedure TTask.NrunClick(Sender: TObject);
begin
  runn.Visible:= True;
  ddd.Visible:=True;
  mmm.Visible:=True;
  yyy.Visible:=True;
  Lin.Visible := False;
  inn.Visible := False;
  Ttupe.Visible := False;
  Rbletter.Visible := False;
  Rbtransfer.Visible := False;
  Rbparcel.Visible := False;
  Label1.Visible := False;
  Add.Visible := False;
  text1.Visible := False;
end;

procedure TTask.runnClick(Sender: TObject);
begin
  otvet:=0;
  for i:=0 to Fact - (Fact mod 100) do
  begin
    if (arrayMail[i].typemail = 3) and (arrayMail[i].FIOout = outt.Text)
    and (arrayMail[i].year>=StrToInt(yy.Text)) and (arrayMail[i].year<=StrToInt(yyy.Text)) then
    begin
      if (arrayMail[i].mount>= StrToInt(mm.Text)) and (arrayMail[i].mount<=StrToInt(mmm.Text)) then
      begin
        if (arrayMail[i].day>= StrToInt(dd.Text)) and (arrayMail[i].day<=StrToInt(ddd.Text)) then
        begin
          inc(otvet);
        end;
      end;
    end;
  end;
  MessageBox(0,'ggg' , 'ответ', MB_OK);
end;

end.
