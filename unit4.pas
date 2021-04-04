unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LCLTranslator;

type

  { TForm_about }

  TForm_about = class(TForm)
    Label1: TLabel;
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form_about: TForm_about;

implementation

{$R *.lfm}

{ TForm_about }

procedure TForm_about.Label1Click(Sender: TObject);
begin

end;

end.

