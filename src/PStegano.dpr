program PStegano;

uses
  Forms,
  UFMain in 'UFMain.pas' {FMain},
  USteganoExcel in '..\..\SteganoSharedUnits\src\USteganoExcel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
