{
  programs = {
    kubeswitch.enable = true;
    bash = {
      enable = true;
      enableCompletion = false;
    };
  };

  nmt.script = ''
    assertFileExists home-files/.bashrc
    assertFileContains home-files/.bashrc \
      '^source /nix/store/[0-9a-z]*-kubeswitch-shell-files/share/kswitch_init.bash$'
    assertFileContains home-files/.bashrc \
      '^source /nix/store/[0-9a-z]*-kubeswitch-shell-files/share/kswitch_completion.bash$'
  '';
}
