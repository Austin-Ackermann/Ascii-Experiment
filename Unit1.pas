unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Input: string;
  ArrChar: Array of char;
  Len: integer;
  Let: char;
  Output: string;
  I: integer;
begin
  Output := '';
  Input := Edit1.text;
  Len := Length(Input);
  for I := 1 to Len do
  begin
    Let := upcase(Copy(Input, I, 1)[1]);
    if Let in ['A' .. 'Z'] then
    begin
      Output := Output + Inttostr(Ord(Let)) + ',';
    end
    else if Let In ['0' .. '9'] then
    begin

      if (Let) In ['0' .. '9'] then
      begin
        if Let = '0' then
          Output := Output + ')!'
        else if Let = '1' then
          Output := Output + '!!'
        else if Let = '2' then
          Output := Output + '@!'
        else if Let = '3' then
          Output := Output + '#!'
        else if Let = '4' then
          Output := Output + '$!'
        else if Let = '5' then
          Output := Output + '%!'
        else if Let = '6' then
          Output := Output + '^!'
        else if Let = '7' then
          Output := Output + '&!'
        else if Let = '8' then
          Output := Output + '*!'
        else if Let = '9' then
          Output := Output + '(!';
      end;
      Output := Output + ',';
    end
    else
    begin
      Output := Output + Let + ',';
    end;
  end;
  Memo1.text := (Output);
  Edit1.clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Input, Output: string;
  Let, Inputi: String;
  Num: integer;
  Len, I: integer;
  Placeholder: integer;
  thing: string;
begin
  Output := '';
  Input := Memo1.text;
  Len := Length(Input);

  repeat
    thing := Copy(Input, 1, pos(',', Input) - 1);

    if (thing = ')!') or (thing = '!!') or (thing = '@!') or (thing = '#!') or
      (thing = '$!') or (thing = '%!') or (thing = '^!') or (thing = '&!') or
      (thing = '*!') or (thing = '(!') then
    begin
      if thing = ')!' then
        Output := Output + '0'
      else if thing = '!!' then
        Output := Output + '1'
      else if thing = '@!' then
        Output := Output + '2'
      else if thing = '#!' then
        Output := Output + '3'
      else if thing = '$!' then
        Output := Output + '4'
      else if thing = '%!' then
        Output := Output + '5'
      else if thing = '^!' then
        Output := Output + '6'
      else if thing = '&!' then
        Output := Output + '7'
      else if thing = '*!' then
        Output := Output + '8'
      else if thing = '(!' then
        Output := Output + '9';

      delete(Input, 1, pos(',', Input));
    end
    else if thing[1] in ['0' .. '9'] then
    begin

      if strtoint(thing) in [00 .. 99] then
      begin
        Output := Output + chr(strtoint(thing));

        delete(Input, 1, pos(',', Input));
      end;

    end
    else
    begin
      Output := Output + Copy(Input, 1, 1);
      delete(Input, 1, pos(',', Input));
    end;

  until (Input = '');

  // repeat
  // if Copy(Input, Placeholder, 1)[1] in ['0' .. '9'] then
  // begin
  // Num := strtoint(Copy(Input, 1, 2));
  //
  // delete(Input, 1, 2);
  // end
  // else if uppercase(Copy(Input, Placeholder, 1))[1] in ['!', '@', '#', '$',
  // '%', '^', '&', '*', '(', ')'] then
  // begin
  // Inputi:=Copy(Input, 1, 2);
  // if Inputi = ')!' then
  // Output := Output + '0'
  // else if Inputi = '!!' then
  // Output := Output + '1'
  // else if Inputi = '@!' then
  // Output := Output + '2'
  // else if Inputi = '#!' then
  // Output := Output + '3'
  // else if Inputi = '$!' then
  // Output := Output + '4'
  // else if Inputi = '%!' then
  // Output := Output + '5'
  // else if Inputi = '^!' then
  // Output := Output + '6'
  // else if Inputi = '&!' then
  // Output := Output + '7'
  // else if Inputi = '*!' then
  // Output := Output + '8'
  // else if Inputi = '(!' then
  // Output := Output + '9';
  // delete(Input, 1, 2);
  // end
  // else
  // begin
  // Output := Output + Copy(Input, 1, 1);
  // delete(Input, 1, 1);
  // end;
  // until (Placeholder = Len);
  Edit1.text := Output;
  Memo1.clear;

end;

end.
