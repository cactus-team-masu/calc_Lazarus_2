program calc;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, Unit3, Unit4
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm_base, Form_base);
  Application.CreateForm(TForm_engin, Form_engin);
  Application.CreateForm(TForm_help, Form_help);
  Application.CreateForm(TForm_about, Form_about);
  Application.Run;
end.

