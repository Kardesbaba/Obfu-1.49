class dofus.datacenter.MonsterGroup extends ank.battlefield.datacenter.Sprite
{
   var _aLevelsList;
   var _aNamesList;
   var _nBonusValue;
   var _aIDList;
   var api;
   var id;
   var _sDefaultAnimation = "static";
   var _bAllDirections = false;
   var _bForceWalk = true;
   var _nAlignmentIndex = -1;
   function MonsterGroup(sID,clipClass,sGfxFile,cellNum,dir,bonus)
   {
      super();
      this.api = _global.API;
      this._nBonusValue = bonus;
      this.initialize(sID,clipClass,sGfxFile,cellNum,dir,null);
   }
   function set name(value)
   {
      this._aNamesList = [];
      this._aIDList = [];
      var _loc3_ = value.split(",");
      var _loc4_ = 0;
      var _loc5_;
      while(_loc4_ < _loc3_.length)
      {
         _loc5_ = this.api.lang.getMonstersText(_loc3_[_loc4_]);
         this._aNamesList.push(_loc5_.n);
         this._aIDList.push(_loc3_[_loc4_]);
         if(_loc5_.a != -1)
         {
            this._nAlignmentIndex = _loc5_.a;
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function get name()
   {
      return this.getName();
   }
   function getName(Account)
   {
      Account = Account != undefined ? Account : "\n";
      var _loc3_ = [];
      var _loc4_ = 0;
      var _loc5_;
      var _loc6_;
      var _loc7_;
      var _loc8_;
      var _loc9_;
      var _loc10_;
      while(_loc4_ < this._aLevelsList.length)
      {
         _loc5_ = Number(this._aLevelsList[_loc4_]);
         _loc6_ = this._aNamesList[_loc4_];
         if(_loc5_ == -1)
         {
            _loc7_ = new dofus.datacenter.Monster(this._aIDList[_loc4_]);
            _loc8_ = _loc7_.getLevelFromGrade(1);
            _loc9_ = _loc7_.getLevelFromGrade(5);
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc3_.push({levelMin:_loc8_,levelMax:_loc9_,level:_loc10_,name:_loc6_,estimated:true});
         }
         else
         {
            _loc3_.push({level:_loc5_,name:_loc6_,estimated:false});
         }
         _loc4_ = _loc4_ + 1;
      }
      _loc3_.sortOn(["level"],Array.DESCENDING | Array.NUMERIC);
      var _loc11_ = "";
      var _loc12_ = 0;
      var _loc13_;
      while(_loc12_ < _loc3_.length)
      {
         _loc13_ = _loc3_[_loc12_];
         if(_loc13_.estimated)
         {
            _loc11_ += _loc13_.name + " (" + _loc13_.levelMin + " - " + _loc13_.levelMax + ")" + Account;
         }
         else
         {
            _loc11_ += _loc13_.name + " (" + _loc13_.level + ")" + Account;
         }
         _loc12_ = _loc12_ + 1;
      }
      return _loc11_;
   }
   function alertChatText()
   {
      var _loc2_ = this.api.datacenter.Map;
      return "Groupe niveau " + this.totalLevel + " en " + _loc2_.x + "," + _loc2_.y + " : <br/>" + this.getName("<br/>");
   }
   function set Level(value)
   {
      this._aLevelsList = value.split(",");
   }
   function get totalLevel()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      var _loc4_ = 0;
      var _loc5_ = false;
      var _loc6_ = 0;
      var _loc7_;
      var _loc8_;
      while(_loc6_ < this._aLevelsList.length)
      {
         _loc7_ = Number(this._aLevelsList[_loc6_]);
         if(_loc7_ == -1)
         {
            _loc8_ = new dofus.datacenter.Monster(this._aIDList[_loc6_]);
            _loc3_ += _loc8_.getLevelFromGrade(1);
            _loc4_ += _loc8_.getLevelFromGrade(5);
            _loc5_ = true;
         }
         else
         {
            _loc2_ += _loc7_;
            _loc3_ += _loc7_;
            _loc4_ += _loc7_;
         }
         _loc6_ = _loc6_ + 1;
      }
      return !_loc5_ ? String(_loc2_) : _loc3_ + " - " + _loc4_;
   }
   function get bonusValue()
   {
      return this._nBonusValue;
   }
   function get alignment()
   {
      return new dofus.datacenter.Alignment(this._nAlignmentIndex,0);
   }
   function onWindowFocusChanged(oEvent)
   {
      if(this.api.datacenter.Game.isFight)
      {
         return undefined;
      }
      if(this.api.kernel.OptionsManager.getOption("AntiLagHideChildMonsters"))
      {
         this.api.gfx.hideChildrenSprites(this.id,!oEvent.isFocused);
      }
   }
}
