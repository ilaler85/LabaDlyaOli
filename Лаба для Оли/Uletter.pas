unit Uletter;


interface
uses Upochta;
type
  CLetter = class(mail)
  public
    Text:string;
    zakaz:boolean;
    constructor Create(Ttext:string; Tzakaz:Boolean; tFIOout,tFIOin:string; tday, tmount, tyear:integer);
    destructor Destroy; override;
    end;
implementation
  constructor CLetter.Create(Ttext:string; Tzakaz:Boolean; tFIOout,tFIOin:string; tday, tmount, tyear:integer);
  begin
    Text := Ttext;
    zakaz:= Tzakaz;
    mail.Create(tFIOout,tFIOin, tday, tmount, tyear, 1);
  end;
  destructor CLetter.Destroy;
  begin
    inherited Destroy;
  end;
end.
 