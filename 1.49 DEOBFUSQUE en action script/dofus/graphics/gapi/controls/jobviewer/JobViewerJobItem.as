class dofus.graphics.gapi.controls.jobviewer.JobViewerJobItem extends ank.gapi.core.UIBasicComponent
{
   var addToQueue;
   var setMovieClipTransform;
   var _lblName;
   var _mcList;
   var _oItem;
   var _cbXp;
   var _circleBg;
   var _circleShadow;
   var _lbLevel;
   var _ldrIcon;
   static var KNOW_COLOR = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
   static var NOT_KNOW_COLOR = {ra:70,rb:0,ga:70,gb:0,ba:70,bb:0};
   function JobViewerJobItem()
   {
      super();
   }
   function set list(mcList)
   {
      this._mcList = mcList;
   }
   function get api()
   {
      return this._mcList.gapi.api;
   }
   function setValue(bUsed,sSuggested,oItem)
   {
      this._circleBg._visible = bUsed;
      this._circleShadow._visible = bUsed;
      if(bUsed)
      {
         this._oItem = oItem;
         this._ldrIcon.contentPath = oItem.iconFile;
         this._lblName.text = oItem.name;
         if(oItem.level == undefined)
         {
            this.setMovieClipTransform(this._ldrIcon,dofus.graphics.gapi.controls.jobviewer.JobViewerJobItem.NOT_KNOW_COLOR);
            this._cbXp.minimum = 0;
            this._cbXp.maximum = 0;
            this._cbXp.value = 0;
            this._lbLevel.text = this.api.lang.getText("UNKNOW_JOB");
         }
         else
         {
            this.setMovieClipTransform(this._ldrIcon,dofus.graphics.gapi.controls.jobviewer.JobViewerJobItem.KNOW_COLOR);
            this._cbXp.minimum = oItem.level != 100 ? oItem.xpMin : 0;
            this._cbXp.maximum = oItem.level != 100 ? oItem.xpMax : 100;
            this._cbXp.value = oItem.xp;
            this._lbLevel.text = this.api.lang.getText("LEVEL") + " " + oItem.level;
         }
      }
      else if(this._lblName.text != undefined)
      {
         this._cbXp.minimum = 0;
         this._cbXp.maximum = 0;
         this._cbXp.value = 0;
         this._lblName.text = "";
         this._ldrIcon.contentPath = "";
         this._lbLevel.text = "";
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
      this._ldrIcon.addEventListener("over",this);
      this._ldrIcon.addEventListener("out",this);
   }
   function over(oEvent)
   {
      if(this._oItem == undefined)
      {
         return undefined;
      }
      if(this._oItem.level != undefined)
      {
         this._mcList.gapi.showTooltip(new ank.utils.ExtendedString(this._oItem.xp).addMiddleChar(this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._oItem.xpMax).addMiddleChar(this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3));
      }
   }
   function out(oEvent)
   {
      this._mcList.gapi.hideTooltip();
   }
}
