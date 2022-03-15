unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Memo1: TMemo;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure UpdateMemo1(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.TrackBar1Change(Sender: TObject);
begin

end;

procedure TForm1.UpdateMemo1(Sender: TObject);
var
  total,start : integer;

  procedure AddLine(Name : string; Amount : integer);
  begin
    If (Name <> '') AND (Amount > 0) then
    start := total + 1; total := total + Amount;
    If Amount > 1 then
      Memo1.Append(Name + #9+'''' + Amount.ToString + #9+'''' + start.ToString + '-' + total.tostring)
    else
      If Amount = 1 then
        Memo1.Append(Name + #9+'''' + Amount.ToString+ #9+'''' + start.ToString )
      else
        Memo1.Append(Name);
  end;

begin
  Memo1.Clear;
  total := 0;
  AddLine(Edit1.Text,TrackBar1.Position);
  AddLine(Edit2.Text,TrackBar2.Position);
  AddLine(Edit3.Text,TrackBar3.Position);
  AddLine(Edit4.Text,TrackBar4.Position);
  AddLine(Edit5.Text,TrackBar5.Position);
  AddLine(Edit6.Text,TrackBar6.Position);
  AddLine(Edit7.Text,TrackBar7.Position);
  AddLine(Edit8.Text,TrackBar8.Position);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

