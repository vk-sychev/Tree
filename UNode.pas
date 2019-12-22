{ ������ � ��������� ���� ������ }
unit UNode;

interface

uses
  ComCtrls, SysUtils, Math;

const
  { ���������� ��������� ������� }
  MinElem = 0;
  { ����������� ��������� ������� }
  MaxElem = 100;

type
  { ��� ������� ������ }
  TElem = MinElem..MaxElem;
  { ��� "��������� �� ���� ������"}
  TPtr = ^TNode;
  { ����� ���� ������ }
  TNode = class
  private
    { �������������� ����� }
    FInf: TElem;
    { ��������� �� ����� � ������ ���������� }
    FLeft, FRight: TNode;
  public
    { �������� ���� ������ }
    constructor Create(el : TElem = MinElem);
    { ���������� ���� ������ }
    destructor Destroy; override;
    { ��������� �������� }
    constructor BuildRandom(n: integer);
    { ����� ������ }
    procedure View(TV:TTreeView; ParentNode: TTreeNode);
    // ����� �������� el � ������
    function CountNumber(el: TElem): integer;

    property Info : Telem read FInf;
    property Left : TNode read FLeft write FLeft;
    property Right : TNode read FRight write FRight;
  end;

implementation

{ �������� ���� ������ }
constructor TNode.Create(el:TElem = MinElem);
begin
  inherited Create;
  FInf:= el;
  FLeft:= nil;
  FRight:= nil;
end;

{ ���������� ���� ������ }
destructor TNode.Destroy;
begin
  FreeAndNil(FLeft);
  FreeAndNil(FRight);
end;

{ ��������� �������� }
constructor TNode.BuildRandom(n: integer);
var
  nl: integer;
begin
  Create(Random(10));
  n:= n - 1;
  if n>0 then
    begin
      nl:= Random(n+1);
      if nl>0 then
        FLeft:= TNode.BuildRandom(nl);
      nl:=n - nl;
      if nl>0 then
        FRight:= TNode.BuildRandom(nl);
    end;
end;

{ ����� ������ }
procedure TNode.View(TV: TTreeView; ParentNode: TTreeNode);
 var node: TTreeNode;
begin
  if Self = nil then
    TV.Items.AddChild(ParentNode, 'x')
  else
    begin
      node:= TV.Items.AddChild(ParentNode, IntToStr(FInf));
      if (FLeft<>nil) or(FRight<>nil) then
        begin
          FLeft.View(TV, node);
          FRight.View(TV, node);
        end;
    end;
end;

// ����� �������� el � ������
function TNode.CountNumber(el: TElem): integer;
begin
  Result:=ord(self.FInf = el);
  if Fleft<>nil then
    Result:=Result+FLeft.CountNumber(el);
  if Fright<>nil then
    Result:=Result+FRight.CountNumber(el);
end;

end.

