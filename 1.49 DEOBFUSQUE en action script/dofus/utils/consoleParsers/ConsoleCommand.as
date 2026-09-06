class dofus.utils.consoleParsers.ConsoleCommand
{
   var fExecute;
   var sCmd;
   var sDesc;
   var sHelp;
   static var mapCommands = {};
   static var aCommandNames = [];
   static var ADMINSELECT;
   static var ANIM;
   static var ASKOK;
   static var ASKOK2;
   static var C;
   static var CACHE;
   static var CELLID;
   static var CELLINFO = new dofus.utils.consoleParsers.ConsoleCommand("CELLINFO","ID de la cellule actuelle","/CELLINFO &lt;cell_id&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandCell.cellInfo);
   static var CHATPLUS;
   static var CHATMINUS;
   static var CLEANCELLS;
   static var CLEAR;
   static var CLEARCELL = new dofus.utils.consoleParsers.ConsoleCommand("CLEARCELL","Effacer tous les sprites d\'une case","/CLEARCELL &lt;cell_id&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandCell.clearCell);
   static var CLEARZONE;
   static var COMMANDLOG;
   static var CONSOLECLOSE = new dofus.utils.consoleParsers.ConsoleCommand("CONSOLECLOSE","Ferme la console flash","/CONSOLECLOSE",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandConsole.consoleClose);
   static var CONSOLEMAXSIZE = new dofus.utils.consoleParsers.ConsoleCommand("CONSOLEMAXSIZE","","/CONSOLEMAXSIZE",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandConsole.consoleMaxSize);
   static var CONSOLEMEDIUM = new dofus.utils.consoleParsers.ConsoleCommand("CONSOLEMEDIUM","","/CONSOLEMEDIUM",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandConsole.consoleMedium);
   static var CONSOLEMINIMIZED = new dofus.utils.consoleParsers.ConsoleCommand("CONSOLEMINIMIZED","","/CONSOLEMINIMIZED",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandConsole.consoleMinimized);
   static var CRYPTCELLS = new dofus.utils.consoleParsers.ConsoleCommand("CRYPTCELLS","[1.35] Outil pour DUSK pour modifier plus facilement les fight cells en base","/CRYPTCELLS &lt;?&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandCell.cryptFightCell);
   static var D;
   static var DEBUG;
   static var DEBUGZAAP;
   static var DECRYPTFIGHTCELLS = new dofus.utils.consoleParsers.ConsoleCommand("DECRYPTFIGHTCELLS","[1.35] Outil pour DUSK pour modifier plus facilement les fight cells en base","/DECRYPTFIGHTCELLS &lt;?&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandCell.cryptFightCell);
   static var DRAWZONE;
   static var FASTSERVERSWITCH;
   static var FILEOUTPUT;
   static var FORCEFLASHCHAT;
   static var FPS;
   static var HELP;
   static var INFOS;
   static var LANGFILE;
   static var LISTPICTOS;
   static var LISTSPRITES;
   static var LOGDISCO;
   static var LOS = new dofus.utils.consoleParsers.ConsoleCommand("LOS","Vérifie la ligne de vue entre deux cases","/LOS &lt;cell1&gt; &lt;cell2&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandCell.checkLOS);
   static var MAKEREPORT;
   static var MAN;
   static var MAPID;
   static var MERGEMODREPORTS = new dofus.utils.consoleParsers.ConsoleCommand("MERGEMODREPORTS","","/MERGEMODREPORTS &lt;date&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandReport.mergeModReports);
   static var MOUNT;
   static var MOVIECLIP;
   static var NEXTSAVE;
   static var PICTO;
   static var PING;
   static var POINTSPRITE;
   static var PRINTJAILDIALOG;
   static var PRINTMODREPORTS = new dofus.utils.consoleParsers.ConsoleCommand("PRINTMODREPORTS","","/PRINTMODREPORTS",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandReport.printModReports);
   static var POINTPICTO;
   static var REBOOT;
   static var RETROCONSOLE;
   static var SAVETHEWORLD;
   static var SCALE;
   static var SEARCHQUEST = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHQUEST","Rechercher une quête via le nom","/SEARCHQUEST &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchQuest);
   static var SEARCHALIGNMENT = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHALIGNMENT","Rechercher un alignement via le nom","/SEARCHALIGNMENT &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchAlignment);
   static var SEARCHBREED = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHBREED","Rechercher une classe via le nom","/SEARCHBREED &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchBreed);
   static var SEARCHITEM = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHITEM","Rechercher un objet via le nom","/SEARCHITEM &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchItem);
   static var SEARCHJOB = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHJOB","Rechercher un métier via le nom","/SEARCHJOB &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchJob);
   static var SEARCHMONSTER = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHMONSTER","Rechercher un monstre via le nom","/SEARCHMONSTER &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchMonster);
   static var SEARCHNPC = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHNPC","Rechercher un PNJ via le nom","/SEARCHNPC &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchNpc);
   static var SEARCHSPELL = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHSPELL","Rechercher un sort via le nom","/SEARCHSPELL &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchSpell);
   static var SEARCHSUBAREA = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHSUBAREA","Rechercher une sous-zone via le nom","/SEARCHSUBAREA &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchSubArea);
   static var SEARCHACHIEVEMENT = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHACHIEVEMENT","Rechercher un succès via le nom","/SEARCHACHIEVEMENT &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchAchievement);
   static var SEARCHTITLE = new dofus.utils.consoleParsers.ConsoleCommand("SEARCHTITLE","Rechercher un titre via le nom","/SEARCHTITLE &lt;name&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandSearch.searchTitle);
   static var SENDMODREPORTS = new dofus.utils.consoleParsers.ConsoleCommand("SENDMODREPORTS","","/SENDMODREPORTS &lt;date&gt;",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandReport.sendModReports);
   static var SEQACTIONS;
   static var SHOWCELLIDS = new dofus.utils.consoleParsers.ConsoleCommand("SHOWCELLIDS","Affiche/Désaffiche les id sur les cellules","/SHOWCELLIDS [&lt;0|1&gt;]",dofus.utils.consoleParsers.consoleCommands.ConsoleCommandCell.showCellIds);
   static var SKIPFIGHTANIMATIONS;
   static var SKIPLOOTPANEL;
   static var SOMAPLAY;
   static var STOPSAVETHEWORLD;
   static var TACTIC;
   static var TIME;
   static var TIMERSCOUNT;
   static var TOGGLESPRITES;
   static var UI;
   static var VARS;
   static var VERSION;
   static var VIEWFIGHTRESULT;
   static var WIDESCREENPANEL;
   static var ZOOM;
   function ConsoleCommand(cmd,desc,help,execute)
   {
      this.sCmd = cmd;
      this.sDesc = desc;
      this.sHelp = help;
      this.fExecute = execute;
      dofus.utils.consoleParsers.ConsoleCommand.mapCommands[this.sCmd.toUpperCase()] = this;
      dofus.utils.consoleParsers.ConsoleCommand.aCommandNames.push(this.sCmd);
   }
   function get cmd()
   {
      return this.sCmd;
   }
   function get desc()
   {
      return this.sDesc;
   }
   function get help()
   {
      return this.sHelp;
   }
   function execute(oContext,Report)
   {
      this.fExecute(oContext,Report);
   }
   static function get commands()
   {
      dofus.utils.consoleParsers.ConsoleCommand.ensureStaticsBuilt();
      return dofus.utils.consoleParsers.ConsoleCommand.mapCommands;
   }
   static function tryGetCommand(sCmdName)
   {
      dofus.utils.consoleParsers.ConsoleCommand.ensureStaticsBuilt();
      return dofus.utils.consoleParsers.ConsoleCommand.mapCommands[sCmdName.toUpperCase()];
   }
   static function get commandNames()
   {
      dofus.utils.consoleParsers.ConsoleCommand.ensureStaticsBuilt();
      return dofus.utils.consoleParsers.ConsoleCommand.aCommandNames;
   }
   static var _bStaticsBuilt = false;
   static function ensureStaticsBuilt()
   {
      if(dofus.utils.consoleParsers.ConsoleCommand._bStaticsBuilt)
      {
         return undefined;
      }
      dofus.utils.consoleParsers.ConsoleCommand._bStaticsBuilt = true;
      dofus.utils.consoleParsers.ConsoleCommand.ADMINSELECT = new dofus.utils.consoleParsers.ConsoleCommand("ADMINSELECT","Affiche le menu admin pour le joueur","/ADMINSELECT &lt;pseudo&gt;",function(oContext, DebugSizeIndex)
   {
      if(DebugSizeIndex[0] == undefined || DebugSizeIndex[0].length == 0)
      {
         oContext.showMessage(undefined,"Utilisation incorrecte : " + this.help,"DEBUG_LOG");
         return undefined;
      }
      var _loc4_ = oContext.api.kernel.AdminManager.getAdminPopupMenu(DebugSizeIndex[0],false);
      _loc4_.show(_root._xmouse,_root._ymouse,true);
   });
      dofus.utils.consoleParsers.ConsoleCommand.ANIM = new dofus.utils.consoleParsers.ConsoleCommand("ANIM","Joue une animation de personnage","/ANIM &lt;anim_id&gt; [&lt;timer&gt;]",function(oContext, DebugSizeIndex)
   {
      if(!dofus.Constants.DEBUG)
      {
         oContext.showMessage(undefined,"Erreur : Le mode debug n\'est pas activé sur ce client","DEBUG_LOG");
         return undefined;
      }
      if(DebugSizeIndex.length > 1)
      {
         oContext.api.gfx.setSpriteLoopAnim(oContext.api.datacenter.Player.ID,DebugSizeIndex[0],DebugSizeIndex[1]);
      }
      else
      {
         oContext.api.gfx.setSpriteAnim(oContext.api.datacenter.Player.ID,DebugSizeIndex.join(""));
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.ASKOK = new dofus.utils.consoleParsers.ConsoleCommand("ASKOK","Affiche la popup de confirmation","/ASKOK &lt;text_key&gt; &lt;text_params&gt;",function(oContext, DebugSizeIndex)
   {
      oContext.api.ui.loadUIComponent("AskOk","AskOkContent",{title:"AskOKDebug",text:oContext.api.lang.getText(DebugSizeIndex[0],DebugSizeIndex.splice(1))});
   });
      dofus.utils.consoleParsers.ConsoleCommand.ASKOK2 = new dofus.utils.consoleParsers.ConsoleCommand("ASKOK2","Affiche la popup de confirmation","/ASKOK2 &lt;text&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = "";
      var _loc5_ = 0;
      while(_loc5_ < DebugSizeIndex.length)
      {
         if(_loc5_ > 0)
         {
            _loc4_ += " ";
         }
         _loc4_ += DebugSizeIndex[_loc5_];
         _loc5_ = _loc5_ + 1;
      }
      oContext.api.ui.loadUIComponent("AskOk","AskOkContent",{title:"AskOKDebug",text:_loc4_});
   });
      dofus.utils.consoleParsers.ConsoleCommand.C = new dofus.utils.consoleParsers.ConsoleCommand("C","Simule un échange de packet avec le serveur","/C &lt;\'&lt;\'|\'&gt;\'&gt; &lt;packet&gt;",function(oContext, DebugSizeIndex)
   {
      dofus.utils.consoleParsers.consoleCommands.ConsoleCommandNetwork.simulatePacket(oContext,DebugSizeIndex,false);
   });
      dofus.utils.consoleParsers.ConsoleCommand.CACHE = new dofus.utils.consoleParsers.ConsoleCommand("CACHE","Vide le cache","/CACHE",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.askClearCache();
   });
      dofus.utils.consoleParsers.ConsoleCommand.CELLID = new dofus.utils.consoleParsers.ConsoleCommand("CELLID","ID de la cellule actuelle","/CELLID",function(oContext, DebugSizeIndex)
   {
      oContext.showMessage(undefined,"cellule : " + oContext.api.datacenter.Player.data.cellNum,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.CHATPLUS = new dofus.utils.consoleParsers.ConsoleCommand("CHATPLUS","","/CHATPLUS",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = dofus.graphics.gapi.controls.Chat(oContext.api.ui.getUIComponent("Banner").chat);
      if(_loc4_ != undefined)
      {
         _loc4_.open(false);
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.CHATMINUS = new dofus.utils.consoleParsers.ConsoleCommand("CHATMINUS","","/CHATMINUS",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = dofus.graphics.gapi.controls.Chat(oContext.api.ui.getUIComponent("Banner").chat);
      if(_loc4_ != undefined)
      {
         _loc4_.open(true);
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.CLEANCELLS = new dofus.utils.consoleParsers.ConsoleCommand("CLEANCELLS","Reset les cellules vides","/CLEANCELLS",function(oContext, DebugSizeIndex)
   {
      oContext.api.gfx.mapHandler.resetEmptyCells();
   });
      dofus.utils.consoleParsers.ConsoleCommand.CLEAR = new dofus.utils.consoleParsers.ConsoleCommand("CLEAR","Vide la console","/CLEAR",function(oContext, DebugSizeIndex)
   {
      oContext.api.ui.getUIComponent("Debug").clear();
      oContext.api.electron.retroConsoleClear();
   });
      dofus.utils.consoleParsers.ConsoleCommand.CLEARZONE = new dofus.utils.consoleParsers.ConsoleCommand("CLEARZONE","","/CLEARZONE  &lt;num_cell&gt; &lt;radius&gt; &lt;layer&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = Number(DebugSizeIndex[0]);
      var _loc5_ = Number(DebugSizeIndex[1]);
      var _loc6_ = DebugSizeIndex[2];
      if(_global.isNaN(_loc4_) || (_loc4_ == undefined || (_global.isNaN(_loc5_) || (_loc5_ == undefined || (_loc6_ == undefined || _loc6_.length == 0)))))
      {
         oContext.showMessage(undefined,"Erreur syntaxe : " + this.help,"DEBUG_LOG");
         return undefined;
      }
      oContext.api.gfx.clearZone(_loc4_,_loc5_,_loc6_);
   });
      dofus.utils.consoleParsers.ConsoleCommand.COMMANDLOG = new dofus.utils.consoleParsers.ConsoleCommand("COMMANDLOG","Affiche les commandes tapées dans le chat","/COMMANDLOG &lt;0|1&gt;",function(oContext, DebugSizeIndex)
   {
      // FFDec avait perdu la base de l'indexation : le code compare un litteral
      // tableau [0] a "1", donc toujours false : la commande eteignait l'echo
      // sans retour et sans moyen de le rallumer.
      if(DebugSizeIndex[0] == "1")
      {
         oContext.logInTerminal = true;
      }
      else if(DebugSizeIndex[0] == "0")
      {
         oContext.logInTerminal = false;
      }
      else
      {
         oContext.logInTerminal = !oContext.logInTerminal;
      }
      oContext.showMessage(undefined,"COMMAND LOG : " + oContext.logInTerminal,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.D = new dofus.utils.consoleParsers.ConsoleCommand("D","Simule un échange de packet avec le serveur en passant le cryptage","/D &lt;\'&lt;\'|\'&gt;\'&gt; &lt;packet&gt;",function(oContext, DebugSizeIndex)
   {
      dofus.utils.consoleParsers.consoleCommands.ConsoleCommandNetwork.simulatePacket(oContext,DebugSizeIndex,true);
   });
      dofus.utils.consoleParsers.ConsoleCommand.DEBUG = new dofus.utils.consoleParsers.ConsoleCommand("DEBUG","Active/Désactive le mode debug","/DEBUG",function(oContext, DebugSizeIndex)
   {
      dofus.Constants.DEBUG = !dofus.Constants.DEBUG;
      oContext.showMessage(undefined,"DEBUG : " + dofus.Constants.DEBUG,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.DEBUGZAAP = new dofus.utils.consoleParsers.ConsoleCommand("DEBUGZAAP","Instancie une nouvelle connexion ZaapConnect","/DEBUGZAAP",function(oContext, DebugSizeIndex)
   {
      dofus.ZaapConnect.newInstance();
   });
      dofus.utils.consoleParsers.ConsoleCommand.DRAWZONE = new dofus.utils.consoleParsers.ConsoleCommand("DRAWZONE","","/DRAWZONE &lt;num_cell&gt; &lt;radius&gt; &lt;layer&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = Number(DebugSizeIndex[0]);
      var _loc5_ = Number(DebugSizeIndex[1]);
      var _loc6_ = DebugSizeIndex[2];
      var _loc7_ = DebugSizeIndex[3] == undefined ? undefined : Number(DebugSizeIndex[3]);
      if(_global.isNaN(_loc4_) || (_loc4_ == undefined || (_global.isNaN(_loc5_) || (_loc5_ == undefined || (_loc6_ == undefined || _loc6_.length == 0)))))
      {
         oContext.showMessage(undefined,"Erreur syntaxe : " + this.help,"DEBUG_LOG");
         return undefined;
      }
      oContext.api.gfx.drawZone(_loc4_,0,_loc5_,_loc6_,dofus.Constants.ZONE_COLOR[_loc6_],_loc7_);
   });
      dofus.utils.consoleParsers.ConsoleCommand.FASTSERVERSWITCH = new dofus.utils.consoleParsers.ConsoleCommand("FASTSERVERSWITCH","Change de serveur","/FASTSERVERSWITCH &lt;server_id&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = Number(DebugSizeIndex[0]);
      if(_global.isNaN(_loc4_) || _loc4_ == undefined)
      {
         oContext.showMessage(undefined,"I need a valid server ID !","DEBUG_LOG");
         return undefined;
      }
      var _loc5_ = oContext.api.datacenter.Player.Name;
      if(_loc5_ == undefined)
      {
         oContext.showMessage(undefined,"You have to be in game to do this","DEBUG_LOG");
         return undefined;
      }
      var _loc6_ = {};
      _loc6_.serverId = _loc4_;
      _loc6_.playerName = _loc5_;
      dofus.Kernel.FAST_SWITCHING_SERVER_REQUEST = _loc6_;
      oContext.api.network.askCharacterSwitchTicket();
   });
      dofus.utils.consoleParsers.ConsoleCommand.FILEOUTPUT = new dofus.utils.consoleParsers.ConsoleCommand("FILEOUTPUT","Redirige la sortie console","/FILEOUTPUT &lt;0 (no log) | 1 (file + console) | 2 (file + no console)&gt;",function(oContext, DebugSizeIndex)
   {
      if(!oContext.api.electron.enabled)
      {
         oContext.showMessage(undefined,"Fonctionne uniquement avec l\'interface electron","DEBUG_ERROR");
         return undefined;
      }
      var _loc4_ = Number(DebugSizeIndex[0]);
      if(DebugSizeIndex[0] == undefined || (_global.isNaN(_loc4_) || (_loc4_ < 0 || _loc4_ > 2)))
      {
         oContext.showMessage(undefined,"Erreur syntaxe : " + this.help,"DEBUG_LOG");
         return undefined;
      }
      var _loc5_ = "";
      switch(_loc4_)
      {
         case 0:
            _loc5_ = "Disabled";
            break;
         case 1:
            _loc5_ = "Enabled";
            break;
         case 2:
            _loc5_ = "Enabled (full)";
      }
      dofus.graphics.gapi.ui.Debug.FILE_OUTPUT_STATE = _loc4_;
      oContext.showMessage(undefined,"File Output (Console) : " + _loc5_,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.FORCEFLASHCHAT = new dofus.utils.consoleParsers.ConsoleCommand("FORCEFLASHCHAT","Affiche/Désaffiche le chat flash","/FORCEFLASHCHAT [&lt;0|1&gt;]",function(oContext, DebugSizeIndex)
   {
      if(DebugSizeIndex[0] == "1")
      {
         oContext.api.datacenter.Basics.forceFlashChat = true;
      }
      else if(DebugSizeIndex[0] == "0")
      {
         oContext.api.datacenter.Basics.forceFlashChat = false;
      }
      else
      {
         oContext.api.datacenter.Basics.forceFlashChat = !oContext.api.datacenter.Basics.forceFlashChat;
      }
      oContext.showMessage(undefined,"FORCE FLASH CHAT : " + oContext.api.datacenter.Basics.forceFlashChat,"DEBUG_LOG");
      var _loc4_ = dofus.graphics.gapi.ui.Banner(oContext.api.ui.getUIComponent("Banner"));
      var _loc5_;
      if(_loc4_ != undefined)
      {
         _loc5_ = oContext.api.datacenter.Basics.forceFlashChat || (!oContext.api.kernel.OptionsManager.getOption("EnableWidescreenPanels") || !oContext.api.electron.isShowingWidescreenPanel);
         _loc4_.configureUseFlashChat(_loc5_);
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.FPS = new dofus.utils.consoleParsers.ConsoleCommand("FPS","Affiche les images par secondes","/FPS",function(oContext, DebugSizeIndex)
   {
      if(oContext.api.ui.getUIComponent("Debug") == undefined)
      {
         oContext.api.ui.loadUIComponent("Debug","Debug");
      }
      oContext.api.ui.getUIComponent("Debug").showFps();
   });
      dofus.utils.consoleParsers.ConsoleCommand.HELP = new dofus.utils.consoleParsers.ConsoleCommand("HELP","Affiche les commandes disponibles","/HELP",function(oContext, Report)
   {
      var _loc4_ = "";
      var _loc5_;
      if(Report[0] != undefined)
      {
         oContext.showMessage(undefined,"Les commandes client : <br><ul>" + _loc4_ + "</ul>","DEBUG_LOG");
      }
      else
      {
         for(var key in dofus.utils.consoleParsers.ConsoleCommand.commands)
         {
            _loc5_ = dofus.utils.consoleParsers.ConsoleCommand.commands[key];
            _loc4_ = "<li><b>" + _loc5_.cmd + "</b> - " + _loc5_.desc + "</li>" + _loc4_;
         }
         oContext.showMessage(undefined,"Les commandes client : <br><ul>" + _loc4_ + "</ul>","DEBUG_LOG");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.INFOS = new dofus.utils.consoleParsers.ConsoleCommand("INFOS","Affiche des infos","/INFOS",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = "Svr:";
      _loc4_ += "\nNb:";
      _loc4_ += "\n Players on Map  : " + String(oContext.api.datacenter.Game.playerCount);
      _loc4_ += "\n Players on Cell : " + oContext.api.datacenter.Map.data[oContext.api.datacenter.Player.data.cellNum].spriteOnCount;
      _loc4_ += "\nDataServers:";
      var _loc5_ = 0;
      while(_loc5_ < oContext.api.config.dataServers.length)
      {
         _loc4_ += "\n host : " + oContext.api.config.dataServers[_loc5_].url;
         _loc5_ = _loc5_ + 1;
      }
      _loc4_ += "\n l   : " + oContext.api.config.language + " (" + oContext.api.lang.getLangVersion() + " & " + oContext.api.lang.getXtraVersion() + ")";
      oContext.showMessage(undefined,_loc4_,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.LANGFILE = new dofus.utils.consoleParsers.ConsoleCommand("LANGFILE","Affiche la taille des langs","/LANGFILE &lt;databank_id&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = Number(DebugSizeIndex[0]);
      if(_global.isNaN(_loc4_))
      {
         oContext.showMessage(undefined,"I need a valid data bank ID","DEBUG_LOG");
         return undefined;
      }
      oContext.showMessage(undefined,DebugSizeIndex[1] + " lang file size : " + oContext.api.lang.getLangFileSize(_loc4_,DebugSizeIndex[1]) + " octets","DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.LISTPICTOS = new dofus.utils.consoleParsers.ConsoleCommand("LISTPICTOS","Liste et affiche tous les ID des éléments de la carte et la quantité utilisée","/LISTPICTOS",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = oContext.api.gfx.mapHandler.getCellsData();
      var _loc5_ = {name:"layerObject1Num"};
      var _loc6_ = {name:"layerObject2Num"};
      var _loc7_ = {name:"layerGroundNum"};
      var _loc8_ = [_loc5_,_loc6_,_loc7_];
      var _loc9_;
      var _loc10_;
      for(var k in _loc4_)
      {
         _loc9_ = _loc4_[k];
         if(_loc9_.layerObject1Num != undefined && _loc9_.layerObject1Num > 0)
         {
            _loc10_ = _loc9_.layerObject1Num;
            _loc5_[_loc10_] = (_loc5_[_loc10_] || 0) + 1;
         }
         else if(_loc9_.layerObject2Num != undefined && _loc9_.layerObject2Num > 0)
         {
            _loc10_ = _loc9_.layerObject2Num;
            _loc6_[_loc10_] = (_loc6_[_loc10_] || 0) + 1;
         }
         else if(_loc9_.layerGroundNum != undefined && _loc9_.layerGroundNum > 0)
         {
            _loc10_ = _loc9_.layerGroundNum;
            _loc7_[_loc10_] = (_loc7_[_loc10_] || 0) + 1;
         }
      }
      var _loc11_ = 0;
      var _loc12_;
      var _loc13_;
      var _loc14_;
      while(_loc11_ < _loc8_.length)
      {
         _loc12_ = _loc8_[_loc11_];
         _loc13_ = [];
         for(var sID in _loc12_)
         {
            if(sID != "name")
            {
               _loc13_.push({sID:sID,qty:_loc12_[sID]});
            }
         }
         _loc13_.sort(function(a, b)
         {
            return b.qty - a.qty;
         }
         );
         oContext.showMessage(undefined,"=== " + _loc12_.name + " ===","DEBUG_LOG");
         _loc14_ = 0;
         while(_loc14_ < _loc13_.length)
         {
            oContext.showMessage(undefined,_loc13_[_loc14_].sID + "\tx" + _loc13_[_loc14_].qty,"DEBUG_LOG");
            _loc14_ = _loc14_ + 1;
         }
         _loc11_ = _loc11_ + 1;
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.LISTSPRITES = new dofus.utils.consoleParsers.ConsoleCommand("LISTSPRITES","Liste les sprites à l\'écran","/LISTSPRITES",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = oContext.api.gfx.spriteHandler.getSprites().getItems();
      var _loc5_;
      for(var k in _loc4_)
      {
         _loc5_ = _loc4_[k];
         oContext.showMessage(undefined,"Sprite " + _loc5_.gfxFile + " (cell : " + _loc5_.cellNum + ")","DEBUG_LOG");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.LOGDISCO = new dofus.utils.consoleParsers.ConsoleCommand("LOGDISCO","","/LOGDISCO [&lt;0|1&gt;]",function(oContext, DebugSizeIndex)
   {
      if(DebugSizeIndex[0] == "1")
      {
         oContext.api.datacenter.Game.isLoggingMapDisconnections = true;
      }
      else if(DebugSizeIndex[0] == "0")
      {
         oContext.api.datacenter.Game.isLoggingMapDisconnections = false;
      }
      else
      {
         oContext.api.datacenter.Game.isLoggingMapDisconnections = !oContext.api.datacenter.Game.isLoggingMapDisconnections;
      }
      oContext.showMessage(undefined,"LOG DISCONNECTIONS ON MAP : " + oContext.api.datacenter.Game.isLoggingMapDisconnections,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.MAKEREPORT = new dofus.utils.consoleParsers.ConsoleCommand("MAKEREPORT","","/MAKEREPORT &lt;target pseudos&gt; &lt;\'allaccounts\'&gt; &lt;reason&gt; [&lt;autocomplete action&gt;]",function(oContext, DebugSizeIndex)
   {
      dofus.utils.consoleParsers.consoleCommands.ConsoleCommandReport.makeReport(oContext,DebugSizeIndex,"/makereport " + DebugSizeIndex.join(" "));
   });
      dofus.utils.consoleParsers.ConsoleCommand.MAN = new dofus.utils.consoleParsers.ConsoleCommand("MAN","Donne des détails sur la commande passée en paramètre","/MAN [&lt;command_name&gt;]",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = dofus.utils.consoleParsers.ConsoleCommand.tryGetCommand(DebugSizeIndex[0]);
      if(_loc4_ == undefined)
      {
         oContext.showMessage(undefined,"Commande " + DebugSizeIndex[0] + " introuvable","DEBUG_LOG");
         return undefined;
      }
      oContext.showMessage(undefined,_loc4_.desc + "\n" + _loc4_.help,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.MAPID = new dofus.utils.consoleParsers.ConsoleCommand("MAPID","Affiche les informations de la carte","/MAPID",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = "carte : " + oContext.api.datacenter.Map.id + "\n" + "Area : " + oContext.api.datacenter.Map.area + "\n" + "SubArea : " + oContext.api.datacenter.Map.subarea + "\n" + "SuperArea : " + oContext.api.datacenter.Map.superarea;
      oContext.showMessage(undefined,_loc4_,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.MOUNT = new dofus.utils.consoleParsers.ConsoleCommand("MOUNT","","/MOUNT &lt;mount_file_ID&gt; &lt;chevauchor_file_ID&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = oContext.api.gfx.getSprite(oContext.api.datacenter.Player.ID);
      var _loc5_;
      var _loc6_;
      var _loc7_;
      if(!_loc4_.isMounting)
      {
         _loc5_ = DebugSizeIndex[0] == undefined ? "7002.swf" : DebugSizeIndex[0] + ".swf";
         _loc6_ = DebugSizeIndex[1] == undefined ? "10.swf" : DebugSizeIndex[1] + ".swf";
         _loc7_ = new ank.battlefield.datacenter.Mount(dofus.Constants.CLIPS_PERSOS_PATH + _loc5_,dofus.Constants.CHEVAUCHOR_PATH + _loc6_);
         oContext.api.gfx.mountSprite(oContext.api.datacenter.Player.ID,_loc7_);
      }
      else
      {
         oContext.api.gfx.unmountSprite(oContext.api.datacenter.Player.ID);
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.MOVIECLIP = new dofus.utils.consoleParsers.ConsoleCommand("MOVIECLIP","","/MOVIECLIP",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.findMovieClipPath();
   });
      dofus.utils.consoleParsers.ConsoleCommand.NEXTSAVE = new dofus.utils.consoleParsers.ConsoleCommand("NEXTSAVE","","/NEXTSAVE",function(oContext, DebugSizeIndex)
   {
      if(dofus.Constants.SAVING_THE_WORLD)
      {
         dofus.SaveTheWorld.getInstance().nextAction();
      }
      else
      {
         oContext.showMessage(undefined,"Feature non active","DEBUG_ERROR");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.PICTO = new dofus.utils.consoleParsers.ConsoleCommand("PICTO","Affiche le numéro de décor sur la cellule précisée","/PICTO",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = oContext.api.gfx.mapHandler.getCellData(DebugSizeIndex);
      if(_loc4_.layerObject1Num != undefined && (!_global.isNaN(_loc4_.layerObject1Num) && _loc4_ > 0))
      {
         oContext.showMessage(undefined,"Picto layer 1 : " + _loc4_.layerObject1Num,"DEBUG_LOG");
      }
      if(_loc4_.layerObject2Num != undefined && (!_global.isNaN(_loc4_.layerObject2Num) && _loc4_.layerObject2Num > 0))
      {
         oContext.showMessage(undefined,"Picto layer 2 : " + _loc4_.layerObject2Num,"DEBUG_LOG");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.PING = new dofus.utils.consoleParsers.ConsoleCommand("PING","Ping le serveur","/PING",function(oContext, DebugSizeIndex)
   {
      oContext.api.network.ping();
   });
      dofus.utils.consoleParsers.ConsoleCommand.POINTSPRITE = new dofus.utils.consoleParsers.ConsoleCommand("POINTSPRITE","","/POINTSPRITE &lt;gfx_id&gt;",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.TipsManager.pointSprite(-1,Number(DebugSizeIndex[0]));
   });
      dofus.utils.consoleParsers.ConsoleCommand.PRINTJAILDIALOG = new dofus.utils.consoleParsers.ConsoleCommand("PRINTJAILDIALOG","","/PRINTJAILDIALOG",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = oContext.api.kernel.ChatManager.getJailDialog();
      if(_loc4_.length == 0)
      {
         oContext.showMessage(undefined,"No jail dialog found","_LOG");
      }
      else
      {
         oContext.showMessage(undefined,_loc4_,"DEBUG_LOG");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.POINTPICTO = new dofus.utils.consoleParsers.ConsoleCommand("POINTPICTO","","/POINTPICTO &lt;gfx_id&gt;",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.TipsManager.pointPicto(-1,Number(DebugSizeIndex[0]));
   });
      dofus.utils.consoleParsers.ConsoleCommand.REBOOT = new dofus.utils.consoleParsers.ConsoleCommand("REBOOT","Relance le jeu","/REBOOT",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.reboot();
   });
      dofus.utils.consoleParsers.ConsoleCommand.RETROCONSOLE = new dofus.utils.consoleParsers.ConsoleCommand("RETROCONSOLE","Ouvre une console dans une nouvelle fenêtre","/RETROCONSOLE",function(oContext, DebugSizeIndex)
   {
      if(!oContext.api.electron.enabled)
      {
         oContext.showMessage(undefined,"Fonctionne uniquement avec l\'interface electron","DEBUG_ERROR");
         return undefined;
      }
      dofus.Electron.retroConsoleOpen();
   });
      dofus.utils.consoleParsers.ConsoleCommand.SAVETHEWORLD = new dofus.utils.consoleParsers.ConsoleCommand("SAVETHEWORLD","","/SAVETHEWORLD",function(oContext, DebugSizeIndex)
   {
      if(dofus.Constants.SAVING_THE_WORLD)
      {
         dofus.SaveTheWorld.execute();
      }
      else
      {
         oContext.showMessage(undefined,"Feature non active","DEBUG_ERROR");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.SCALE = new dofus.utils.consoleParsers.ConsoleCommand("SCALE","Change la taille du joueur","/SCALE &lt;scale_x&gt; [&lt;scale_y&gt;] (Si scale_y vide, scale_x est utilisé pour les 2)",function(oContext, DebugSizeIndex)
   {
      oContext.api.gfx.setSpriteScale(oContext.api.datacenter.Player.ID,DebugSizeIndex[0],DebugSizeIndex.length != 2 ? DebugSizeIndex[0] : DebugSizeIndex[1]);
   });
      dofus.utils.consoleParsers.ConsoleCommand.SEQACTIONS = new dofus.utils.consoleParsers.ConsoleCommand("SEQACTIONS","","/SEQACTIONS",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = oContext.api.datacenter.Sprites.getItems();
      var _loc5_;
      var _loc6_;
      var _loc7_;
      for(var k in _loc4_)
      {
         _loc5_ = k;
         _loc6_ = _loc4_[_loc5_];
         _loc7_ = _loc6_.sequencer;
         oContext.showMessage(undefined,"    Print Sequencer Actions List for " + _loc5_ + ", " + _loc6_.name,"DEBUG_LOG");
         _loc7_.printActions();
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.SKIPFIGHTANIMATIONS = new dofus.utils.consoleParsers.ConsoleCommand("SKIPFIGHTANIMATIONS","","/SKIPFIGHTANIMATIONS [&lt;0|1&gt;]",function(oContext, DebugSizeIndex)
   {
      if(!oContext.api.datacenter.Player.isAuthorized)
      {
         oContext.showMessage(undefined,"(°~°)","ERROR_BOX");
         return undefined;
      }
      if(DebugSizeIndex[0] == "1")
      {
         oContext.api.datacenter.Player.isSkippingFightAnimations = true;
      }
      else if(DebugSizeIndex[0] == "0")
      {
         oContext.api.datacenter.Player.isSkippingFightAnimations = false;
      }
      else
      {
         oContext.api.datacenter.Player.isSkippingFightAnimations = !oContext.api.datacenter.Player.isSkippingFightAnimations;
      }
      dofus.Constants.DEBUG_SKIP_FIGHT_ANIM = oContext.api.datacenter.Player.isSkippingFightAnimations;
      oContext.showMessage(undefined,"SKIP FIGHT ANIMATIONS : " + oContext.api.datacenter.Player.isSkippingFightAnimations,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.SKIPLOOTPANEL = new dofus.utils.consoleParsers.ConsoleCommand("SKIPLOOTPANEL","","/SKIPLOOTPANEL [&lt;0|1&gt;]",function(oContext, DebugSizeIndex)
   {
      if(!oContext.api.datacenter.Player.isAuthorized)
      {
         oContext.showMessage(undefined,"(°~°)","ERROR_BOX");
         return undefined;
      }
      if(DebugSizeIndex[0] == "1")
      {
         oContext.api.datacenter.Player.isSkippingLootPanel = true;
      }
      else if(DebugSizeIndex[0] == "0")
      {
         oContext.api.datacenter.Player.isSkippingLootPanel = false;
      }
      else
      {
         oContext.api.datacenter.Player.isSkippingLootPanel = !oContext.api.datacenter.Player.isSkippingLootPanel;
      }
      oContext.showMessage(undefined,"SKIP LOOT PANEL : " + oContext.api.datacenter.Player.isSkippingLootPanel,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.SOMAPLAY = new dofus.utils.consoleParsers.ConsoleCommand("SOMAPLAY","","/SOMAPLAY &lt;sound_id&gt;",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.AudioManager.playSound(DebugSizeIndex.join(" "));
   });
      dofus.utils.consoleParsers.ConsoleCommand.STOPSAVETHEWORLD = new dofus.utils.consoleParsers.ConsoleCommand("STOPSAVETHEWORLD","","/STOPSAVETHEWORLD",function(oContext, DebugSizeIndex)
   {
      if(dofus.Constants.SAVING_THE_WORLD)
      {
         dofus.SaveTheWorld.stop();
      }
      else
      {
         oContext.showMessage(undefined,"Feature non active","DEBUG_ERROR");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.TACTIC = new dofus.utils.consoleParsers.ConsoleCommand("TACTIC","Affiche/Désaffiche le mode tactique de la carte","/TACTIC",function(oContext, DebugSizeIndex)
   {
      var _loc4_;
      if(oContext.api.datacenter.Player.isAuthorized || oContext.api.datacenter.Game.isFight)
      {
         _loc4_ = !oContext.api.datacenter.Game.isTacticMode;
         oContext.api.datacenter.Game.isTacticMode = _loc4_;
         oContext.api.gfx.activateTacticMode(oContext.api,_loc4_);
         oContext.api.ui.getUIComponent("FightOptionButtons")._btnTactic.selected = _loc4_;
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.TIME = new dofus.utils.consoleParsers.ConsoleCommand("TIME","Affiche l\'heure","/TIME",function(oContext, DebugSizeIndex)
   {
      oContext.showMessage(undefined,"Heure : " + oContext.api.kernel.NightManager.time,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.TIMERSCOUNT = new dofus.utils.consoleParsers.ConsoleCommand("TIMERSCOUNT","Nombre de timers en mémoire","/TIMERSCOUNT",function(oContext, DebugSizeIndex)
   {
      oContext.showMessage(undefined,String(ank.utils.Timer.getTimersCount()),"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.TOGGLESPRITES = new dofus.utils.consoleParsers.ConsoleCommand("TOGGLESPRITES","Affiche/Désaffiche les sprites","/TOGGLESPRITES",function(oContext, DebugSizeIndex)
   {
      oContext.api.datacenter.Basics.gfx_isSpritesHidden = !oContext.api.datacenter.Basics.gfx_isSpritesHidden;
      if(oContext.api.datacenter.Basics.gfx_isSpritesHidden)
      {
         oContext.api.gfx.spriteHandler.maskAllSprites();
      }
      else
      {
         oContext.api.gfx.spriteHandler.unmaskAllSprites();
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.UI = new dofus.utils.consoleParsers.ConsoleCommand("UI","Affiche l\'interface passé en paramètre","/UI &lt;name&gt;",function(oContext, DebugSizeIndex)
   {
      oContext.api.ui.loadUIComponent(DebugSizeIndex[0],DebugSizeIndex[0]);
   });
      dofus.utils.consoleParsers.ConsoleCommand.VARS = new dofus.utils.consoleParsers.ConsoleCommand("VARS","","/VARS",function(oContext, DebugSizeIndex)
   {
      oContext.showMessage(undefined,oContext.api.kernel.TutorialManager.vars,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.VERSION = new dofus.utils.consoleParsers.ConsoleCommand("VERSION","Affiche la version du client","/VERSION",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = "------------------------------------------------------\n";
      _loc4_ += "<b>DOFUS RETRO Client v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + "</b>";
      if(dofus.Constants.BETAVERSION > 0)
      {
         _loc4_ += " <b><font color=\"#FF0000\">BETA VERSION " + dofus.Constants.BETAVERSION + "</font></b>";
      }
      _loc4_ += "\n(c) ANKAMA GAMES (" + dofus.Constants.VERSIONDATE + ")\n";
      _loc4_ += "Flash player " + System.capabilities.version + "\n";
      _loc4_ += "------------------------------------------------------";
      oContext.showMessage(undefined,_loc4_,"DEBUG_LOG");
   });
      dofus.utils.consoleParsers.ConsoleCommand.VIEWFIGHTRESULT = new dofus.utils.consoleParsers.ConsoleCommand("VIEWFIGHTRESULT","","/VIEWFIGHTRESULT &lt;index&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_ = Number(DebugSizeIndex[0]);
      if(_global.isNaN(_loc4_) || _loc4_ < 1)
      {
         oContext.showMessage(undefined,"Erreur syntaxe : /fightresult [1" + (oContext.api.datacenter.Game.resultsArray.length <= 1 ? "" : " - " + oContext.api.datacenter.Game.resultsArray.length) + "]","DEBUG_LOG");
         return undefined;
      }
      if(oContext.api.datacenter.Basics.currentSessionFightCount == -1)
      {
         oContext.showMessage(undefined,"You didn\'t do any fights yet.","DEBUG_LOG");
      }
      else if(_loc4_ > oContext.api.datacenter.Game.resultsArray.length)
      {
         oContext.showMessage(undefined,"This fight does not exist, try between 1 and " + oContext.api.datacenter.Game.resultsArray.length + ", where 1 is the most recent.","DEBUG_LOG");
      }
      else
      {
         oContext.api.kernel.GameManager.showEndPanel(_loc4_ - 1,true);
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.WIDESCREENPANEL = new dofus.utils.consoleParsers.ConsoleCommand("WIDESCREENPANEL","Modifie le mode de la partie texte sur le côté de la fenetre de jeu","/WIDESCREENPANEL &lt;0 (chat) | 1 (console)&gt;",function(oContext, DebugSizeIndex)
   {
      var _loc4_;
      if(oContext.api.electron.enabled)
      {
         _loc4_ = Number(DebugSizeIndex[0]);
         if(DebugSizeIndex[0] == undefined || (_global.isNaN(_loc4_) || (_loc4_ < 0 || _loc4_ > 1)))
         {
            oContext.showMessage(undefined,"Erreur syntaxe : /widescreenpanel &lt;0 (chat) | 1 (console)&gt;","DEBUG_LOG");
            return undefined;
         }
         oContext.api.electron.setWidescreenPanelId(_loc4_);
      }
      else
      {
         oContext.showMessage(undefined,"Does not work on a Flash Projector","DEBUG_ERROR");
      }
   });
      dofus.utils.consoleParsers.ConsoleCommand.ZOOM = new dofus.utils.consoleParsers.ConsoleCommand("ZOOM","","/ZOOM &lt;zoom_value&gt; &lt;x&gt; &lt;y&gt;",function(oContext, DebugSizeIndex)
   {
      oContext.api.kernel.GameManager.zoomGfx(DebugSizeIndex[0],DebugSizeIndex[1],DebugSizeIndex[2]);
   });
   }
}
