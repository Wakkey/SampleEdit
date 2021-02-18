unit func;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, dialogs;

var
  dummy : integer;//あとで消す

  procedure Boot;
  procedure Edit_New;
  function Edit_Open: Boolean;

implementation

uses main;

procedure Boot;
begin

  with EditForm do begin

    Caption := TitleName;

    isChange := False;

  end;

end;

function Check_Change: Boolean;
begin
  with EditForm do begin
    if isChange then begin
      //保存を呼ぶ
      //保存がキャンセルされたらTrueを返す
      Check_Change := true;
    end else begin
      Check_Change := False;
    end;
  end;
end;

procedure Edit_New;
begin

  with EditForm do begin

    if Check_Change then
      exit;

    Edit.Clear;

  end;
end;

function Edit_Open: Boolean;
var
  s : string;
begin

  with EditForm do begin

    if Check_Change then
      exit;

    if not OpenDialog1.Execute then
      exit;

    s := OpenDialog1.FileName;

    try

      Edit.Lines.LoadFromFile( s );

    except

      ShowMessage(
        '「' + s + '」は開けません'
      );

    end;
  end;
end;

end.

