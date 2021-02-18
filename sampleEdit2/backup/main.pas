unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls, ComCtrls, SynEdit;

type

  { TEditForm }

  TEditForm = class(TForm)
    BTN1: TButton;
    Rep_BTN: TButton;
    Redo_BTN: TButton;
    SelAll_BTN: TButton;
    Cut_BTN: TButton;
    Copy_BTN: TButton;
    Past_BTN: TButton;
    Find_BTN: TButton;
    New_BTN: TButton;
    Opn_BTN: TButton;
    Save_BTN: TButton;
    SaveAs_BTN: TButton;
    Prt_BTN: TButton;
    PrtSet_BTN: TButton;
    Ext_BTN: TButton;
    Splitter1: TSplitter;
    Undo_BTN: TButton;
    Menu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PageControl1: TPageControl;
    Tools: TPanel;
    Edit: TSynEdit;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure BTN1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure New_BTNClick(Sender: TObject);
  private

  public
    isChange : Boolean;
    const
      TitleName = 'SampleEdit';
  end;

var
  EditForm: TEditForm;

implementation

uses func;

{$R *.lfm}

{ TEditForm }

procedure TEditForm.BTN1Click(Sender: TObject);
begin
  if Tools.Width = 26 then begin
    Tools.Width:= 200;
  end else begin
    Tools.Width:= 26;
  end;
end;

procedure TEditForm.FormCreate(Sender: TObject);
begin
  Boot;
end;

procedure TEditForm.MenuItem4Click(Sender: TObject);
begin
  New;
end;

procedure TEditForm.New_BTNClick(Sender: TObject);
begin

end;

end.

