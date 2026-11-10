{
  hm-maro.services.syncthing = {
    enable = true;
    tray = { enable = true; };

    settings = {
      gui = {
        theme = "black";
      };
 
      devices = {
        "Thingamajig".id = "KED3WA7-X72Y6UT-FYZGASB-PQAPXV6-RH76U34-QZ7S2D3-7ZC4USI-U72M3QC";
        "Toplap".id = "OJ2LWSE-2CNMCJH-6QI6JSD-Y43SOVE-G423GF6-X35DET7-HBE5OKR-HA5U6AL";
      };

      folders = {

        "ITMO" = {
	  
	  id = "kvftp-2w5rx";

          enable = true;
          type = "sendreceive";

	  path = "~/Documents/Obsidian";
	  name = "ITMO";
          label = "Notes";

          devices = [
            "Thingamajig"
            "Toplap"
          ];
	  
        };

        "TDDv2" = {

	  id = "kqifh-3kahw";

          enable = true;
          type = "sendreceive";

          path = "~/Documents/Obsidian";
	  name = "TDDv2";
          label = "Scraps";

          devices = [
            "Thingamajig"
            "Toplap"
          ];

        };
      };
    };
  };
}
