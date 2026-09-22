--     _         _            _             _   
--    / \  _   _| |_ ___  ___| |_ __ _ _ __| |_ 
--   / _ \| | | | __/ _ \/ __| __/ _` | '__| __|
--  / ___ \ |_| | || (_) \__ \ || (_| | |  | |_ 
-- /_/   \_\__,_|\__\___/|___/\__\__,_|_|   \__|
--

hl.on("hyprland.start", function () 
   hl.exec_cmd("upower")
   hl.exec_cmd("hypridle")
   hl.exec_cmd("qs -p ~/.config/quickshell/shell.qml")
 end)
