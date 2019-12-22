{ ������ � ��������� ������ }
unit UTree;

interface

uses
  ComCtrls, Math, SysUtils, UNode, Contnrs;

type
  TEl = integer;
  { ����� �������� ������ }
  TTree = class
  private
    { ������ ������ }
    FRoot: TNode;
  public
    { �������� ������� ������ }
    constructor Create;
    { ���������� ������ }
    destructor Destroy; override;
    { ��������� ��������� ������ }
    constructor BuildRandom(n: integer);
    { ��������� ������� ������ }
    procedure Clear;
    { ����� ������ }
    procedure View(TV: TTreeView);
    {�����������}
    function CountI (el : TElem) : integer;
    {�����������}
    function CountR (el : TElem) : integer;
  end;

implementation

{ �������� ������� ������ }
constructor TTree.Create;
begin
  FRoot:=nil;
end;

{ ��������� ��������� ������ }
constructor TTree.BuildRandom(n: integer);
begin
  Clear;
  if n>0 then
    FRoot:=TNode.BuildRandom(n);
end;

{ ���������� ������ }
destructor TTree.Destroy;
begin
  Clear;
  inherited;
end;

{ ��������� ������� ������ }
procedure TTree.Clear;
begin
  FreeAndNil(FRoot);
end;

{ ����� ������ }
procedure TTree.View(TV: TTreeView);
begin
  TV.Items.Clear;
  if FRoot<>nil then
    FRoot.View(TV,nil);
  TV.FullExpand;
end;

{ ������� ���������� ��������� ���������� }
function TTree.CountI (el : TElem) : integer;
var
  S: TStack;
  tmp_node: TNode;
begin
  Result:=0;
  if FRoot<>nil then
    begin
      S:=TStack.Create;
      tmp_node:=FRoot;
      repeat
        while tmp_node<>nil do
          begin
            S.Push(tmp_node);
            tmp_node:=tmp_node.Left;
          end;
        tmp_node:=S.Pop;
        if tmp_node.Info=el then Result:=Result+1;
        tmp_node:=tmp_node.Right;
      until (tmp_node=nil) and (S.Count = 0);
      S.Free;
    end;
end;

{ ������� ���������� ��������� ��������� }
function TTree.CountR(el: TElem): integer;
begin
  Result:=0;
  if FRoot<>nil then
    Result:=self.FRoot.CountNumber(el);
end;

end.

