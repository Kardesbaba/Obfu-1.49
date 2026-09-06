class dofus.datacenter.StaticCriterion extends Object
{
   var _bEnabled;
   var _nID;
   function StaticCriterion(nID,bEnabled)
   {
      super();
      this._nID = nID;
      this._bEnabled = bEnabled;
   }
   function get id()
   {
      return this._nID;
   }
   function get enabled()
   {
      return this._bEnabled;
   }
   function set enabled(bEnabled)
   {
      this._bEnabled = bEnabled;
   }
}
