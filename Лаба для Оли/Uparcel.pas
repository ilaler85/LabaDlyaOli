unit Uparcel;


interface
uses Upochta;
type
  ClParcel = class (mail)
  private
    weight:Real;
  public
    constructor Create(tmp:Real; tFIOout,tFIOin:string; tday, tmount, tyear:integer);
    destructor Destroy; override;
    end;
implementation
  constructor ClParcel.Create(tmp:Real; tFIOout,tFIOin:string; tday, tmount, tyear:integer);
  begin
    weight:= tmp;
    mail.Create(tFIOout,tFIOin, tday, tmount, tyear, 2);
  end;
  destructor ClParcel.Destroy;
  begin
    inherited Destroy;
  end;

end.
 