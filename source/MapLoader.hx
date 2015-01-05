package;

import flixel.addons.editors.tiled.TiledMap;
import flixel.addons.editors.tiled.TiledTileSet;
import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.tile.FlxTilemap;
import haxe.io.Path;

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
		
		FlxG.camera.setBounds(0, 0, fullWidth, fullHeight, true);
		
		// Load Tile Maps
		for (tileLayer in layers)
		{

			var processedPath = "assets/images/tiles/sheet.png";
			trace(processedPath);
			
			var tilemap:FlxTilemap = new FlxTilemap();
			tilemap.widthInTiles = width;
			tilemap.heightInTiles = height;
			tilemap.loadMap(tileLayer.tileArray, processedPath, 128, 64, 0, 1, 1, 1);

			backgroundTiles.add(tilemap);

		}
	}
	
}