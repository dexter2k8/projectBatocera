program Projectbatocera;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitBatocera in 'UnitBatocera.pas' {Form1},
  ToastMessage in 'ToastMessage.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
