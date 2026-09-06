class dofus.graphics.gapi.ui.encyclopedia.EncyclopediaBestiarySpellsItem extends ank.gapi.core.UIBasicComponent
{
   var addToQueue;
   var _lblAP;
   var _lblLevel;
   var _lblName;
   var _lblRange;
   var _mcList;
   var _oItem;
   var _ldrAdjustableRange;
   var _ldrLineOfSight;
   var _ldrLineOnly;
   var api;
   function EncyclopediaBestiarySpellsItem()
   {
      super();
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
         oItem.sortName = oItem.name;
         oItem.sortLevel = oItem.level;
         this._lblName.text = oItem.name;
         this._lblLevel.text = this.api.lang.getText("LEVEL_SMALL") + " " + oItem.level;
         this._lblRange.text = (oItem.rangeMin == 0 ? "" : oItem.rangeMin + "-") + oItem.rangeMax + " " + this.api.lang.getText("RANGE");
         this._lblAP.text = oItem.apCost + " " + this.api.lang.getText("AP");
         this._ldrAdjustableRange._visible = oItem.canBoostRange;
         this._ldrLineOfSight._visible = !oItem.lineOfSight && (oItem.rangeMin > 1 || oItem.canBoostRange);
         this._ldrLineOnly._visible = oItem.lineOnly && (oItem.rangeMin > 1 || oItem.canBoostRange);
      }
      else if(this._lblName.text != undefined)
      {
         this._lblName.text = "";
         this._lblLevel.text = "";
         this._lblRange.text = "";
         this._lblAP.text = "";
         this._ldrAdjustableRange._visible = false;
         this._ldrLineOfSight._visible = false;
         this._ldrLineOnly._visible = false;
      }
   }
   function init()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.api = this._mcList._parent._parent.api;
   }
   function addListeners()
   {
      this._ldrAdjustableRange.addEventListener("over",this);
      this._ldrAdjustableRange.addEventListener("out",this);
      this._ldrLineOfSight.addEventListener("over",this);
      this._ldrLineOfSight.addEventListener("out",this);
      this._ldrLineOnly.addEventListener("over",this);
      this._ldrLineOnly.addEventListener("out",this);
   }
   function over(oEvent)
   {
      switch(oEvent.target)
      {
         case this._ldrAdjustableRange:
            this.api.ui.showTooltip(this.api.lang.getText("RANGE_BOOST"));
            break;
         case this._ldrLineOfSight:
            this.api.ui.showTooltip(this.api.lang.getText("DONT_NEED_LINE_OF_SIGHT"));
            break;
         case this._ldrLineOnly:
            this.api.ui.showTooltip(this.api.lang.getText("LINE_ONLY"));
         default:
            return;
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
