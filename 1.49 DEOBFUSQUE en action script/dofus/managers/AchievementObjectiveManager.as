class dofus.managers.AchievementObjectiveManager
{
   function AchievementObjectiveManager()
   {
   }
   static function getObjectiveName(nType,params)
   {
      var _loc4_ = _global.API;
      var _loc5_;
      var _loc6_;
      var _loc7_;
      var _loc8_;
      switch(nType)
      {
         case 1:
         case 2:
         case 3:
         case 5:
            return _loc4_.lang.getMonstersText(params.monsters[0]).n;
         case 4:
            return _loc4_.lang.getAchievement(params.achievement).n;
         case 9:
            return _loc4_.lang.getQuest(params.quest).n;
         case 10:
            return _loc4_.lang.getText("MISSION_CATEGORY_" + params.category);
         case 11:
            return _loc4_.lang.getText("LEVEL") + " " + params.level;
         case 13:
            _loc5_ = params.points;
            _loc6_ = ank.utils.PatternDecoder.combine(_loc4_.lang.getText("POINTS",[_loc5_]),null,_loc5_ <= 1);
            return _loc6_;
         case 15:
            return _loc4_.lang.getMapSubAreaName(params.subarea);
         case 26:
            _loc7_ = _loc4_.lang.getDailyQuestID(params.pool[0]);
            return _loc4_.lang.getQuest(_loc7_).n;
         case 27:
            _loc8_ = _loc4_.lang.getText("ITEM_CHARACTERISTICS").split(",")[22];
            return _loc8_ + " " + params.level;
         case 31:
         case 32:
            return _loc4_.lang.getMountText(params.model).n;
         case 99:
            return _loc4_.lang.getFightChallenge(params.challenge).n;
         default:
            return String(dofus.managers.AchievementObjectiveManager.getCount(params));
      }
   }
   static function updateFinishedState(oObjective)
   {
      if(oObjective.isCountType)
      {
         oObjective.isFinished = oObjective.progression == dofus.managers.AchievementObjectiveManager.getCount(oObjective.parameters);
      }
      else
      {
         oObjective.isFinished = oObjective.progression == 1;
      }
   }
   static function getCount(params)
   {
      var _loc3_ = 0;
      if(params.count != undefined)
      {
         _loc3_ = Number(params.count);
      }
      else if(params.points != undefined)
      {
         _loc3_ = Number(params.points);
      }
      return _loc3_;
   }
}
