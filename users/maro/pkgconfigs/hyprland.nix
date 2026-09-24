{
  inputs,
  pkgs,
  ...
}: {
  hm-maro.wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    extraLuaFiles = {
      "hyprland.autostart" = {
        content = ../dotfiles/hypr/autostart.lua;
        autoLoad = true;
      };

      "hyprland.environment" = {
        content = ../dotfiles/hypr/environment.lua;
        autoLoad = true;
      };

      "hyprland.input" = {
        content = ../dotfiles/hypr/input.lua;
        autoLoad = true;
      };

      "hyprland.look_feel" = {
        content = ../dotfiles/hypr/look_feel.lua;
        autoLoad = true;
      };

      "hyprland.misc" = {
        content = ../dotfiles/hypr/misc.lua;
        autoLoad = true;
      };

      "hyprland.monitors" = {
        content = ../dotfiles/hypr/monitors.lua;
        autoLoad = true;
      };

      "hyprland.permissions" = {
        content = ../dotfiles/hypr/permissions.lua;
        autoLoad = true;
      };

      "hyprland.programs_binds" = {
        content = ../dotfiles/hypr/programs_binds.lua;
        autoLoad = true;
      };

      "hyprland.workspace" = {
        content = ../dotfiles/hypr/workspace.lua;
        autoLoad = true;
      };
    };
  };
}
