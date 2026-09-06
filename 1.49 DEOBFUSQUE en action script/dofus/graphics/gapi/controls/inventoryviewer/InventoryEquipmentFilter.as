class dofus.graphics.gapi.controls.inventoryviewer.InventoryEquipmentFilter implements dofus.graphics.gapi.controls.inventoryviewer.IInventoryFilter
{
   function InventoryEquipmentFilter()
   {
   }
   function isItemListed(item)
   {
      return !item.isCeremonial;
   }
}
