program SotEstoque;

uses
  Forms,
  uPadraoCadastro in 'uPadraoCadastro.pas' {frmPadraoCadastro},
  uDM in 'uDM.pas' {dm: TDataModule},
  uPrincipal in 'uPrincipal.pas' {frmMenuPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
