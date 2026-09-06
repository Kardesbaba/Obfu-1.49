class dofus.graphics.gapi.controls.inventoryviewer.InventoryFavoriteFilter implements dofus.graphics.gapi.controls.inventoryviewer.IInventoryFilter
{
   function InventoryFavoriteFilter()
   {
   }
   function isItemListed(item)
   {
      return item.isLock && dofus.Constants.FILTER_EQUIPEMENT[item.superType];
   }
}
