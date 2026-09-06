class ank.gapi.controls.DraggableButton extends ank.gapi.controls.Button
{
   var addToQueue;
   var dispatchEvent;
   var _sIcon;
   var _alpha;
   var gapi;
   var selected;
   var trackAsMenu;
   var _bDragAndDrop = true;
   var _bDragging = false;
   var _bDragOver = false;
   var _bEnabled = true;
   function DraggableButton()
   {
      super();
   }
   function set dragAndDrop(bDragAndDrop)
   {
      this._bDragAndDrop = bDragAndDrop;
      this.trackAsMenu = bDragAndDrop;
   }
   function get dragAndDrop()
   {
      return this._bDragAndDrop;
   }
   function set enabled(bEnabled)
   {
      this._bEnabled = bEnabled;
      this.addToQueue({object:this,method:this.setEnabled});
   }
   function createChildren()
   {
      super.createChildren();
      this.trackAsMenu = true;
   }
   function getDragData()
   {
      return {source:this,iconFile:this._sIcon,label:this._sLabel};
   }
   function onPress()
   {
      if(this._bEnabled)
      {
         super.onPress();
      }
      if(!this._bDragAndDrop)
      {
         return undefined;
      }
      this._bDragging = true;
   }
   function onRelease()
   {
      var _loc3_ = this.gapi.getCursor();
      if(this._bDragAndDrop && (this._bDragOver && (_loc3_ != undefined && _loc3_.source instanceof ank.gapi.controls.DraggableButton)))
      {
         this.dispatchEvent({type:"drop",data:_loc3_,target:this});
         this.gapi.removeCursor();
         this._alpha = 100;
      }
      else if(this.selected)
      {
         super.onRelease();
      }
      this._bDragOver = false;
      this._bDragging = false;
   }
   function onReleaseOutside()
   {
      super.onReleaseOutside();
      this.gapi.removeCursor();
      this._bDragOver = false;
      this._bDragging = false;
   }
   function onDragOut()
   {
      if(!this._bDragAndDrop)
      {
         return undefined;
      }
      if(this._bDragging)
      {
         this.dispatchEvent({type:"drag",data:this.getDragData(),target:this});
         this.selected = false;
         this._bDragging = false;
      }
      this._bDragOver = false;
      this._alpha = 100;
      super.onRollOut();
   }
   function onDragOver()
   {
      if(!this._bDragAndDrop)
      {
         return undefined;
      }
      var _loc2_ = this.gapi.getCursor();
      if(_loc2_ == undefined || !(_loc2_.source instanceof ank.gapi.controls.DraggableButton))
      {
         if(this._bDragOver)
         {
            this._bDragOver = false;
            this._alpha = 100;
         }
         return undefined;
      }
      this._bDragOver = true;
      this._alpha = 50;
      this.dispatchEvent({type:"over",target:this});
   }
   function onRollOver()
   {
      if(this._bEnabled)
      {
         super.onRollOver();
      }
   }
}
