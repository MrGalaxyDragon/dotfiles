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

  vpnDir = /home/${username}/vpn;
}