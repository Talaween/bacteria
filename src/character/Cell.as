//changed 
package character
{
	import starling.display.MovieClip;
	import starling.display.Sprite;
	
	public class Cell extends Sprite
	{
		private var _location:int;
		private var _view:Sprite;
		private var _idleAnimation:MovieClip;
		private var _swapAnimation:MovieClip;
		private var _dieAnimation:MovieClip;
		
		
		public function Cell()
		{
			super();
		}
		private function testFunction():void
		{
			
		}
	}
}