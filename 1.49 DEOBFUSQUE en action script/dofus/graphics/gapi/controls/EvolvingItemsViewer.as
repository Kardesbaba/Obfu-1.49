class dofus.graphics.gapi.controls.EvolvingItemsViewer extends dofus.graphics.gapi.core.DofusAdvancedComponent
{
   var addToQueue;
   var _btnDissociate;
   var _btnSkin;
   var _lblLevel;
   var _lblLevelTitle;
   var _oItemData;
   var _ctrItem;
   var api;
   static var CLASS_NAME = "EvolvingItemsViewer";
   function EvolvingItemsViewer()
   {
      super();
   }
   function set itemData(o)
   {
      this._oItemData = o;
      this.updateData();
   }
   function init()
   {
      super.init(false,dofus.graphics.gapi.controls.EvolvingItemsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.updateData});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnDissociate.addEventListener("click",this);
      this._btnSkin.addEventListener("click",this);
   }
   function initTexts()
   {
      this._lblLevelTitle.text = this.api.lang.getText("LEVEL");
      this._lblLevel.text = String(this._oItemData.maxSkin) + " / " + this._oItemData.nbSkin;
      this._btnDissociate.label = this.api.lang.getText("DISSOCIATE");
      this._btnSkin.label = this.api.lang.getText("CHOOSE_SKIN");
   }
   function updateData()
   {
      this._ctrItem.contentPath = this._oItemData.gfx;
      this._ctrItem.contentData = this._oItemData;
      this._btnDissociate.enabled = this._oItemData.hasCeremonialSkinItem;
      this.initTexts();
   }
   function click(oEvent)
   {
      switch(oEvent.target)
      {
         case this._btnSkin:
            this.api.ui.loadUIComponent("ChooseItemSkin","ChooseItemSkin",{item:this._oItemData});
            break;
         case this._btnDissociate:
            this.api.network.Items.destroyMimibiote(this._oItemData.ID);
         default:
            return;
      }
   }
}
