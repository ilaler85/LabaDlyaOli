unit Upochta;


interface
type
  mail = class
  public
    FIOout, FIOin: string;
    day, mount, typemail:integer;
    year:integer;
    constructor Create(tFIOout,tFIOin:string; tday, tmount, tyear:integer; ttypemail:Byte);
    destructor Destroy; override;
    end;

implementation
  constructor mail.Create(tFIOout,tFIOin:string; tday, tmount, tyear:integer; ttypemail:Byte);
  begin
    FIOout:= tFIOout; FIOin:= tFIOin;
    day:= tday; mount:=tmount; year:=tyear;
    typemail:= ttypemail;
  end;
  destructor mail.Destroy;
  begin
    inherited Destroy;
  end;

end.
