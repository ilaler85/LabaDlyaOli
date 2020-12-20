unit Utransfer;
interface
uses Upochta;
  type
  ClTransfer = class (mail)
  private
    sum:Real;
  public
    constructor Create(tmp:Real; tFIOout,tFIOin:string; tday, tmount, tyear:integer);
    destructor Destroy; override;
    end;
implementation

uses DateUtils;
  constructor ClTransfer.Create(tmp:Real; tFIOout,tFIOin:string; tday, tmount, tyear:integer);
  begin
    sum:= tmp;
    mail.Create(tFIOout,tFIOin, tday, tmount, tyear, 3);
  end;
  destructor ClTransfer.Destroy;
  begin
    inherited Destroy;
  end;


end.
