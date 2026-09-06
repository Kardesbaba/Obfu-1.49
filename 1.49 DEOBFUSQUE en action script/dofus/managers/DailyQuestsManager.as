class dofus.managers.DailyQuestsManager extends Object
{
   var dispatchEvent;
   var _bCanCollectReward;
   var _bMissionFinished;
   var _nCompletedTask;
   var _nMissionType;
   var _nTimeReset;
   var _oQuestState;
   var api;
   static var _oMissionNpcData = {mapId:7409,npc:{id:605,gfx:8007,c1:-1,c2:-1,c3:-1,a:"0,0,0,0,0"}};
   var _eaDailyQuests;
   function DailyQuestsManager()
   {
      super();
      this._eaDailyQuests = new ank.utils.ExtendedArray();
      mx.events.EventDispatcher.initialize(this);
      this.api = _global.API;
   }
   function get dailyQuests()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      for(var id in this._oQuestState)
      {
         _loc2_.push(this.api.lang.getDailyQuestData(Number(id)));
      }
      return _loc2_;
   }
   function get questState()
   {
      return this._oQuestState;
   }
   function set questState(oQuestState)
   {
      this._oQuestState = oQuestState;
      this.dispatchEvent({type:"updateData"});
   }
   function get missionNpc()
   {
      return dofus.managers.DailyQuestsManager._oMissionNpcData;
   }
   function set completedTask(nTask)
   {
      this._nCompletedTask = nTask;
   }
   function get completedTask()
   {
      return this._nCompletedTask;
   }
   function set missionType(nMissionType)
   {
      this._nMissionType = nMissionType;
   }
   function get missionType()
   {
      return this._nMissionType;
   }
   function set missionFinished(bMissionFinished)
   {
      this._bMissionFinished = bMissionFinished;
   }
   function get missionFinished()
   {
      return this._bMissionFinished;
   }
   function set canCollectReward(bCanCollectReward)
   {
      this._bCanCollectReward = bCanCollectReward;
   }
   function get canCollectReward()
   {
      return this._bCanCollectReward;
   }
   function set timeReset(nTimeReset)
   {
      this._nTimeReset = nTimeReset;
   }
   function get timeReset()
   {
      return this._nTimeReset;
   }
   function hasFinishedQuest(nId)
   {
      return this._oQuestState[nId] == "2";
   }
   function hasStartedQuest(nId)
   {
      return this._oQuestState[nId] == "1";
   }
}
