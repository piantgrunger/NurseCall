unit unUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls,strutils,
   Buttons, Grids, IniFiles, ExtCtrls, StdCtrls, DB, ADODB, DBGrids,ExcelXP;

type
  TfrmUtama = class(TForm)
    ScrollBox1: TScrollBox;
    btnmonitor: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    btnreport: TSpeedButton;
    ADOConnection1: TADOConnection;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnmonitorClick(Sender: TObject);
    procedure btnreportClick(Sender: TObject);
  private
    { Private declarations }
  public
     FilePath :string;
     Datapath : TStringList;
     RefreshTime : integer;

    procedure loadFile(filename:tstringlist;Var Result : TStringList);
    procedure loadFilecsv(filename:tstringlist;Var Result : TStringList);
    Function ExportToExcel(DBGrid : TDBGrid; sFile : String): Boolean;
    { Public declarations }
  end;

var
  frmUtama: TfrmUtama;
implementation

uses unMonitor,unpath;

{$R *.dfm}
Function TfrmUtama.ExportToExcel(DBGrid : TDBGrid; sFile : String): Boolean;
var
iCol,iRow : Integer;
oDataset : TDAtaset;
oExcel : TExcelApplication;
oWorkbook : TExcelWorkbook;
oSheet : TExcelWorksheet;

begin
iCol := 0;
iRow := 0;
result := True;
oDataset := DBGrid.DataSource.DataSet;
oExcel := TExcelApplication.Create(Application);
oWorkbook := TExcelWorkbook.Create(Application);
oSheet := TExcelWorksheet.Create(Application);

try
oExcel.Visible[0] := False;
oExcel.Connect;
except
result := False;
MessageDlg('Excel may not be installed', mtError, [mbOk], 0);
exit;
end;

oExcel.Visible[0] := True;
oExcel.Caption := 'Nurse Call Report';
oExcel.Workbooks.Add(Null,0);

oWorkbook.ConnectTo(oExcel.Workbooks[1]);
oSheet.ConnectTo(oWorkbook.Worksheets[1] as _Worksheet);

 iRow := 1;

for iCol:=1 to dbgrid.Columns.Count do begin
// oSheet.Cells.Item[iRow,iCol] := oDataSet.FieldDefs.Items[iCol].Name;
 oSheet.Cells.Item[iRow,iCol] := dbgrid.Columns[icol-1].Title.Caption;
end;

// iRow := 1;

oDataSet.Open;
while NOT oDataSet.Eof do begin
Inc(iRow);

for iCol:=1 to dbgrid.Columns.Count do begin
oSheet.Cells.Item[iRow,iCol] := dbgrid.Columns[icol-1].Field.AsString; //oDataSet.Fields[iCol-1].AsString;
end;

oDataSet.Next;
end;


//Change the font properties of all columns.
oSheet.Columns.Font.Color := clPurple;
oSheet.Columns.Font.FontStyle := fsBold;
oSheet.Columns.Font.Size := 10;

//Change the font properties of a row.
oSheet.Range['A1','A1'].EntireRow.Font.Color := clNavy;
oSheet.Range['A1','A1'].EntireRow.Font.Size := 16;
oSheet.Range['A1','A1'].EntireRow.Font.FontStyle := fsBold;

{
//Change the font properties of a row.
oSheet.Range['A2','A2'].EntireRow.Font.Color := clBlue;
oSheet.Range['A2','A2'].EntireRow.Font.Size := 12;
oSheet.Range['A2','A2'].EntireRow.Font.FontStyle := fsBold;
oSheet.Range['A2','H2'].HorizontalAlignment := xlHAlignCenter;
}
{
//Change the font properties of a column.
oSheet.Range['A1','C1'].EntireColumn.Font.Color := clBlue;

//Change Cells color of a row.
oSheet.Range['A1', 'A1'].EntireRow.Interior.Color := clNavy;

//Change Cells color of a column.
oSheet.Range['C1', 'C1'].EntireColumn.Interior.Color := clYellow;

//Align a column.
oSheet.Range['A1','A1'].HorizontalAlignment := xlHAlignLeft;

//Set a column with manually.
// oSheet.Columns.Range['A1','A1'].ColumnWidth := 16;
}
//Auto fit all columns.
oSheet.Columns.AutoFit;


DeleteFile(sFile);

Sleep(2000);

oSheet.SaveAs(sFile);
oSheet.Disconnect;
oSheet.Free;

oWorkbook.Disconnect;
oWorkbook.Free;

oExcel.Quit;
oExcel.Disconnect;
oExcel.Free;
end;



procedure TfrmUtama.FormActivate(Sender: TObject);
var
  T : TStringList;
  Strconn:string;
begin
   if FileExists(Extractfilepath(Application.exename)+ 'koneksi.ini') = true then
   begin
    Datapath.LoadFromFile(Extractfilepath(Application.exename)+ 'koneksi.ini');
   end
   else
   begin
     beep;
     messagedlg('tidak berhasil konek',mtinformation,[mbok],0);
   //  SpeedButton1.Click;
   end;





end;

procedure TfrmUtama.Timer1Timer(Sender: TObject);
begin
   frmutama.StatusBar1.Panels[2].Text:=datetostr(date)+' '+timetostr(time);

end;

procedure TfrmUtama.FormCreate(Sender: TObject);
var inifile : tinifile;
begin
   if FileExists(Extractfilepath(Application.exename)+ 'Timer.ini') = true then
   begin
         inifile := TIniFile.Create(Extractfilepath(Application.exename)+ 'Timer.ini');
         RefreshTime := StrToInt(inifile.ReadString('Refresh Time','Refresh Time','4'))*1000;
         inifile.Free;
   end
   else
   begin
        RefreshTime := 4000;
   end;


Timer1.Enabled := true   ;
FilePath := 'TH_NCCALLLOG_'+FormatDateTime('ddmmyyyy',date)+'.data';
  Datapath:=tstringlist.Create;
  ShortDateFormat := 'dd/mm/yyyy' ;

  if (ExtractFileName(Application.ExeName) = 'NurseCallReport.exe') then
  begin
      btnmonitor.Visible := False;
     frmUtama.Caption := 'Nurse Call System Report';
  end
  else  if (ExtractFileName(Application.ExeName) = 'NurseCallMonitor.exe') then
  begin
      btnreport.Visible := False;
        frmUtama.Caption := 'Nurse Call System Monitor';

  end;
  
end;

procedure TfrmUtama.loadFile(filename: tstringlist ;Var Result : TStringList) ;
var  F: TStream;
    i:integer;
  UnicodeString: WideString;
  UnicodeSign: Word;
  FileSize: Cardinal;
  st:string;
begin
for i := 0 to filename.Count-1 do
begin

if FileExists(filename[i]+FilePath) then
begin
  F := TFileStream.Create(filename[i]+FilePath, fmOpenRead);
  try
    FileSize := F.Size;
    if FileSize >= SizeOf(UnicodeSign) then
    begin
      F.ReadBuffer(UnicodeSign, SizeOf(UnicodeSign));
      if UnicodeSign = $FEFF then
      begin
        Dec(FileSize, SizeOf(UnicodeSign));
        SetLength(UnicodeString, FileSize div SizeOf(WideChar));
        F.ReadBuffer(UnicodeString[1], FileSize);
        // now UnicodeString contains Unicode string read from stream
        st:= st+UnicodeString ;
      end
      else
        // not a Unicode format;
        Result.LoadFromFile(filename[i]);
    end;
  finally
    F.Free;
  end;
end;
    Result.Text:=st;
    Result.Sort;

end;

end;

procedure TfrmUtama.btnmonitorClick(Sender: TObject);
begin
 //    if frmmonitor=nil then
     begin
      application.CreateForm(Tfrmmonitor,frmmonitor);
     end;
     frmmonitor.ShowModal;

end;

procedure TfrmUtama.loadFilecsv(filename: tstringlist;
  var Result: TStringList);
var  F: TStream;
    i:integer;
  UnicodeString: WideString;
  UnicodeSign: Word;
  FileSize: Cardinal;
  st,tgl:string;
  s1 : TStringList;
  searchResult : TSearchRec;
begin
for i := 0 to filename.Count-1 do
begin

if findfirst(filename[i]+'TH_NCCALLLOG_*.data', faAnyFile, searchResult) = 0 then

begin
repeat


  F := TFileStream.Create(filename[i]+searchResult.Name, fmOpenRead);
  try
    FileSize := F.Size;
    if FileSize >= SizeOf(UnicodeSign) then
    begin
      F.ReadBuffer(UnicodeSign, SizeOf(UnicodeSign));
      if UnicodeSign = $FEFF then
      begin
        Dec(FileSize, SizeOf(UnicodeSign));
        SetLength(UnicodeString, FileSize div SizeOf(WideChar));
        F.ReadBuffer(UnicodeString[1], FileSize);
        // now UnicodeString contains Unicode string read from stream
        st:= st+UnicodeString ;
      end
      else
        // not a Unicode format;
        Result.LoadFromFile(filename[i]);
    end;
  finally
    F.Free;
  end;

  until FindNext(searchResult) <> 0;

    // Must free up resources used by these successful finds
    FindClose(searchResult);
end;
end;

    Result.Text:= st;
    s1:=TStringList.Create;
    for i:= 0 to Result.Count-1 do
    begin

       s1.DelimitedText:= Result[i];
       s1.Delimiter :=',';
       tgl := s1[0];
       tgl := FormatDateTime('YYYYMMDD',   EncodeDate(strtoint(MidStr(tgl,7,4)),strtoint(MidStr(tgl,4,2)), strtoint(MidStr(tgl,1,2))));


       if RightStr(s1[2],2)='CB' then
       begin
          Result[i] := Result[i]+',Code Blue'

       end
        else
       if s1[8]='1' then
          Result[i] := Result[i]+',Bathroom Call'
        else
         Result[i] := Result[i]+',Nurse Call';


            Result[i]  := Result[i]+','+tgl;
            Result[i]  := Result[i]+', Lantai - '+LeftStr(s1[2],1);
            Result[i] := StringReplace(Result[i],'-CB','',[]);

    end;
    s1.Free;
    Result.Sort;
    Result.Insert(0,'c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,ket,tgl,Lantai');

    Result.SaveToFile('Report.csv');

end;

procedure TfrmUtama.btnreportClick(Sender: TObject);
begin

      application.CreateForm(Tfrmpath,frmpath);
     frmpath.ShowModal;

end;

end.
