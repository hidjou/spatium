﻿package{		import flash.display.MovieClip;	import flash.events.*;		public class Bullet extends MovieClip{				private var _root:Object;				private var speed:int = 10;				public function Bullet(){						addEventListener(Event.ADDED, beginClass);						addEventListener(Event.ENTER_FRAME, eFrame);		}		private function beginClass(event:Event):void{			_root = MovieClip(root);		}		private function eFrame(event:Event):void{						y -= speed;						if(this.y < -1 * this.height){				removeEventListener(Event.ENTER_FRAME, eFrame);				_root.bulletContainer.removeChild(this);			}		}		public function removeListeners():void{			removeEventListener(Event.ENTER_FRAME, eFrame);		}	}}