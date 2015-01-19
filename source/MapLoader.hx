package;

import flixel.addons.editors.tiled.TiledMap;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;

/**
 * ...
 * @author Rishav Sharan
 */
class MapLoader extends TiledMap
{
	// Array of tilemaps used for collision
	public var backgroundTiles:FlxGroup;
	
	public function new(tiledLevel:Dynamic)
	{
		super(tiledLevel);

		backgroundTiles = new FlxGroup();
		
		//FlxG.camera.setBounds(0, 0, fullWidth, fullHeight, true);
		
		// Load Tile Maps
		for (tileLayer in layers)
		{

			var processedPath = "assets/images/tiles/sheet.png";
			
			var tilemap:FlxTilemap = new FlxTilemap();
			tilemap.loadMap(tileLayer.tileArray, processedPath, 128, 64, 0, 1, 1, 1);

			backgroundTiles.add(tilemap);

		}
	}
	
}