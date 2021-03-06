/*
Copyright 2011 Martin Jonasson, grapefrukt games. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright notice, this list of
      conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above copyright notice, this list
      of conditions and the following disclaimer in the documentation and/or other materials
      provided with the distribution.

THIS SOFTWARE IS PROVIDED BY grapefrukt games "AS IS" AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL grapefrukt games OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the
authors and should not be interpreted as representing official policies, either expressed
or implied, of grapefrukt games.
*/

package com.grapefrukt.exporter.collections {
	import com.grapefrukt.exporter.animations.Animation;
	
	/**
	 * ...
	 * @author Martin Jonasson, m@grapefrukt.com
	 */
	
	public class AnimationCollection {
		
		private var _collection:Vector.<Animation>;
		
		public function AnimationCollection() {
			_collection = new Vector.<Animation>();
		}
		
		public function add(ts:Animation):void {
			_collection.push(ts);
		}
		
		public function sort():void {
			_collection = _collection.sort(_sort)
		}
		
		private function _sort(x:Animation, y:Animation):Number {
			if (x.name < y.name) 	return -1;
			if (x.name > y.name) 	return 1;
			return  0;
		}
		
		public function getByName(name:String):Animation {
			for each (var anim:Animation in _collection) {
				if (anim.name == name) return anim;
			}
			return null;
		}
		
		public function getAtIndex(index:int):Animation {
			return _collection[index];
		}
		
		public function get size():uint {
			return _collection.length;
		}
		
		public function get head():Animation {
			return _collection[0];
		}
		
		public function get tail():Animation {
			return _collection[_collection.length - 1];
		}
		
	}

}