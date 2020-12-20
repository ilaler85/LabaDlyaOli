program Task5;

uses
  Forms,
  Main in 'Main.pas' {Task},
  Upochta in 'Upochta.pas',
  Uletter in 'Uletter.pas',
  Uparcel in 'Uparcel.pas',
  Utransfer in 'Utransfer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTask, Task);
  Application.Run;
end.
