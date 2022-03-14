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
begin
  Memo1.Clear;
  total := 0;
  start := total + 1; total := total + trackbar1.Position;
  Memo1.Append(Edit1.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar1.Position.ToString);
  start := total + 1; total := total + trackbar2.Position;
  Memo1.Append(Edit2.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar2.Position.ToString);
  start := total + 1; total := total + trackbar3.Position;
  Memo1.Append(Edit3.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar3.Position.ToString);
  start := total + 1; total := total + trackbar4.Position;
  Memo1.Append(Edit4.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar4.Position.ToString);
  start := total + 1; total := total + trackbar5.Position;
  Memo1.Append(Edit5.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar5.Position.ToString);
  start := total + 1; total := total + trackbar6.Position;
  Memo1.Append(Edit6.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar6.Position.ToString);
  start := total + 1; total := total + trackbar7.Position;
  Memo1.Append(Edit7.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar7.Position.ToString);
  start := total + 1; total := total + trackbar8.Position;
  Memo1.Append(Edit8.Text + ' ' + start.ToString + '-' + total.tostring + ' '+ Trackbar8.Position.ToString);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

end.

