{ config, pkgs, ... }:

{
  imports = [
    ./global
  ];

  home = {
    homeDirectory = "/Users/${config.home.username}";
    packages = with pkgs; [
      # cli/tui
      # gui
      wezterm
    ];
    # Home Manager can also manage your environment variables through
    # 'home.sessionVariables'. These will be explicitly sourced when using a
    # shell provided by Home Manager. If you don't want to manage your shell
    # through Home Manager then you have to manually source 'hm-session-vars.sh'
    # located at either
    #
    #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  /etc/profiles/per-user/eric/etc/profile.d/hm-session-vars.sh
    #
    sessionVariables = { };
    stateVersion = "26.05";
  };
}
