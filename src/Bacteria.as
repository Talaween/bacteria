package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import net.hires.debug.Stats;
	
	import starling.core.Starling;
	
	
	[SWF(frameRate="60", width="480", height="800", backgroundColor="0x333333")]
	
	public class Bacteria extends Sprite
	{
		private var stats:Stats;
		private var gameStarling:Starling;
		
		public function Bacteria()
		{
			stats = new Stats();
			this.addChild(stats);
			
			gameStarling = new Starling(Game, stage);
			gameStarling.antiAliasing = 1;
			gameStarling.start();
			
			// support autoOrients
			//stage.align = StageAlign.TOP_LEFT;
			//stage.scaleMode = StageScaleMode.NO_SCALE;
		}
	}
}