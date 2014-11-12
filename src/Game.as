package
{
	import screens.BasicLevel;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var firstScreen:BasicLevel;
		
		public function Game()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("Starling initialised");
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			firstScreen = new BasicLevel();
			this.addChild(firstScreen);
		}
	}
}