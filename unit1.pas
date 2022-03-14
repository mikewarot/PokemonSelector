unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    TrackBar1: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Append(Edit1.Text + ' ' + Trackbar1.Position.ToString);
end;

end.

