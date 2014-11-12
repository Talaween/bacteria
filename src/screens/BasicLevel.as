package screens
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	
	import utilities.HelperFunctions;
	
	public class BasicLevel extends Sprite
	{
		private var imgBackground:Image;
		private var placeholder:Array;
		private var assetManager:AssetManager;
		
		public function BasicLevel()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			// TODO Auto Generated method stub
			
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			trace("Level started");
			assetManager = new AssetManager();
			assetManager.verbose = true;
			assetManager.enqueue(EmbedAssets);
			
			assetManager.loadQueue(loadProgress);
			//drawLevel();
		}
		private function loadProgress(ratio:Number):void
		{
			trace("Loading assets, progress:", ratio);
			
			if (ratio == 1.0)
				drawLevel();
		}
		private function drawLevel():void
		{
			
			var bTexture:Texture = assetManager.getTexture("background1");
			imgBackground = new Image(bTexture);
			this.addChild(imgBackground);
			
			var plchldrTexture1:Texture =  assetManager.getTexture("placeholder1");
			var plchldrTexture2:Texture =  assetManager.getTexture("placeholder2");
			var plchldrTexture3:Texture =  assetManager.getTexture("placeholder3");
			var plchldrTexture4:Texture =  assetManager.getTexture("placeholder4");
			var plchldrTexture5:Texture =  assetManager.getTexture("placeholder5");
			var plchldrTexture6:Texture =  assetManager.getTexture("placeholder6");
			var plchldrTexture7:Texture =  assetManager.getTexture("placeholder7");
			var plchldrTexture8:Texture =  assetManager.getTexture("placeholder8");
			
			placeholder = new Array();
			
			var inX:int;
			var inY:int;
			var count:int;
			var rand:int;
			
			count = 0;
			
			for(var i:int = 0; i < 10; i++)
			{
				inX = 13;
				inY = 110 + (i * 66);
				for(var j:int = 0; j< 8; j++)
				{
					rand = HelperFunctions.randomRange(1,8);
					switch  (rand)
					{
						case 1:placeholder[count] = new Image(plchldrTexture1);
							break;
						case 2:placeholder[count] = new Image(plchldrTexture2);
							break;
						case 3:placeholder[count] = new Image(plchldrTexture3);
							break;
						case 4:placeholder[count] = new Image(plchldrTexture4);
							break;
						case 5:placeholder[count] = new Image(plchldrTexture5);
							break;
						case 6:placeholder[count] = new Image(plchldrTexture6);
							break;
						case 7:placeholder[count] = new Image(plchldrTexture7);
							break;
						case 8:placeholder[count] = new Image(plchldrTexture8);
							break;
					}
					
					(placeholder[count] as Image).x = inX;
					(placeholder[count] as Image).y = inY;
					this.addChild(placeholder[count]);
					
					count++;
					inX += 57;
				}
			}
				
			
		}
		
		
	}
}