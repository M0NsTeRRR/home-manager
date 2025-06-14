{ lib, ... }:

{
  programs = {
    kubeswitch.enable = true;
    fish.enable = true;
  };

  nmt.script = ''
    assertFileExists home-files/.config/fish/config.fish
    assertFileContains home-files/.config/fish/config.fish \
      '^source /nix/store/[0-9a-z]*-kubeswitch-shell-files/share/kswitch_init.fish$'
    assertFileContains home-files/.config/fish/config.fish \
      '^source /nix/store/[0-9a-z]*-kubeswitch-shell-files/share/kswitch_completion.fish$'
  '';
}
