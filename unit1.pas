unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, LCLTranslator,
  Buttons, ExtCtrls;

type

  { TForm_base }

  TForm_base = class(TForm)
    Button_dot: TSpeedButton;
    Button_changing_sign: TSpeedButton;
    Button_ce: TSpeedButton;
    Button_c: TSpeedButton;
    Button_del: TSpeedButton;
    Button_division: TSpeedButton;
    Button_multipl: TSpeedButton;
    Button_diff: TSpeedButton;
    Button_sum: TSpeedButton;
    Button_equally: TSpeedButton;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Menu_theme_2_1: TMenuItem;
    Menu_theme_2_2: TMenuItem;
    Menu_theme_1_3: TMenuItem;
    Menu_theme_1_1: TMenuItem;
    Menu_theme_1_2: TMenuItem;
    Menu_theme_2: TMenuItem;
    Menu_theme_1: TMenuItem;
    Menu_themes: TMenuItem;
    Menu_base: TMenuItem;
    Menu_engin: TMenuItem;
    Menu_rus: TMenuItem;
    Menu_eng: TMenuItem;
    Menu_1_calc: TMenuItem;
    Menu_2_mode: TMenuItem;
    Menu_3_help: TMenuItem;
    Menu_1_1_copy: TMenuItem;
    Menu_1_2_paste: TMenuItem;
    Menu_2_1_base: TMenuItem;
    Menu_2_2_lang: TMenuItem;
    Menu_3_1_help: TMenuItem;
    Menu_3_2_about: TMenuItem;
    Button_0: TSpeedButton;
    Button_2: TSpeedButton;
    Button_3: TSpeedButton;
    Button_4: TSpeedButton;
    Button_5: TSpeedButton;
    Button_6: TSpeedButton;
    Button_7: TSpeedButton;
    Button_8: TSpeedButton;
    Button_9: TSpeedButton;
    Button_percent: TSpeedButton;
    Button_1: TSpeedButton;
    Button_squaring: TSpeedButton;
    Button_sqrt: TSpeedButton;
    procedure ButtonClick(Sender: TObject);
    procedure Button_cClick(Sender: TObject);
    procedure Button_ceClick(Sender: TObject);
    procedure Button_changing_signClick(Sender: TObject);
    procedure Button_delClick(Sender: TObject);
    procedure Button_dotClick(Sender: TObject);
    procedure Button_equallyClick(Sender: TObject);
    procedure Button_percentClick(Sender: TObject);
    procedure Button_sqrtClick(Sender: TObject);
    procedure Button_squaringClick(Sender: TObject);
    procedure Button_sumClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Menu_1_1_copyClick(Sender: TObject);
    procedure Menu_1_2_pasteClick(Sender: TObject);
    procedure Menu_3_1_helpClick(Sender: TObject);
    procedure Menu_3_2_aboutClick(Sender: TObject);
    procedure Menu_engClick(Sender: TObject);
    procedure Menu_enginClick(Sender: TObject);
    procedure Menu_rusClick(Sender: TObject);
    procedure Menu_theme_1_1Click(Sender: TObject);
    procedure Menu_theme_1_2Click(Sender: TObject);
    procedure Menu_theme_1_3Click(Sender: TObject);
    procedure Menu_theme_2_1Click(Sender: TObject);
    procedure Menu_theme_2_2Click(Sender: TObject);
  private

  public

  end;

var
  Form_base: TForm_base;
  x,y,z,a:real;
  sign:string;

implementation
{$R *.lfm}
 uses Unit2, Unit4, Unit3;
{ TForm_base }

procedure TForm_base.FormCreate(Sender: TObject);
begin

end;

procedure TForm_base.Image1Click(Sender: TObject);
begin

end;


procedure TForm_base.Menu_1_1_copyClick(Sender: TObject);
begin
  Edit1.SelectAll;
  Edit1.CopyToClipboard;
end;

procedure TForm_base.Menu_1_2_pasteClick(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
end;

procedure TForm_base.Menu_3_1_helpClick(Sender: TObject);
begin
  Unit3.Form_help.show;
end;

procedure TForm_base.Menu_3_2_aboutClick(Sender: TObject);
begin
  Unit4.Form_about.show;
end;

procedure TForm_base.Menu_engClick(Sender: TObject);
begin
  SetDefaultLang('en','lang');
end;



procedure TForm_base.Menu_enginClick(Sender: TObject);
begin
  Form_base.Hide;
  Form_about.Hide;
  Form_help.Hide;
  Form_engin.Image1.Picture:=Form_base.Image1.Picture;
  Form_engin.Show;
  //переход кнопок
  Form_engin.Button_percent.Flat:=Form_base.Button_percent.Flat;   //Button_percent
  Form_engin.Button_percent.Transparent:= Form_base.Button_percent.Transparent;
  Form_engin.Button_percent.Color:=Form_base.Button_percent.Color;
  Form_engin.Button_squaring.Flat:= Form_base.Button_squaring.Flat; //Button_squaring
  Form_engin.Button_squaring.Transparent:= Form_base.Button_squaring.Transparent;
  Form_engin.Button_squaring.Color:= Form_base.Button_squaring.Color;
  Form_engin.Button_0.Flat:= Form_base.Button_0.Flat;  //Button_0
  Form_engin.Button_0.Transparent:= Form_base.Button_0.Transparent;
  Form_engin.Button_0.Color:= Form_base.Button_0.Color;
  Form_engin.Button_1.Flat:= Form_base.Button_1.Flat;//Button_1
  Form_engin.Button_1.Transparent:= Form_base.Button_1.Transparent;
  Form_engin.Button_1.Color:= Form_base.Button_1.Color;
  Form_engin.Button_2.Flat:= Form_base.Button_2.Flat;//Button_2
  Form_engin.Button_2.Transparent:= Form_base.Button_2.Transparent;
  Form_engin.Button_2.Color:= Form_base.Button_2.Color;
  Form_engin.Button_3.Flat:= Form_base.Button_3.Flat;//Button_3
  Form_engin.Button_3.Transparent:= Form_base.Button_3.Transparent;
  Form_engin.Button_3.Color:= Form_base.Button_3.Color;
  Form_engin.Button_4.Flat:= Form_base.Button_4.Flat;//Button_4
  Form_engin.Button_4.Transparent:= Form_base.Button_4.Transparent;
  Form_engin.Button_4.Color:= Form_base.Button_4.Color;
  Form_engin.Button_5.Flat:= Form_base.Button_5.Flat;//Button_5
  Form_engin.Button_5.Transparent:= Form_base.Button_5.Transparent;
  Form_engin.Button_5.Color:= Form_base.Button_5.Color;
  Form_engin.Button_6.Flat:= Form_base.Button_6.Flat;//Button_6
  Form_engin.Button_6.Transparent:= Form_base.Button_6.Transparent;
  Form_engin.Button_6.Color:= Form_base.Button_6.Color;
  Form_engin.Button_7.Flat:= Form_base.Button_7.Flat;//Button_7
  Form_engin.Button_7.Transparent:= Form_base.Button_7.Transparent;
  Form_engin.Button_7.Color:= Form_base.Button_7.Color;
  Form_engin.Button_8.Flat:= Form_base.Button_8.Flat;//Button_8
  Form_engin.Button_8.Transparent:= Form_base.Button_8.Transparent;
  Form_engin.Button_8.Color:= Form_base.Button_8.Color;
  Form_engin.Button_9.Flat:= Form_base.Button_9.Flat;//Button_9
  Form_engin.Button_9.Transparent:= Form_base.Button_9.Transparent;
  Form_engin.Button_9.Color:= Form_base.Button_9.Color;
  Form_engin.Button_sqrt.Flat:= Form_base.Button_sqrt.Flat;//Button_sqrt
  Form_engin.Button_sqrt.Transparent:= Form_base.Button_sqrt.Transparent;
  Form_engin.Button_sqrt.Color:= Form_base.Button_sqrt.Color;
  Form_engin.Button_changing_sign.Flat:= Form_base.Button_changing_sign.Flat;//Button_changing_sign
  Form_engin.Button_changing_sign.Transparent:= Form_base.Button_changing_sign.Transparent;
  Form_engin.Button_changing_sign.Color:= Form_base.Button_changing_sign.Color;
  Form_engin.Button_dot.Flat:= Form_base.Button_dot.Flat;//Button_dot
  Form_engin.Button_dot.Transparent:= Form_base.Button_dot.Transparent;
  Form_engin.Button_dot.Color:= Form_base.Button_dot.Color;
  Form_engin.Button_ce.Flat:= Form_base.Button_ce.Flat;//Button_ce
  Form_engin.Button_ce.Transparent:= Form_base.Button_ce.Transparent;
  Form_engin.Button_ce.Color:= Form_base.Button_ce.Color;
  Form_engin.Button_c.Flat:= Form_base.Button_c.Flat;//Button_c
  Form_engin.Button_c.Transparent:= Form_base.Button_c.Transparent;
  Form_engin.Button_c.Color:= Form_base.Button_c.Color;
  Form_engin.Button_del.Flat:= Form_base.Button_del.Flat;//Button_del
  Form_engin.Button_del.Transparent:= Form_base.Button_del.Transparent;
  Form_engin.Button_del.Color:= Form_base.Button_del.Color;
  Form_engin.Button_division.Flat:= Form_base.Button_division.Flat;//Button_division
  Form_engin.Button_division.Transparent:= Form_base.Button_division.Transparent;
  Form_engin.Button_division.Color:= Form_base.Button_division.Color;
  Form_engin.Button_multipl.Flat:= Form_base.Button_multipl.Flat;//Button_multipl
  Form_engin.Button_multipl.Transparent:= Form_base.Button_multipl.Transparent;
  Form_engin.Button_multipl.Color:= Form_base.Button_multipl.Color;
  Form_engin.Button_diff.Flat:= Form_base.Button_diff.Flat;//Button_diff
  Form_engin.Button_diff.Transparent:= Form_base.Button_diff.Transparent;
  Form_engin.Button_diff.Color:= Form_base.Button_diff.Color;
  Form_engin.Button_sum.Flat:= Form_base.Button_sum.Flat;//Button_sum
  Form_engin.Button_sum.Transparent:= Form_base.Button_sum.Transparent;
  Form_engin.Button_sum.Color:= Form_base.Button_sum.Color;
  Form_engin.Button_equally.Flat:= Form_base.Button_equally.Flat;//Button_equally
  Form_engin.Button_equally.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_equally.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_abs.Flat:= Form_base.Button_equally.Flat;//Button_abs
  Form_engin.Button_abs.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_abs.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_ln_e.Flat:= Form_base.Button_equally.Flat;//Button_ln_e
  Form_engin.Button_ln_e.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_ln_e.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_ln_10.Flat:= Form_base.Button_equally.Flat;//Button_ln_10
  Form_engin.Button_ln_10.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_ln_10.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_factorial.Flat:= Form_base.Button_equally.Flat;//Button_factorial
  Form_engin.Button_factorial.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_factorial.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_stepen.Flat:= Form_base.Button_equally.Flat;//Button_stepen
  Form_engin.Button_stepen.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_stepen.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_cos.Flat:= Form_base.Button_equally.Flat;//Button_cos
  Form_engin.Button_cos.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_cos.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_sin.Flat:= Form_base.Button_equally.Flat;//Button_sin
  Form_engin.Button_sin.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_sin.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_tg.Flat:= Form_base.Button_equally.Flat;//Button_tg
  Form_engin.Button_tg.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_tg.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_ctg.Flat:= Form_base.Button_equally.Flat;//Button_ctg
  Form_engin.Button_ctg.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_ctg.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_s2.Flat:= Form_base.Button_equally.Flat;//Button_s2
  Form_engin.Button_s2.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_s2.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_s3.Flat:= Form_base.Button_equally.Flat;//Button_s3
  Form_engin.Button_s3.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_s3.Color:= Form_base.Button_equally.Color;
  Form_engin.Button_s10.Flat:= Form_base.Button_equally.Flat;//Button_s10
  Form_engin.Button_s10.Transparent:= Form_base.Button_equally.Transparent;
  Form_engin.Button_s10.Color:= Form_base.Button_equally.Color;
end;

procedure TForm_base.Menu_rusClick(Sender: TObject);
begin
  SetDefaultLang('ru','lang');
end;

procedure TForm_base.Menu_theme_1_1Click(Sender: TObject); //светлая тема фона осн.окна
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\light.jpg');
end;

procedure TForm_base.Menu_theme_1_2Click(Sender: TObject); //темная тема фона осн.окна
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\dark.jpg');
end;

procedure TForm_base.Menu_theme_1_3Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\children.jpg');
end;

procedure TForm_base.Menu_theme_2_1Click(Sender: TObject);  //обычная тема для кнопок
begin
  Button_percent.Flat:= False;   //Button_percent
  Button_percent.Transparent:=True;
  Button_squaring.Flat:= False; //Button_squaring
  Button_squaring.Transparent:=True;
  Button_0.Flat:= False;  //Button_0
  Button_0.Transparent:=True;
  Button_1.Flat:= False;    //Button_1
  Button_1.Transparent:=True;
  Button_2.Flat:= False;    //Button_2
  Button_2.Transparent:=True;
  Button_3.Flat:= False;     //Button_3
  Button_3.Transparent:=True;
  Button_4.Flat:= False;    //Button_4
  Button_4.Transparent:=True;
  Button_5.Flat:= False;     //Button_5
  Button_5.Transparent:=True;
  Button_6.Flat:= False;     //Button_6
  Button_6.Transparent:=True;
  Button_7.Flat:= False;     //Button_7
  Button_7.Transparent:=True;
  Button_8.Flat:= False;     //Button_8
  Button_8.Transparent:=True;
  Button_9.Flat:= False;     //Button_9
  Button_9.Transparent:=True;
  Button_sqrt.Flat:= False;     //Button_sqrt
  Button_sqrt.Transparent:=True;
  Button_changing_sign.Flat:= False;     //Button_changing_sign
  Button_changing_sign.Transparent:=True;
  Button_dot.Flat:= False;     //Button_dot
  Button_dot.Transparent:=True;
  Button_ce.Flat:= False;     //Button_ce
  Button_ce.Transparent:=True;
  Button_c.Flat:= False;     //Button_c
  Button_c.Transparent:=True;
  Button_del.Flat:= False;     //Button_del
  Button_del.Transparent:=True;
  Button_division.Flat:= False;     //Button_division
  Button_division.Transparent:=True;
  Button_multipl.Flat:= False;     //Button_multipl
  Button_multipl.Transparent:=True;
  Button_diff.Flat:= False;     //Button_diff
  Button_diff.Transparent:=True;
  Button_sum.Flat:= False;     //Button_sum
  Button_sum.Transparent:=True;
  Button_equally.Flat:= False;     //Button_equally
  Button_equally.Transparent:=True;
end;

procedure TForm_base.Menu_theme_2_2Click(Sender: TObject); //темная тема для кнопок
begin
  Button_percent.Flat:= True;   //Button_percent
  Button_percent.Transparent:=False;
  Button_percent.Color:=clActiveCaption;
  Button_squaring.Flat:= True; //Button_squaring
  Button_squaring.Transparent:=False;
  Button_squaring.Color:=clActiveCaption;
  Button_0.Flat:= True;  //Button_0
  Button_0.Transparent:=False;
  Button_0.Color:=clActiveCaption;
  Button_1.Flat:= True;    //Button_1
  Button_1.Transparent:=False;
  Button_1.Color:=clActiveCaption;
  Button_2.Flat:= True;    //Button_2
  Button_2.Transparent:=False;
  Button_2.Color:=clActiveCaption;
  Button_3.Flat:= True;     //Button_3
  Button_3.Transparent:=False;
  Button_3.Color:=clActiveCaption;
  Button_4.Flat:= True;    //Button_4
  Button_4.Transparent:=False;
  Button_4.Color:=clActiveCaption;
  Button_5.Flat:= True;     //Button_5
  Button_5.Transparent:=False;
  Button_5.Color:=clActiveCaption;
  Button_6.Flat:= True;     //Button_6
  Button_6.Transparent:=False;
  Button_6.Color:=clActiveCaption;
  Button_7.Flat:= True;     //Button_7
  Button_7.Transparent:=False;
  Button_7.Color:=clActiveCaption;
  Button_8.Flat:= True;     //Button_8
  Button_8.Transparent:=False;
  Button_8.Color:=clActiveCaption;
  Button_9.Flat:= True;     //Button_9
  Button_9.Transparent:=False;
  Button_9.Color:=clActiveCaption;
  Button_sqrt.Flat:= True;     //Button_sqrt
  Button_sqrt.Transparent:=False;
  Button_sqrt.Color:=clActiveCaption;
  Button_changing_sign.Flat:= True;     //Button_changing_sign
  Button_changing_sign.Transparent:=False;
  Button_changing_sign.Color:=clActiveCaption;
  Button_dot.Flat:= True;     //Button_dot
  Button_dot.Transparent:=False;
  Button_dot.Color:=clActiveCaption;
  Button_ce.Flat:= True;     //Button_ce
  Button_ce.Transparent:=False;
  Button_ce.Color:=clActiveCaption;
  Button_c.Flat:= True;     //Button_c
  Button_c.Transparent:=False;
  Button_c.Color:=clActiveCaption;
  Button_del.Flat:= True;     //Button_del
  Button_del.Transparent:=False;
  Button_del.Color:=clActiveCaption;
  Button_division.Flat:= True;     //Button_division
  Button_division.Transparent:=False;
  Button_division.Color:=clActiveCaption;
  Button_multipl.Flat:= True;     //Button_multipl
  Button_multipl.Transparent:=False;
  Button_multipl.Color:=clActiveCaption;
  Button_diff.Flat:= True;     //Button_diff
  Button_diff.Transparent:=False;
  Button_diff.Color:=clActiveCaption;
  Button_sum.Flat:= True;     //Button_sum
  Button_sum.Transparent:=False;
  Button_sum.Color:=clActiveCaption;
  Button_equally.Flat:= True;     //Button_equally
  Button_equally.Transparent:=False;
  Button_equally.Color:=clActiveCaption;
end;

procedure TForm_base.ButtonClick(Sender: TObject);    //кнопки цифр
begin
  if Edit1.Text = '0' then Edit1.Text:=(Sender as TSpeedButton).Caption
  else Edit1.Text:=Edit1.Text + (Sender as TSpeedButton).Caption;
  //x:=strtofloat(Edit1.Text);
end;

procedure TForm_base.Button_sumClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                          x:= StrToFloat(Edit1.Text);//забрать первое значение
                          Edit1.Clear;
                          sign:=(Sender as TSpeedButton).Caption;
                        end;
end;

procedure TForm_base.Button_equallyClick(Sender: TObject);
begin
  if Edit1.Text<>'' then begin
                            y:= StrToFloat(Edit1.Text);//забрать второе значение
                            Edit1.Clear;
                            case sign of
                              '+': z:=x+y;
                              '-': z:=x-y;
                              '*': z:=x*y;
                              '/': if y<>0 then z:=x/y else Label1.Caption := 'No';
                            end;
                            Edit1.Text:=FloatToStr(z);
                        end;
end;


procedure TForm_base.Button_percentClick(Sender: TObject);
begin
  y:=strtofloat(Edit1.Text);
  z:=x/100*y;
  Edit1.Text:=floattostr(z);
end;

procedure TForm_base.Button_cClick(Sender: TObject);
begin
  Edit1.Clear;
  x:=0;y:=0;z:=0;
end;

procedure TForm_base.Button_ceClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm_base.Button_changing_signClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=-x;
  Edit1.Text:=floattostr(x);
end;

procedure TForm_base.Button_delClick(Sender: TObject);
var l:byte;
    s:string;
begin
    s:=Edit1.Text;
    l:=length(s);
    delete(s,l,1);
    Edit1.Text:=s;
end;

procedure TForm_base.Button_dotClick(Sender: TObject);
begin
  if pos('.',Edit1.Text)=0 then Edit1.Text:=Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm_base.Button_sqrtClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqrt(x);
  Edit1.Text:=floattostr(x);
end;

procedure TForm_base.Button_squaringClick(Sender: TObject);
begin
  x:=strtofloat(Edit1.Text);
  x:=sqr(x);
  Edit1.Text:=floattostr(x);
end;

end.

