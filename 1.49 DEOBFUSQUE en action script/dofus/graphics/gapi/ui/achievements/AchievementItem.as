class dofus.graphics.gapi.ui.achievements.AchievementItem extends dofus.graphics.gapi.core.DofusAdvancedComponent
{
   var addToQueue;
   var _lblDescription;
   var _lblName;
   var _oData;
   var _bIsToggled;
   var _btnToggle;
   var _lblFinishedDate;
   var _lblScore;
   var _ldrIcon;
   var _mcUI;
   var api;
   var gotoAndStop;
   function AchievementItem()
   {
      super();
   }
   function get data()
   {
      return this._oData;
   }
   function set data(oData)
   {
      this._oData = oData;
   }
   function get isToggled()
   {
      return this._bIsToggled;
   }
   function set isToggled(bIsToggled)
   {
      this._bIsToggled = bIsToggled;
   }
   function init()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._btnToggle.addEventListener("click",this);
      this._btnToggle.addEventListener("over",this);
      this._btnToggle.addEventListener("out",this);
      this._oData.addEventListener("updateFinishedState",this);
      this._oData.addEventListener("updateRewardsClaimed",this);
   }
   function initTexts()
   {
      this._lblName.text = this._oData.name;
      this._lblDescription.text = this._oData.description;
      this._lblScore.text = String(this._oData.score);
      this._lblFinishedDate.text = this._oData.finishedFormattedTime;
      if(this._lblDescription.textHeight > 20)
      {
         this._lblDescription._y -= 8;
         this._lblDescription.setPreferedSize("left");
      }
   }
   function initData()
   {
      this._mcUI = dofus.graphics.gapi.ui.Achievements(this.api.ui.getUIComponent("Achievements"));
      this._ldrIcon.contentPath = this._oData.iconFile;
      this.refreshFinishedState(this._oData.getFinishedState());
   }
   function refreshFinishedState(sState)
   {
      this.gotoAndStop(sState);
   }
   function updateFinishedState(oEvent)
   {
      this._lblFinishedDate.text = oEvent.value;
      this.refreshFinishedState(oEvent.state);
   }
   function updateRewardsClaimed(oEvent)
   {
      this.refreshFinishedState(oEvent.state);
   }
   function over(oEvent)
   {
      this._mcUI.currentOverItem = this._oData;
   }
   function out(oEvent)
   {
      this._mcUI.currentOverItem = undefined;
   }
   function click(oEvent)
   {
      if(Key.isDown(dofus.Constants.CHAT_INSERT_ITEM_KEY))
      {
         this.api.kernel.GameManager.insertAchievementInChat(this._oData);
         return undefined;
      }
      this._mcUI.toggleAchievementDetails(this._oData.ID);
   }
}
