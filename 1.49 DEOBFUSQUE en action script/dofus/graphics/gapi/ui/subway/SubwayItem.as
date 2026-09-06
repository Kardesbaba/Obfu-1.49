class dofus.graphics.gapi.ui.subway.SubwayItem extends dofus.graphics.gapi.core.DofusAdvancedComponent
{
   var addToQueue;
   var _lblCost;
   var _lblName;
   var _mcList;
   var _oItem;
   var _btnLocate;
   var _mcKamas;
   var api;
   function SubwayItem()
   {
      super();
      this.api = _global.API;
   }
   function set list(mcList)
   {
      this._mcList = mcList;
   }
   function setValue(bUsed,sSuggested,oItem)
   {
      if(bUsed)
      {
         this._oItem = oItem;
         this._lblCost.text = oItem.cost != 0 ? new ank.utils.ExtendedString(oItem.cost).addMiddleChar(this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "-";
         this._btnLocate.label = oItem.coordinates;
         this._lblName.text = oItem.name;
         this._mcKamas._visible = oItem.cost > 0;
         this._btnLocate._visible = true;
      }
      else if(this._lblCost.text != undefined)
      {
         this._lblCost.text = "";
         this._btnLocate.label = "";
         this._lblName.text = "";
         this._mcKamas._visible = false;
         this._btnLocate._visible = false;
      }
   }
   function init()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnLocate.addEventListener("click",this);
   }
   function click(oEvent)
   {
      this.api.ui.loadUIAutoHideComponent("MapExplorer","MapExplorer",{mapID:this._oItem.mapID});
   }
}
