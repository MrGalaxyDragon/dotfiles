let
  username = "tom";
  displayname = "Tom";
in
{
  inherit
    username
    displayname
    ;

  git.name = displayname;
  git.email = "tom.weelborg@gmail.com";

  privateVariablesPath = /etc/nixos/dotfiles/variables.private.nix;
  vpnDir = /home/${username}/vpn;
}