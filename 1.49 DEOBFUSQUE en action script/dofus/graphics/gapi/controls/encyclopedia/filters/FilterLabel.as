class dofus.graphics.gapi.controls.encyclopedia.filters.FilterLabel implements dofus.graphics.gapi.controls.encyclopedia.filters.IFilterComposant
{
   var _sText;
   function FilterLabel(sText)
   {
      this._sText = sText;
   }
   function get text()
   {
      return this._sText;
   }
   function get composantName()
   {
      return "FilterLabelViewer";
   }
   function isObjectValid(oObject)
   {
      return true;
   }
}
