unit UFMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFMain = class(TForm)
    PCSteganoContainer: TPageControl;
    TSExcel: TTabSheet;
    MMSG: TMemo;
    PMSG: TPanel;
    OPD: TOpenDialog;
    LEExcelWorkbookName: TLabeledEdit;
    BSelectExcelBook: TButton;
    BWriteAngle: TButton;
    BReadAngle: TButton;
    BWriteSecretSheet: TButton;
    BReadSecretSheet: TButton;
    LE_SecretSheet: TLabeledEdit;
    BCheck: TButton;
    procedure BSelectExcelBookClick(Sender: TObject);
    procedure BWriteAngleClick(Sender: TObject);
    procedure BReadAngleClick(Sender: TObject);
    procedure BWriteSecretSheetClick(Sender: TObject);
    procedure BReadSecretSheetClick(Sender: TObject);
    procedure BCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses
  USteganoExcel;

procedure SetExcelControlsEnabled;
begin
  with FMain do
  begin
    BWriteAngle.Enabled := true;
    BReadAngle.Enabled := true;
    BWriteSecretSheet.Enabled := true;
    BReadSecretSheet.Enabled := true;
    BCheck.Enabled := true;
  end;
end;

procedure SetExcelControlsDisabled;
begin
  with FMain do
  begin
    BWriteAngle.Enabled := false;
    BReadAngle.Enabled := false;
    BWriteSecretSheet.Enabled := false;
    BReadSecretSheet.Enabled := false;
    BCheck.Enabled := false;
  end;
end;

procedure TFMain.BCheckClick(Sender: TObject);
var
  MSGOrientation, MsgSecretSheet: AnsiString;
begin
  USteganoExcel.ReadMSGFromWorkbookAngle(
    MSGOrientation,
    LEExcelWorkbookName.Text);
  USteganoExcel.ReadMSGFromWorkbookSecretSheet(
    MsgSecretSheet,
    LEExcelWorkbookName.Text);
  if MSGOrientation <> MsgSecretSheet then
  begin
    ShowMessage('Обнаружена попытка изменить сообщение');
    MMSG.Lines.Clear;
    MMSG.Lines.Add('Оригинальное сообщение: ' + MSGOrientation);
    MMSG.Lines.Add('Изменённое сообщение: ' + MsgSecretSheet);
  end
  else
  begin
    MMSG.Lines.Clear;
    MMSG.Lines.Add(MSGOrientation);
  end;
end;

procedure TFMain.BReadAngleClick(Sender: TObject);
var
  str: AnsiString;
begin
  USteganoExcel.ReadMSGFromWorkbookAngle(
    str,
    LEExcelWorkbookName.Text);
  MMSG.Text := string(str);
end;

procedure TFMain.BReadSecretSheetClick(Sender: TObject);
var
  str: AnsiString;
begin
  USteganoExcel.SecretSheetName := LE_SecretSheet.Text;
  USteganoExcel.ReadMSGFromWorkbookSecretSheet(
    str,
    LEExcelWorkbookName.Text);
  MMSG.Text := string(str);
end;

procedure TFMain.BSelectExcelBookClick(Sender: TObject);
begin
  OPD.Filter := 'Excel Workbook|*.xls; *.xlsx';
  if OPD.Execute then
  begin
    LEExcelWorkbookName.Text := OPD.FileName;
    SetExcelControlsEnabled;
  end
  else
  begin
    LEExcelWorkbookName.Text := '';
    SetExcelControlsDisabled;
  end;
end;

procedure TFMain.BWriteAngleClick(Sender: TObject);
begin
  USteganoExcel.WriteMSGToWorkbookAngle(
    AnsiString(MMSG.Text),
    LEExcelWorkbookName.Text);
end;

procedure TFMain.BWriteSecretSheetClick(Sender: TObject);
begin
  USteganoExcel.SecretSheetName := LE_SecretSheet.Text;
  USteganoExcel.WriteMSGToWorkbookSecretSheet(
    AnsiString(MMSG.Text),
    LEExcelWorkbookName.Text);
end;

end.
