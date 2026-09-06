class dofus.graphics.gapi.controls.RightClickContextItemViewer
{
   var api;
   function RightClickContextItemViewer(api)
   {
      this.api = api;
   }
   function createActionPopupMenu(oItem)
   {
      var _loc3_ = this.api.ui.createPopupMenu();
      _loc3_.addStaticItem(oItem.name);
      _loc3_.addItem(this.api.lang.getText("CLICK_TO_INSERT"),this.api.kernel.GameManager,this.api.kernel.GameManager.insertItemInChat,[oItem]);
      _loc3_.addItem(this.api.lang.getText("ASSOCIATE_RECEIPTS"),this,this.showAssociateReceipts,[oItem]);
      if(oItem.isSearchableInEncyclopedia)
      {
         _loc3_.addItem(this.api.lang.getText("VIEW_IN_ENCYCLOPEDIA"),dofus.graphics.gapi.ui.Encyclopedia,dofus.graphics.gapi.ui.Encyclopedia.openEncyclopediaForItem,[oItem]);
      }
      if(oItem.isDroppable)
      {
         _loc3_.addItem(this.api.lang.getText("DISPLAY_MONSTERS_WHO_DROP_ITEM"),this,this.displayMonsterWhoDrops,[oItem]);
      }
      if(this.api.datacenter.Player.isAuthorized && dofus.Constants.DEBUG)
      {
         _loc3_.addItem("[Debug] Give item",this.api.network.Basics,this.api.network.Basics.autorisedCommand,["item * " + oItem.unicID + " 1"]);
      }
      _loc3_.show(_root._xmouse,_root._ymouse);
   }
   function showAssociateReceipts(oItem)
   {
      if(this.api.ui.getUIComponent("ItemUtility") != undefined)
      {
         this.api.ui.unloadUIComponent("ItemUtility");
      }
      this.api.ui.loadUIComponent("ItemUtility","ItemUtility",{item:oItem},{bAlwaysOnTop:true});
   }
   function displayMonsterWhoDrops(oItem)
   {
      var _loc3_ = this.api.ui.getUIComponent("Encyclopedia");
      if(_loc3_ != undefined)
      {
         _loc3_.setCurrentTab("Bestiary",oItem.droppedFromMonsters);
      }
      else
      {
         this.api.ui.loadUIAutoHideComponent("Encyclopedia","Encyclopedia",{_sCurrentTab:"Bestiary",_aSearchedIDs:oItem.droppedFromMonsters},{bStayIfPresent:true});
      }
   }
}
