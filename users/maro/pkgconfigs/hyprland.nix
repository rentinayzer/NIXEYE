{
  inputs,
  pkgs,
  ...
}: {
  hm-maro.wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    extraLuaFiles = {
      "hyprmodules.autostart" = {
        content = ../dotfiles/hypr/autostart.lua;
        autoLoad = true;
      };

      "hyprmodules.environment" = {
        content = ../dotfiles/hypr/environment.lua;
        autoLoad = true;
      };

      "hyprmodules.input" = {
        content = ../dotfiles/hypr/input.lua;
        autoLoad = true;
      };

      "hyprmodules.look_feel" = {
        content = ../dotfiles/hypr/look_feel.lua;
        autoLoad = true;
      };

      "hyprmodules.misc" = {
        content = ../dotfiles/hypr/misc.lua;
        autoLoad = true;
      };

      "hyprmodules.monitors" = {
        content = ../dotfiles/hypr/monitors.lua;
        autoLoad = true;
      };

      "hyprmodules.permissions" = {
        content = ../dotfiles/hypr/permissions.lua;
        autoLoad = true;
      };

      "hyprmodules.programs_binds" = {
        content = ../dotfiles/hypr/programs_binds.lua;
        autoLoad = true;
      };

      "hyprmodules.workspace" = {
        content = ../dotfiles/hypr/workspace.lua;
        autoLoad = true;
      };
    };
  };
}
