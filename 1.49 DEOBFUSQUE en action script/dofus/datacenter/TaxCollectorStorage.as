class dofus.datacenter.TaxCollectorStorage extends dofus.datacenter.Shop
{
   var dispatchEvent;
   var _nKamas;
   function TaxCollectorStorage()
   {
      super();
      this.initialize();
   }
   function set Kama(nKamas)
   {
      this._nKamas = nKamas;
      this.dispatchEvent({type:"kamaChanged",value:nKamas});
   }
   function get Kama()
   {
      return this._nKamas;
   }
}
