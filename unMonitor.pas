unit unMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,unutama, ExtCtrls, Grids,MMSystem;

type
  Tfrmmonitor = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SgCall: TStringGrid;
    LBJAM: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    LBRUANG1: TLabel;
    LBLANTAI1: TLabel;
    LBKET1: TLabel;
    Panel2: TPanel;
    LBRUANG2: TLabel;
    LBLANTAI2: TLabel;
    LBKET2: TLabel;
    Panel3: TPanel;
    LBRUANG3: TLabel;
    LBLANTAI3: TLabel;
    LBKET3: TLabel;
    Panel4: TPanel;
    LBRUANG4: TLabel;
    LBLANTAI4: TLabel;
    LBKET4: TLabel;
    Panel5: TPanel;
    LBRUANG5: TLabel;
    LBLANTAI5: TLabel;
    LBKET5: TLabel;
    Panel6: TPanel;
    LBRUANG6: TLabel;
    LBLANTAI6: TLabel;
    LBKET6: TLabel;
    Panel7: TPanel;
    LBRUANG7: TLabel;
    LBLANTAI7: TLabel;
    LBKET7: TLabel;
    Panel8: TPanel;
    LBRUANG8: TLabel;
    LBLANTAI8: TLabel;
    LBKET8: TLabel;
    Panel9: TPanel;
    LBRUANG9: TLabel;
    LBLANTAI9: TLabel;
    LBKET9: TLabel;
    Panel10: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Timer2: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public

     j:integer;

   S,S1,S2 :string;
   procedure loadCall;
    { Public declarations }
  end;

var
  frmmonitor: Tfrmmonitor;
   SL :TStringList;
implementation

uses StrUtils;

{$R *.dfm}

procedure Tfrmmonitor.FormActivate(Sender: TObject);
begin
  Timer1.Enabled:= true;
  Timer2.Enabled:= true;


end;

procedure Tfrmmonitor.Timer1Timer(Sender: TObject);
begin
   frmUtama.FilePath := 'TH_NCCALLLOG_'+FormatDateTime('ddmmyyyy',date)+'.data';
    frmUtama.loadFile(frmUtama.Datapath,SL);
    j:=-1;
    if SL.Text <> '' then
      loadCall;

end;

procedure Tfrmmonitor.FormCreate(Sender: TObject);
begin
 SL:=TStringList.Create;
 SgCall.Cells[0,0]:=  'Jam';
 SgCall.Cells[1,0]:=  'Kamar';
SgCall.Cells[2,0]:=  'Lantai';
SgCall.Cells[3,0]:=  'Jenis Panggilan';
SgCall.Cells[4,0]:=  'Status';
Timer1.Interval := frmUtama.RefreshTime;

end;

procedure Tfrmmonitor.loadCall;
var  SLi:TStringList;i,k,X:integer;
begin
   SLi := TStringList.Create;
   SgCall.RowCount := SL.Count+1;
   For i:= SL.Count-1 DOWNto 0  do
   begin
       SLi.DelimitedText:= SL[i];
       SLi.Delimiter :=',';
       SgCall.Cells[0,SL.Count-i]:=SLi[0];
       SgCall.Cells[1,SL.Count-i]:= StringReplace(SLi[2],'-CB','',[]);
       SgCall.Cells[2,SL.Count-i]:=SLi[2][1];
       if RightStr(SLi[2],2)='CB' then
         SgCall.Cells[3,SL.Count-i]:='Code Blue'
       else
       if SLi[8] = '1' then
         SgCall.Cells[3,SL.Count-i]:='Bathroom Call'
       else
         SgCall.Cells[3,SL.Count-i]:='Nurse Call';
      if sli[4] = '' then
         SgCall.Cells[4,SL.Count-i]:='Call'
       else
         SgCall.Cells[4,SL.Count-i]:='Answered';


   end;

 for k :=1 to 9 do
 begin

  TLabel(Findcomponent('LBRUANG'+inttostr(K))).Caption := '-';
  TLabel(Findcomponent('LBLANTAI'+inttostr(K))).Caption := '-';
  TLabel(Findcomponent('LBKET'+inttostr(K))).Caption := '-';

 end;

 x:=-1;
for k :=1 to 9 do
begin


   For i:= j+1 to SL.Count-1 do
   begin
      SLi.DelimitedText:= SL[i];
      SLi.Delimiter :=',';
     if sli[4] = '' then
     begin
         j:=i;
         break;
     end;
   end;



if (j <> -1) AND (X<>J) then
begin
  X:=J;

   SLi.DelimitedText:= SL[J];
   SLi.Delimiter :=',';


  if sli[4] = '' then
  begin

    TLabel(Findcomponent('LBLantai'+inttostr(K))).Caption := StringReplace(SLi[2],'-CB','',[]);
    TLabel(Findcomponent('LbRuang'+inttostr(K))).Caption := SLi[2][1];
       if RightStr(SLi[2],2)='CB' then
       begin

        TLabel(Findcomponent('LBket'+inttostr(K))).Caption := 'Code Blue';
        TLabel(Findcomponent('LBket'+inttostr(K))).Font.Color:=clBlue;
       end
       else

       if SLi[8] = '1' then
       begin
        TLabel(Findcomponent('LBket'+inttostr(K))).Caption := 'Bathroom Call';
        TLabel(Findcomponent('LBket'+inttostr(K))).Font.Color:=clRed;
       end
       else
       begin
          TLabel(Findcomponent('LBket'+inttostr(K))).Caption := 'Nurse Call';
        TLabel(Findcomponent('LBket'+inttostr(K))).Font.Color:=clBlack;
       end;
  end;
   S:=sli.Text;
END;



end;

   if fileexists(ExtractFilePath(application.exename)+'phone.wav')
   then
   begin
   IF (LBRUANG4.Caption <> '-')  OR (LBRUANG3.Caption <> '-')  OR (LBRUANG1.Caption <> '-') OR (LBRUANG2.Caption <> '-') OR
    (LBRUANG5.Caption <> '-')  OR (LBRUANG6.Caption <> '-')  OR (LBRUANG7.Caption <> '-') OR (LBRUANG8.Caption <> '-')
    OR (LBRUANG9.Caption <> '-')then
      sndPlaySound( PAnsichar(ExtractFilePath(application.exename)+'phone.wav'),
    SND_NODEFAULT );
   end;



   S2:=sli.Text;

   SLi.Free;

end;

procedure Tfrmmonitor.BitBtn1Click(Sender: TObject);
begin
   Timer1.Enabled:= false;
   close;
end;

procedure Tfrmmonitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=CAFREE;
end;

procedure Tfrmmonitor.Timer2Timer(Sender: TObject);
begin
    LBJAM.Caption :=FormatDateTime('DD/MM/YYYY',DATE)
    +' '+ FormatDateTime('hh:nn:ss',time);


end;

end.
