{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # cli/tui
    home-manager
    nano
    nh
    # gui
  ];
}
