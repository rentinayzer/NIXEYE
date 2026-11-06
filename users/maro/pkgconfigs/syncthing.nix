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

	"~/Documents/Obsidian/ITMO" = {
	  
	  enable = true;
	  type = "sendreceive";

	  devices = [
	    "Thingamajig"
	    "Toplap"
	  ];
	  
	    id = "kvftp-2w5rx";

        };

	"~/Documents/Obsidian/TDDv2" = {

	  enable = true;
	  typee = "sendreceive";

	  devices = [
	    "Thingamajig"
	    "Toplap"
	  ];

	  id = "kqifh-3kahw";

	};
      };
    };

    guiCredentials = {
      username = "rentinayzer";
    };

  };
}
