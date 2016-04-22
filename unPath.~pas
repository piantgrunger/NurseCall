unit unPath;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Buttons, StdCtrls, DB, ADODB, ComCtrls, RpCon, RpConDS,
  RpDefine, RpRave, Grids, DBGrids;

type
  TfrmPath = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    dtpdari: TDateTimePicker;
    dtpsampai: TDateTimePicker;
    Label1: TLabel;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery2: TADOQuery;
    Label2: TLabel;
    CMBLANTAI: TComboBox;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    ADOQuery1: TADOQuery;
    cmbkamar: TComboBox;
    Label4: TLabel;
    ADOQuery3: TADOQuery;
    Label5: TLabel;
    cmbpanggil: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RvProject2: TRvProject;
    RvProject3: TRvProject;
    DBGLantai: TDBGrid;
    Button4: TButton;
    SaveDialog1: TSaveDialog;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPath: TfrmPath;    TA1:String;

implementation
uses unUtama;

{$R *.dfm}

procedure TfrmPath.Button1Click(Sender: TObject);
var strconn :string;T:TStringList;
begin
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := TA1;
          ADOQuery2.SQL.Add(' where Tgl >='+ FormatDateTime('yyyymmdd',dtpdari.Date));
          ADOQuery2.SQL.Add(' and Tgl <='+ FormatDateTime('yyyymmdd',dtpsampai.Date));
          if Quotedstr(CMBLANTAI.Text) <> 'All' then
             ADOQuery2.SQL.Add(' and Lantai ='+Quotedstr(CMBLANTAI.Text) );
          if cmbkamar.Text <> 'All' then
             ADOQuery2.SQL.Add(' and c3 ='+QuotedStr(cmbkamar.Text) );
          if cmbpanggil.Text <> 'All' then
             ADOQuery2.SQL.Add(' and ket ='+QuotedStr(cmbpanggil.Text) );

         ADOQuery2.SQL.Add(' Order By Tgl,Lantai') ;

           ADOQuery2.Open;
          RvProject1.ProjectFile:=(ExtractFilePath(Application.exename)+'\project1.rav');
          RvProject1.Execute;

end;

procedure TfrmPath.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action :=cafree;
end;

procedure TfrmPath.FormCreate(Sender: TObject);
var t:TStringList;strconn:String;
begin
  TA1 := ADOQuery2.SQL.Text;
  dtpdari.Date := date-30;
  dtpsampai.Date := date;
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;
          ADOQuery1.Close;
          ADOQuery1.Open;
          ADOQuery1.FIRST;
          CMBLANTAI.Items.Clear;
          CMBLANTAI.Items.Add('All');
          while not ADOQuery1.Eof do
          begin
              CMBLANTAI.Items.Add(ADOQuery1.fieldbyname('LANTAI').AsString);
              ADOQuery1.Next;
          end;
          CMBLANTAI.ItemIndex := 0;
               ADOQuery3.Close;
          ADOQuery3.Open;
          ADOQuery3.FIRST;
          CMBkamar.Items.Clear;
          CMBkamar.Items.Add('All');
          while not ADOQuery3.Eof do
          begin
              CMBkamar.Items.Add(ADOQuery3.fieldbyname('c3').AsString);
              ADOQuery3.Next;
          end;
          CMBkamar.ItemIndex := 0;

end;

procedure TfrmPath.Button2Click(Sender: TObject);
var strconn :string;T:TStringList;
begin
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := TA1;
          ADOQuery2.SQL.Add(' where Tgl >='+ FormatDateTime('yyyymmdd',dtpdari.Date));
          ADOQuery2.SQL.Add(' and Tgl <='+ FormatDateTime('yyyymmdd',dtpsampai.Date));
          if Quotedstr(CMBLANTAI.Text) <> 'All' then
             ADOQuery2.SQL.Add(' and Lantai ='+Quotedstr(CMBLANTAI.Text) );
          if cmbkamar.Text <> 'All' then
             ADOQuery2.SQL.Add(' and c3 ='+QuotedStr(cmbkamar.Text) );
          if cmbpanggil.Text <> 'All' then
             ADOQuery2.SQL.Add(' and ket ='+QuotedStr(cmbpanggil.Text) );

         ADOQuery2.SQL.Add(' Order By Tgl,Lantai,C3') ;

           ADOQuery2.Open;
          RvProject2.ProjectFile:=(ExtractFilePath(Application.exename)+'\project2.rav');
          RvProject2.Execute;

end;

procedure TfrmPath.Button3Click(Sender: TObject);
var strconn :string;T:TStringList;
begin
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := TA1;
          ADOQuery2.SQL.Add(' where Tgl >='+ FormatDateTime('yyyymmdd',dtpdari.Date));
          ADOQuery2.SQL.Add(' and Tgl <='+ FormatDateTime('yyyymmdd',dtpsampai.Date));
          if Quotedstr(CMBLANTAI.Text) <> 'All' then
             ADOQuery2.SQL.Add(' and Lantai ='+Quotedstr(CMBLANTAI.Text) );
          if cmbkamar.Text <> 'All' then
             ADOQuery2.SQL.Add(' and c3 ='+QuotedStr(cmbkamar.Text) );
          if cmbpanggil.Text <> 'All' then
             ADOQuery2.SQL.Add(' and ket ='+QuotedStr(cmbpanggil.Text) );

         ADOQuery2.SQL.Add(' Order By ket,tgl,lantai,c3') ;

           ADOQuery2.Open;
          RvProject3.ProjectFile:=(ExtractFilePath(Application.exename)+'\project3.rav');
          RvProject3.Execute;

end;


procedure TfrmPath.Button4Click(Sender: TObject);
var strconn,fn :string;T:TStringList;

begin
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := TA1;
          ADOQuery2.SQL.Add(' where Tgl >='+ FormatDateTime('yyyymmdd',dtpdari.Date));
          ADOQuery2.SQL.Add(' and Tgl <='+ FormatDateTime('yyyymmdd',dtpsampai.Date));
          if CMBLANTAI.Text <> 'All' then
             ADOQuery2.SQL.Add(' and Lantai ='+Quotedstr(CMBLANTAI.Text) );
          if cmbkamar.Text <> 'All' then
             ADOQuery2.SQL.Add(' and c3 ='+QuotedStr(cmbkamar.Text) );
          if cmbpanggil.Text <> 'All' then
             ADOQuery2.SQL.Add(' and ket ='+QuotedStr(cmbpanggil.Text) );

         ADOQuery2.SQL.Add(' Order By Tgl,Lantai') ;

           ADOQuery2.Open;
           SaveDialog1.Execute;
           fn:=SaveDialog1.FileName;
           if lowercase(ExtractFileExt(FN))<>'.xls' then
              fn:=fn+'.xls';
           frmUtama.ExportToExcel(DBGLantai,fn);
end;



procedure TfrmPath.Button5Click(Sender: TObject);
var strconn,fn :string;T:TStringList;
begin
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := TA1;
          ADOQuery2.SQL.Add(' where Tgl >='+ FormatDateTime('yyyymmdd',dtpdari.Date));
          ADOQuery2.SQL.Add(' and Tgl <='+ FormatDateTime('yyyymmdd',dtpsampai.Date));
          if CMBLANTAI.Text <> 'All' then
             ADOQuery2.SQL.Add(' and Lantai ='+Quotedstr(CMBLANTAI.Text) );
          if cmbkamar.Text <> 'All' then
             ADOQuery2.SQL.Add(' and c3 ='+QuotedStr(cmbkamar.Text) );
          if cmbpanggil.Text <> 'All' then
             ADOQuery2.SQL.Add(' and ket ='+QuotedStr(cmbpanggil.Text) );

         ADOQuery2.SQL.Add(' Order By Tgl,Lantai,C3') ;

          ADOQuery2.Open;
           SaveDialog1.Execute;
           fn:=SaveDialog1.FileName;
           if lowercase(ExtractFileExt(FN))<>'.xls' then
              fn:=fn+'.xls';
           frmUtama.ExportToExcel(DBGrid1,fn);
end;
procedure TfrmPath.Button6Click(Sender: TObject);
var strconn,FN :string;T:TStringList;
begin
   T := TStringList.Create;
   try
     frmUtama.loadFilecsv(frmUtama.Datapath,T);
   finally
     t.Free;
   end;

          strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.exename)+'\'+';Extended Properties="text;HDR=Yes;FMT=Delimited";Persist Security Info=False';
          AdoConnection1.Connected:=False;
          AdoConnection1.ConnectionString:=strConn;
          AdoConnection1.Open;

          ADOQuery2.Close;
          ADOQuery2.SQL.Text := TA1;
          ADOQuery2.SQL.Add(' where Tgl >='+ FormatDateTime('yyyymmdd',dtpdari.Date));
          ADOQuery2.SQL.Add(' and Tgl <='+ FormatDateTime('yyyymmdd',dtpsampai.Date));
          if Quotedstr(CMBLANTAI.Text) <> 'All' then
             ADOQuery2.SQL.Add(' and Lantai ='+Quotedstr(CMBLANTAI.Text) );
          if cmbkamar.Text <> 'All' then
             ADOQuery2.SQL.Add(' and c3 ='+QuotedStr(cmbkamar.Text) );
          if cmbpanggil.Text <> 'All' then
             ADOQuery2.SQL.Add(' and ket ='+QuotedStr(cmbpanggil.Text) );

         ADOQuery2.SQL.Add(' Order By ket,tgl,lantai,c3') ;
          ADOQuery2.Open;
           SaveDialog1.Execute;
           fn:=SaveDialog1.FileName;
           if lowercase(ExtractFileExt(FN))<>'.xls' then
              fn:=fn+'.xls';
           frmUtama.ExportToExcel(DBGrid1,fn);

end;

end.
