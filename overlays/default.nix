{ ... }@inputs:
{
  nixpkgs.overlays = [
    inputs.firefox-addons.outputs.overlays.default
    inputs.nix-vscode-extensions.overlays.default

    (import ./arcmenu.nix)
    (import ./jaspersoft-studio.nix)
    (import ./lib.nix)
    (import ./makemkv-2026-08.nix)
    (import ./requestly-firefox-addon.nix)
    (import ./soapui.nix)
  ];
}
