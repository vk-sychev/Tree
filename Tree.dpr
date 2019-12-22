program Tree;

uses
  Forms,
  FTree in 'FTree.pas' {FMain},
  UTree in 'UTree.pas',
  UNode in 'UNode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
