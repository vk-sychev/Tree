{ Модуль с описанием дерева }
unit UTree;

interface

uses
  ComCtrls, Math, SysUtils, UNode, Contnrs;

type
  TEl = integer;
  { Класс бинарное дерево }
  TTree = class
  private
    { Корень дерева }
    FRoot: TNode;
  public
    { Создание пустого дерева }
    constructor Create;
    { Разрушение дерева }
    destructor Destroy; override;
    { Построить рандомное дерево }
    constructor BuildRandom(n: integer);
    { Процедура очистки дерева }
    procedure Clear;
    { Обход дерева }
    procedure View(TV: TTreeView);
    {Итеративный}
    function CountI (el : TElem) : integer;
    {Рекурсивный}
    function CountR (el : TElem) : integer;
  end;

implementation

{ Создание пустого дерева }
constructor TTree.Create;
begin
  FRoot:=nil;
end;

{ Построить рандомное дерево }
constructor TTree.BuildRandom(n: integer);
begin
  Clear;
  if n>0 then
    FRoot:=TNode.BuildRandom(n);
end;

{ Разрушение дерева }
destructor TTree.Destroy;
begin
  Clear;
  inherited;
end;

{ Процедура очистки дерева }
procedure TTree.Clear;
begin
  FreeAndNil(FRoot);
end;

{ Обход дерева }
procedure TTree.View(TV: TTreeView);
begin
  TV.Items.Clear;
  if FRoot<>nil then
    FRoot.View(TV,nil);
  TV.FullExpand;
end;

{ Подсчет количества вхождений итеративно }
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

{ Подсчет количества вхождений рекусивно }
function TTree.CountR(el: TElem): integer;
begin
  Result:=0;
  if FRoot<>nil then
    Result:=self.FRoot.CountNumber(el);
end;

end.

