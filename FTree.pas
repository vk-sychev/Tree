{ Описать процедуру или функцию, которая определяет число вхождений заданного
 элемента в дерево. }
unit FTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ActnList, ImgList, StdCtrls, ExtCtrls, UTree,
  Spin;

type
  TFMain = class(TForm)
    tv: TTreeView;
    lblSize: TLabel;
    seSize: TSpinEdit;
    btnClear: TButton;
    pnlMain: TPanel;
    lblCreate: TLabel;
    btnRandom: TButton;
    lblIorR: TLabel;
    btnI: TButton;
    btnR: TButton;
    lblNumber: TLabel;
    seNumber: TSpinEdit;
    Label1: TLabel;
    edtRes: TEdit;
    pnl1: TPanel;
    pnl2: TPanel;
    procedure btnRandomClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure seSizeChange(Sender: TObject);
    procedure seNumberChange(Sender: TObject);
    procedure btnIClick(Sender: TObject);
    procedure btnRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;
  A:TTree;
  IsCreated: boolean;

implementation

{$R *.dfm}

{ Создание формы }
procedure TFMain.FormCreate(Sender: TObject);
begin
  IsCreated:=False;
end;

{ При нажатии на кнопку создать рандомную }
procedure TFMain.btnRandomClick(Sender: TObject);
begin
  A:=TTree.BuildRandom(seSize.Value);
  A.View(TV);
  IsCreated:=True;
end;

{При нажатии на кнопку очистить }
procedure TFMain.btnClearClick(Sender: TObject);
begin
  TV.Items.Clear;
  edtRes.Text:='';
  A.Destroy;
  IsCreated:=False;
end;

{ При изменении размера дерева}
procedure TFMain.seSizeChange(Sender: TObject);
begin
  if IsCreated then
    btnClear.Click;
end;

{ При изменении числа}
procedure TFMain.seNumberChange(Sender: TObject);
begin
  edtRes.Text:='';
end;


{ При нажатии на кнопку итеративного решения}
procedure TFMain.btnIClick(Sender: TObject);
begin
  edtRes.Text:=IntToStr(A.CountI(seNumber.Value));
end;

{ При нажатии на кнопку  рекурсивного решения}
procedure TFMain.btnRClick(Sender: TObject);
begin
  edtRes.Text:=IntToStr(A.CountR(seNumber.Value));
end;

end.
